<?php


namespace Core\Model;

use \Core\Model;
use \Core\Rule;
use \Core\DB\Sql;


class Machine extends Model
{




    public function update()
	{


		$sql = new Sql();

		
		

		$results = $sql->select("
		
			CALL sp_machines_update(
				
				:idmachine,
				:indeleted,
				:inposition,
				:desmachine,
				:desmachineabbr
			
			)", 
			
			array(

				":idmachine"=>$this->getidmachine(),
				":indeleted"=>$this->getindeleted(),
				":inposition"=>$this->getinposition(),
				":desmachine"=>$this->getdesmachine(),
				":desmachineabbr"=>$this->getdesmachineabbr()

			)//end array
		
		);//end select










	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update







    public function get( $idmachine )
	{
		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_machines
            WHERE idmachine = :idmachine
			
			", 
		
			array(

				":idmachine"=>$idmachine

			)//end array

		);//end select


        
				


		if ( count($results) > 0 )
		{
			

			$this->setData($results[0]);


		}//end if

	}//END get












    
    public static function listAll( $indeleted = 0 )
    {

        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_machines
            WHERE indeleted = :indeleted
            ORDER BY inposition	

        ";
        
        $results = $sql->select( $query,[

			':indeleted'=>$indeleted
		]);

        
        return $results;


    }//end method















    public function delete()
    {

        $sql = new Sql();



        $query = "
        
            UPDATE tb_machines
			SET indeleted = 1
			WHERE idmachine = :idmachine
        
        ";
        
        $results = $sql->select( $query, [

            ':idmachine'=>$this->getidmachine()

        ]);

        

        return $results;


    }//end method


















    public function getMachineUsername()
    {

        $sql = new Sql();

        $query = "

            SELECT * FROM tb_usernames
            WHERE idmachine = :idmachine
        
        ";

        
        $results = $sql->select( $query, [

            'idmachine'=>$this->getidmachine()


        ]);

        

        return $results;


    }//end method












    

















}//end Class









?>