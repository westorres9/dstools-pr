import { formatprice } from "util/formatters";

type Props = {
    promoPrice : number;
}


const PromoPrice = ({promoPrice} : Props) => {
    
    return(
        <>
            <span>Por R$</span>
            <h3 className="promo">{formatprice(promoPrice)}</h3>
        </>
        
    );
}

export default PromoPrice;