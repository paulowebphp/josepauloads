<?php


namespace Core\Model;

use \Core\Rule;
use \Core\Model;
use \Core\DB\Sql;


class ROI extends Model
{




    public function update()
	{


		$sql = new Sql();


		$results = $sql->select("
		
			CALL sp_roi_update(
				
				:idroi,
				:idanalytic,
				:vlcard,
				:vlboleto,
				:vltotal,
				:vlcost,
				:vlcardbalance,
				:vlcardroi,
				:vlboletobalance,
				:vlboletoroi
			
			)", 
			
			array(

				":idroi"=>$this->getidroi(),
				":idanalytic"=>$this->getidanalytic(),
				":vlcard"=>$this->getvlcard(),
				":vlcard"=>$this->getvlcard(),
				":vlboleto"=>$this->getvlboleto(),
				":vltotal"=>$this->getvltotal(),
				":vlcost"=>$this->getvlcost(),
				":vlcardbalance"=>$this->getvlcardbalance(),
				":vlcardroi"=>$this->getvlcardroi(),
				":vlboletobalance"=>$this->getvlboletobalance(),
				":vlboletoroi"=>$this->getvlboletoroi()

			)//end array
		
		);//end select

		
        
		
	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update







    public function get( $idroi )
	{
		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_roi
            WHERE idroi = :idroi
			ORDER BY dtregister DESC
			LIMIT 1
			
			", 
		
			array(

				":idroi"=>$idroi

			)//end array

		);//end select


        
        
				


		if ( count($results) > 0 )
		{
			

			$this->setData($results[0]);


		}//end if

	}//END get









	public function delete()
	{
		$sql = new Sql();

		$sql->query("
		
			DELETE FROM tb_roi
			WHERE idroi = :idroi
		
			", 
		
			array(

				":idroi"=>$this->getidroi()
			
			)//end array
		
		);//end query

	}//END delete


















    
    public static function getByAnalytic( $idanalytic )
    {

        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_roi
            WHERE idanalytic = :idanalytic
            ORDER BY dtregister DESC
        
        ";
        
        $results = $sql->select( $query, [

            ':idanalytic'=>$idanalytic

        ]);

        

        return $results;


    }//end method







	







	public static function getLastByAnalytic()
	{

		$sql = new Sql();

		$query = "
		
			SELECT * FROM tb_roi a 
			INNER JOIN tb_analytics b ON a.idanalytic = b.idanalytic
			WHERE a.idroi IN (
			
				SELECT MAX(a.idroi) FROM tb_roi a
				INNER JOIN tb_analytics b ON a.idanalytic = b.idanalytic
				WHERE b.indeleted = 0
				GROUP BY b.idanalytic
			
			) ORDER BY b.inposition;
		
		";

		$results = $sql->select( $query );

        
        return $results;


	}//end if







	public static function getTotals()
	{

		$sql = new Sql();

		$query = "
		
			SELECT SUM(a.vlcard) as vlcardtotal, SUM(a.vlcost) as vlcosttotal, SUM(a.vlcardbalance) vlbalancetotal FROM tb_roi a 
			INNER JOIN tb_analytics b ON a.idanalytic = b.idanalytic
			WHERE a.idroi IN (
		
				SELECT MAX(a.idroi) FROM tb_roi a
				INNER JOIN tb_analytics b ON a.idanalytic = b.idanalytic
				WHERE b.indeleted = 0
				GROUP BY b.idanalytic
		
			) ORDER BY b.inposition;
	
		
		";

		$results = $sql->select( $query );

        
        if(count($results) > 0 )
		{

			return $results[0];

		}//end if
		else
		{

			return $results;

		}//end if


	}//end if










}//end Class









?>