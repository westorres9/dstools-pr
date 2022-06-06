import { ReactComponent as ArrowIcon } from 'assets/images/arrow.svg';
import { Link, useParams } from 'react-router-dom';
import { Product } from 'types/product';
import { BASE_URL } from 'util/requests';
import { useState, useEffect } from 'react';
import FullPrice from 'components/FullPrice';
import axios from 'axios';
import ProductDetailsLoader from './ProductDetailsLoader';
import './styles.css';
import PromoPrice from 'components/PromoPrice';
import FinancePrice from 'components/FinancePrice';

const ProductDetails = () => {
    type UrlParams = {
        productId: string;
    };

    const { productId } = useParams<UrlParams>();
    const [product, setProduct] = useState<Product>();
    const [isLoading, setIsLoading] = useState(false);

    useEffect(() => {
        setIsLoading(true);
        axios
            .get(`${BASE_URL}/products/${productId}`)
            .then((response) => {
                setProduct(response.data);
            })
            .finally(() => {
                setIsLoading(false);
            });
    }, [productId]);


    return (
        <div className="product-details-container">
            <div className="product-details-card base-card">
                <Link to="/products">
                    <div className="goback-container">
                        <ArrowIcon />
                        <h2>VOLTAR</h2>
                    </div>
                </Link>

                <div className="row">
                    <div className="col-xl-6">
                        <div className="img-container">
                            <img src={product?.imgUrl} alt={product?.name} />
                        </div>
                        <div className="name-price-container">
                            <h2>{product?.name}</h2>
                            <div className='product-price-container'>
                                {product && <FullPrice fullPrice={product.fullPrice} />}
                                {product && <PromoPrice promoPrice={product?.promoPrice} />}
                            </div>
                            <div className="finance-price">
                                {product && <FinancePrice financePrice={product?.financePrice} />}
                            </div>
                        </div>
                    </div>
                    <div className="col-xl-6">
                        {isLoading ? (
                            <ProductDetailsLoader />
                        ) : (
                            <div className="description-container">
                                <h2>Descrição do produto</h2>
                                <p>{product?.description}</p>
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </div>
    );
}

export default ProductDetails;