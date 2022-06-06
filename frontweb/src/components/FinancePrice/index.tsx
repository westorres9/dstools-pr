type Props = {
    financePrice : string;
}


const FinancePrice = ({financePrice} : Props) => {
    
    return(
        <>
            <span>Ou</span>
            <h3 className="promo">{financePrice}</h3>
        </>
        
    );
}

export default FinancePrice;