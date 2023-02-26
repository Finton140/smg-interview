const Button = ({ children, ...props }: Omit<React.HTMLProps<HTMLButtonElement>, 'type'>) => {
    return (
        <button 
            type="button"
            className='bg-slate-500 hover:bg-slate-700 text-white shadow px-4 py-2 rounded-md'
            {...props}
        >
            {children}
        </button>
    )
}

export default Button;