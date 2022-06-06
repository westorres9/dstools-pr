import './styles.css';
import { Product } from 'types/product';
import CategoryBadge from '../CategoryBadge';
import { Link } from 'react-router-dom';
import { AxiosRequestConfig } from 'axios';
import { requestBackend } from 'util/requests';
import FullPrice from 'components/FullPrice';
import PromoPrice from 'components/PromoPrice';
import FinancePrice from 'components/FinancePrice';

type Props = {
  product: Product; //atribui os dados do Produto na variavel
  onDelete: Function; //evento que é uma função 
};

const ProductCrudCard = ({ product, onDelete }: Props) => {
  const handleDelete = (productId: number) => {
    //função para deletar o produto

    if (!window.confirm('Tem certeza??')) {
      // confirma se for verdade,
      return;
    }

    const config: AxiosRequestConfig = {
      method: 'DELETE',
      url: `/products/${productId}`,
      withCredentials: true,
    };

    requestBackend(config).then(() => {
      console.log('DELETADO ID ' + productId);
      onDelete(); //dispara a função onDelete para atualizar os dados 
    });
  };

  return (
    <div className="base-card product-crud-card">
      <div className="product-crud-card-top-container">
        <img src={product.imgUrl} alt={product.name} />
      </div>
      <div className="product-crud-card-description">
        <div className="product-crud-card-bottom-container">
          <h6>{product.name}</h6>
          <FullPrice
            fullPrice={product.fullPrice} //mostra o preço padrao do produto no card
          />
          <PromoPrice
            promoPrice={product.promoPrice} //mostra o preço com desconto do produto no card
          />
          <FinancePrice financePrice={product.financePrice} //mostra o preço parcelado do produto no card
          /> 
        </div>

        <div className="product-crud-categories-container">
          {product.categories.map((x) => (
            <CategoryBadge name={x.name} key={x.id} /> //mostra as categorias do produto no card
          ))}
        </div>
      </div>
      <div className="product-crud-card-buttons-container">
        <button
          onClick={() => handleDelete(product.id)} //product passado como parametro da função ProductCrudCard
          className="btn btn-outline-danger product-crud-card-buttom product-crud-card-buttom-first"
        >
          EXCLUIR
        </button>
        <Link to={`/admin/products/${product.id}`}>
          <button className="btn btn-outline-secondary product-crud-card-buttom">
            EDITAR
          </button>
        </Link>
      </div>
    </div>
  );
};

export default ProductCrudCard;
