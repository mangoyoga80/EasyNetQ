CREATE OR REPLACE FUNCTION "uspCancelScheduledMessages"(p_cancellationkey character varying)
  RETURNS void AS
$BODY$DECLARE 
BEGIN

delete from workItems WHERE CancellationKey = p_cancellationkey;
	
END;$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION "uspCancelScheduledMessages"(character varying)
  OWNER TO postgres;
