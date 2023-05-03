import { useEffect, useState } from "react"

export const useScrollEnd = () => {
  const [isEndScreen,setIsEndScreen] = useState(true);

  useEffect(() => {
    window.addEventListener("scroll", onScroll);
      // מסיר את האזנה לאירוע
    return () => {
      window.removeEventListener("scroll", onScroll);
    }
  },[])

  const onScroll = () => {
    // console.log("scroll")
    // גובה החלון של המשתמש בדפדפן
    const windowHeight = window.innerHeight;
    // הנקודת וואי בחלק העליון של המסמך שהמשתמש נמצא בו
    // מבחינת גלילה, הכי למעלה יחזיר 0
    const scrollTop = document.documentElement.scrollTop;
    const docHeight = document.documentElement.offsetHeight;
    if(Math.ceil(windowHeight + scrollTop) >= docHeight){
      console.log("end screen from hook");
      setIsEndScreen(true);
    }
  }

  const endScreenFalse = () => {
    setIsEndScreen(false);
  }

  return {isEndScreen, endScreenFalse};
}