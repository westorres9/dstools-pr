import { Category } from "./category";

export type Product = {
    id: number;
    name: string;
    description: string;
    fullPrice: number;
    promoPrice: number;
    financePrice: string;
    imgUrl: string;
    categories: Category[];
}