import React from "react";

function ProfileInfo({ name, bio }) {
  return (
    <div>
      <h2>{name}</h2>
      <p>{bio}</p>
    </div>
  );
}

export default ProfileInfo;
