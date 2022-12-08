function HouseCard({ house, onDeleteHouse}) {
  const { id, name, value, location, description, img_url } = house;

  function handleDeleteClick() {
    fetch(`/properties/${id}`, {
      method: "DELETE",
    }).then((r) => {
      if (r.ok) {
        onDeleteHouse(id);
      }
    });
  }

  return (
    <li className="card">
      <img src={img_url} alt={name} />
      <h4>{name}</h4>
      <p>Price: {value}</p>
      <p>Description: {description}</p>
      <p>Location: {location}</p>

      <button onClick={handleDeleteClick}>Delete</button>
    </li>
  );
}


export default HouseCard;