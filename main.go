package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main()  {

	/**
	https://www.laptopmag.com/articles/find-windows-10-lock-screen-pictures
	https://flaviocopes.com/go-list-files/
	 */

	//fmt.Println("I want to get lock screen wallpapers of windows 10.")

	var files []string

	root := `C:\Users\yyk\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets`

	//fmt.Println(files)
	//fmt.Println(root)

	err := filepath.Walk(root, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			log.Fatal(err)
		}
		if info.IsDir() {
		} else if filepath.Ext(path) == "" {
			files = append(files, path)
		}
		return nil
	})

	if err != nil {
		//panic(err)
		log.Fatal(err)
	}

	for _, file := range files {
		fmt.Println(file)
		// rename
		// TODO:
		// copy directory to another location, then do rename
		os.Rename(file, file + ".jpg")
	}
}
