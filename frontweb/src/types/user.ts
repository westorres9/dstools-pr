import { Roles } from "./roles";

export type User = {
    id: number;
    firstName: string;
    lastName: string;
    email: string;
    roles: Roles [];
}