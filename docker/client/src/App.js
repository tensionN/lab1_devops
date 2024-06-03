import './App.css';
import axios from "axios";
import {useEffect, useState} from "react";
function App() {
    const [data, setData] = useState({});
    const [loading, setLoading] = useState(true);
    useEffect(() => {
        axios.get("http://localhost:5000/users")
            .then(response => {
                setData(response.data)
                setLoading(false);
            });
    }, [data]);

  return (
    <div className="App">
        {loading ? "Loading..." : data.map(person => <li key={person.id}>{person.name}</li>)}

    </div>
  );
}

export default App;
