import { HTMLProps } from "react";

const ListItem = ({ children, ...props}: HTMLProps<HTMLLIElement>) => {
    return (
        <li className='bg-slate-400 flex justify-between items-center w-full px-2 py-2 rounded-sm' {...props}>
            {children}
        </li>
    )
}

export default ListItem;