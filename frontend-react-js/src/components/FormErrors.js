import './FormErrors.css';
import FormErrorItem from './FormErrorItem';

export default function FormErrors(props) {
    let el_errors = null;
    let el_errors_items = null;

    if(props.errors.length > 0) {
        el_errors_items =
        props.errors.map((error_code) => {
         <FormErrorItem error_code={error_code} />
    })}
        el_errors  = (<div className='errors'>
            {el_errors_items}
        </div>)

    return(
        <div className='errorsWrap'>
            {el_errors}
        </div>
    )

}