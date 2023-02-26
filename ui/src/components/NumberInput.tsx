import { forwardRef, HTMLProps } from "react"

const NumberInput = forwardRef<HTMLInputElement>((props: Omit<HTMLProps<HTMLInputElement>, 'type'>, ref) => {
    return (
        <input type="number" ref={ref} className='shadow rounded-sm w-full px-2 py-1' {...props} />
    )
})

export default NumberInput