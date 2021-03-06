import { render, screen, waitFor } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { productResponse, server } from './fixtures';
import { Router, useParams } from 'react-router-dom';
import history from '../../../../util/history';
import Form from '../Form';
import selectEvent from 'react-select-event';
import { ToastContainer } from 'react-toastify';

beforeAll(() => server.listen()); //antes de executar os testes
afterEach(() => server.resetHandlers()); //depois de cada teste
afterAll(() => server.close()); //depois que terminar os testes do arquivo

jest.mock('react-router-dom', () => ({
  ...jest.requireActual('react-router-dom'),
  useParams: jest.fn(),
}));

describe('Product from create tests', () => {
  beforeEach(() => {
    (useParams as jest.Mock).mockReturnValue({
      productId: 'create',
    });
  });

  test('should show toast and redirect when submit form correctly', async () => {
    render(
      <Router history={history}>
        <ToastContainer />
        <Form />
      </Router>
    );

    //screen.debug();
    const nameInput = screen.getByTestId('name');
    const priceInput = screen.getByTestId('price');
    const imgUrlInput = screen.getByTestId('imgUrl');
    const descriptionInput = screen.getByTestId('description');
    const categoriesInput = screen.getByLabelText('Categorias');

    const submitButton = screen.getByRole('button', { name: /salvar/i });

    userEvent.type(nameInput, 'Computador'); //simula a digitação no campo do nome do produto
    userEvent.type(priceInput, '1234.56'); //simula a digitação no campo do preço do produto
    userEvent.type(
      imgUrlInput,
      'https://static-cse.canva.com/blob/183499/IMAGE-1.jpg'
    ); //simula a digitação no campo do imagem do produto
    userEvent.type(descriptionInput, 'Computador muito bom'); //simula a digitação no campo do descrição do produto

    await selectEvent.select(categoriesInput, ['Eletrônicos', 'Computadores']);

    userEvent.click(submitButton);

    await waitFor(() => {
      const toastElement = screen.getByText('Produto cadastrado com sucesso!');
      expect(toastElement).toBeInTheDocument();
    });

    expect(history.location.pathname).toEqual('/admin/products'); //testa o caminho redirecionado quando cadastra com sucesso
  });

  test('should show 5 validation message when just clicking submit', async () => {
    render(
      <Router history={history}>
        <ToastContainer />
        <Form />
      </Router>
    );

    //screen.debug();

    const submitButton = screen.getByRole('button', { name: /salvar/i });

    userEvent.click(submitButton);

    await waitFor(() => {
      const message = screen.getAllByText('Campo obrigatório'); // testa se tem algum lugar com esse texto
      expect(message).toHaveLength(5); //testa se tem 5 campos
    });
  });

  test('should clear validation messages when filling out the correctly', async () => {
    render(
      <Router history={history}>
        <ToastContainer />
        <Form />
      </Router>
    );

    //screen.debug();

    const submitButton = screen.getByRole('button', { name: /salvar/i }); //pega o botao com o nome salvar

    userEvent.click(submitButton); //clica no botão

    await waitFor(() => {
      const message = screen.getAllByText('Campo obrigatório'); // testa se tem algum lugar com esse texto
      expect(message).toHaveLength(5); //testa se tem 5 campos
    });

    const nameInput = screen.getByTestId('name');
    const priceInput = screen.getByTestId('price');
    const imgUrlInput = screen.getByTestId('imgUrl');
    const descriptionInput = screen.getByTestId('description');
    const categoriesInput = screen.getByLabelText('Categorias');

    await selectEvent.select(categoriesInput, ['Eletrônicos', 'Computadores']);
    userEvent.type(nameInput, 'Computador'); //simula a digitação no campo do nome do produto
    userEvent.type(priceInput, '1234.56'); //simula a digitação no campo do preço do produto
    userEvent.type(
      imgUrlInput,
      'https://static-cse.canva.com/blob/183499/IMAGE-1.jpg'
    ); //simula a digitação no campo do imagem do produto
    userEvent.type(descriptionInput, 'Computador muito bom'); //simula a digitação no campo do descrição do produto

    await waitFor(() => {
      const message = screen.queryAllByText('Campo obrigatório'); // testa se tem algum lugar com esse texto
      expect(message).toHaveLength(0); //testa se tem 5 campos
    });
  });
});

describe('Product from update tests', () => {
  beforeEach(() => {
    (useParams as jest.Mock).mockReturnValue({
      productId: '4',
    });
  });

  test('should show toast and redirect when submit form correctly', async () => {
    render(
      <Router history={history}>
        <ToastContainer />
        <Form />
      </Router>
    );

    //screen.debug();
    await waitFor(() => {
      const nameInput = screen.getByTestId('name');
      const priceInput = screen.getByTestId('price');
      const imgUrlInput = screen.getByTestId('imgUrl');
      const descriptionInput = screen.getByTestId('description');
      const formElement = screen.getByTestId('form'); //elemento do form com o data-testid 
        const ids = productResponse.categories.map(x => String(x.id))

      expect(nameInput).toHaveValue(productResponse.name);
      expect(priceInput).toHaveValue(String(productResponse.price));
      expect(imgUrlInput).toHaveValue(productResponse.imgUrl);
      expect(descriptionInput).toHaveValue(productResponse.description);
      expect(formElement).toHaveFormValues({categories: ids})
    });

    const submitButton = screen.getByRole('button', { name: /salvar/i });

    userEvent.click(submitButton);

    await waitFor(() => {
      const toastElement = screen.getByText('Produto cadastrado com sucesso!');
      expect(toastElement).toBeInTheDocument();
    });
  });
});
