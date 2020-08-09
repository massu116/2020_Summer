package main
import(
	"fmt"
	"net/http"
	"github.com/codegangsta/negroni"
)

func main(){
	mux := http.NewServeMux()
	mux.HandleFunc("/", func(w http.ResponseWriter, req *http.Request){
		fmt.Fprintln(w, "hello world")
	})
	a := negroni.Classic()
	a.UseHandler(mux)
	http.ListenAndServe(":8000", a)
}