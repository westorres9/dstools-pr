
import FinancePrice from 'components/FinancePrice';
import FullPrice from 'components/FullPrice';
import PromoPrice from 'components/PromoPrice';
import { Product } from 'types/product';
import './styles.css';

type Props = {
    product: Product
}

function ProductCard({ product }: Props) {
    return (
        <div className="base-card product-card">
            <div className="card-top-container">
                <img src={product.imgUrl} alt={product.name} />
            </div>
            <div className="card-bottom-container">
                <h6>{product.name}</h6>
                <div className='product-price-container'>
                    <FullPrice fullPrice={product.fullPrice} />
                    <PromoPrice promoPrice={product.promoPrice} />
                </div>
                <div className="finance-price">
                    <FinancePrice financePrice={product.financePrice}/>
                </div>
            </div>
        </div>

    );
}

export default ProductCard;