
function enviarcliente(nomb,cod,dni){
$('#nomClie').replaceWith('<input class="form-control" disabled type="text"  name="nomClie"  value="'+nomb+'" />');
$('#dniClie').replaceWith('<input placeholder="DNI" class="form-control" disabled type="text"  id="dniClie" value="'+dni+'" />');
$('#clie').replaceWith('<input type="hidden" id="clie" name="clie" value="'+cod+'" />');
}

function enviarProd(pre,nom,cod){
  
$('#codPro').replaceWith('<input  type="hidden" name="codPro" id="codPro" value="'+cod+'" />');
$('#nom').replaceWith('<input type="text" required="true"  name="nom" id="nom" disabled class="form-control" value="'+nom+'" />');
$('#preven').replaceWith('<input  disabled required="true"  type="text" name="preven" id="preven" class="form-control" value="'+pre+'" />');
  
}

  function AgregarCarro()
 {
  document.form.action="<%=request.getContextPath()%>/GrabarVenta";
  document.form.method="POST";
  document.form.op.value="1";
  document.form.submit();
}



































function limpiar()
{
	setTimeout('document.frrfcdet.reset()',2000);
	return false;
}

function passmd(num, prec)
{
    document.getElementById("nroinv").value = num;
		document.getElementById("precio").value = prec;
}

function pass2(nroi, can, pr)
{
	document.getElementById("nroinv").value=nroi;
	document.getElementById("cant").value=can;
	document.getElementById("precio").value=pr;
}

function selCli(cc)
{
	document.getElementById("cc").value =""+cc;
}

function selProv(nit)
{
	document.getElementById("nit").value =""+nit;
}

function sc()
{
	 $('#msgcli').load('/ControlBusiness/scli', "cc="+$('#ncli').val());
	 $('#clsscli').hide();
	 	if($('#ncli').val()=="")
				$('#clsscli').show();

}

function si()
{
	 $('#msg').load('/ControlBusiness/sprod', "nro="+$('#n').val());
	 $('#clss').hide();
	 	if($('#n').val()=="")
				$('#clss').show();

}

function sp()
 {
	 $('#msgp').load('/ControlBusiness/sprov', "nit="+$('#np').val());
	 $('#clssp').hide();
	 	if($('#np').val()=="")
				$('#clssp').show();
}

function clibus()
{
	$('#tbl').load('/ControlBusiness/buscarcli', "cc="+$('#cc').val())
}

function probus()
{
	$('#tbl').load('/ControlBusiness/buscarpro', "nit="+$('#nit').val())
}

function prodbus()
{
	$('#tbl').load('/ControlBusiness/buscarprod', "nro="+$('#nro').val())
}
