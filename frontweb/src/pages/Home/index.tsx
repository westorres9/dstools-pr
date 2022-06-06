import HomeImg from 'assets/images/home-image.jpg';
import ButtonIcon from 'components/ButtonIcon';
import { Link } from 'react-router-dom';
import './styles.css';


function Home() {
    return (
        <div className="home-container">
            <div className="base-card home-card">
                <div className="home-content-container">
                    <h1>Conheça o melhor catálogo de Ferramentas</h1>
                    <p>
                    Só aqui você encontra os melhores ferramentas do mercado!
                    </p>
                    <a href="link">
                        <Link to="/products">
                            <ButtonIcon text={'BUSCAR PRODUTOS'} />
                        </Link>                        
                    </a>
                </div>
                <div className="home-image-container">
                    <img src={HomeImg} alt="home-img" />
                </div>
            </div>
        </div>
    );
}

export default Home;