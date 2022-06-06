import { formatprice } from "util/formatters";

type Props = {
    fullPrice : number;
}

const FullPrice = ({fullPrice} : Props) => {
    
    return(
        <>
            <span>De R$</span>
            <h3 className="fullprice">{formatprice(fullPrice)}</h3>
            
        </> 
    );
}

export default FullPrice;