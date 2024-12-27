import React from "react";

const page = () => {
  return (
    <div className=" flex justify-center items-center h-screen text-center ">
      <div>
        <p className="text-8xl mb-2 ">Hello Sooraj</p>
        <p className="text-xl ">
          Contact me at{" "}
          <a
            target="_blank"
            href="https://soorajrao.in"
            className=" text-blue-500 hover:underline "
          >
            soorajrao.in
          </a>
        </p>
      </div>
    </div>
  );
};

export default page;
