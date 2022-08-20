import * as React from 'react'
import * as ReactDOM from 'react-dom'

const EmptyQuestionMessage = (props) => {
  return(
    <div>
      <div className="mt-5 alert alert-danger alert-dismissible fade show" role="alert">
        <strong>OOPs!</strong> No questions found with the tag: {props.tagname}. Please select another options form the list.
        <button type="button" className="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    </div>
  )
}

export default EmptyQuestionMessage;
