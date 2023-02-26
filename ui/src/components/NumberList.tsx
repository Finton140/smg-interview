import { HTMLProps } from "react"
import ListItem from "./ListItem"

interface NumberListProps {
    listData: number[],
    removeButtonAction: (index: number) => void
}

const NumberList = ({children, listData, removeButtonAction, ...props}: HTMLProps<HTMLUListElement> & NumberListProps) => {
    return (
        <ul className='flex flex-col justify-start items-start gap-2' {...props}>
            {listData.map((item, idx) => (
                <ListItem key={`number-list-${idx}`}>
                    <span>{item}</span>
                    <button type='button' className='px-2 py-1' onClick={_ => removeButtonAction(idx)}>x</button>
                </ListItem>
          ))}
        </ul>
    )
}

export default NumberList