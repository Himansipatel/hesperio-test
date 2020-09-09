    <?php

    namespace Hesper;

    /**
     * Write a method in the errorHandler class that calls the errorsHappen method and catches its error
     * and echos the resulting message with an "Error: " string before it.
     *
     * Expected output: "Error: This is an error"
     *
     * Make sure to execute your class method so that when we run php test6.php we get the expected output
     *
     */

    class errorHandler {
        private function errorsHappen() {
            throw new \Exception('This is an error');
        }

        // Code goes here
        public function test_method_thorws_exception(){
            echo "First line executed\n";
            $this->errorsHappen();
            echo "Line after error\n";
        }
    }

    
    // Code goes here

    $errorHandler = new errorHandler();
    try{
    $errorHandler->test_method_thorws_exception();
    }catch(Exception $e){
        echo "Error: ".$e->getMessage()."\n";
    }
