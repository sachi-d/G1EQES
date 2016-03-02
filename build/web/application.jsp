<div class="col-md-12">

    <div class="box box-info">
        <!-- form start -->
        <form class="form-horizontal" action="" method="POST">

            <div class="box-body">

                <!----------------------CATEGORY APPLIED FOR ------------------------------------------>
                <div class="form-group">
                    <label class="col-sm-3 control-label">School applied for :</label>
                    <div class="col-sm-3">
                        <input name="category" id="school" class="form-control" disabled="">
                    </div>
                </div>
                <div class="form-group" disabled="true">
                    <label class="col-sm-3 control-label">Category of school :</label>
                    <div class="col-sm-3">
                        <input name="category" id="category" class="form-control" disabled="">
                    </div>
                </div>
                <!--<label class="col-sm-12" style="text-decoration:underline">Note:- Separate applications should be submitted when it is under several categories</label>-->

                <!--------------------------- DETAILS OF THE CHILD---------------------------------------->
                <div class="form-group">
                    <label class="col-sm-12 label-primary"> Details of the child </label>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Name in full :</label>
                    <div class="col-sm-9">
                        <textarea name="fullname" id="fullname" rows="2" class="form-control" ></textarea>
                        <!--<input name="fullname" type="text" class="form-control" >-->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Name with initials :</label>
                    <div class="col-sm-9">
                        <input name="initials" id="initials"  class="form-control" placeholder="Please write only last  name ? Eg : A.G.D.A.Gunasena">
                        <!--<input name="fullname" type="text" class="form-control" >-->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Sex :</label>
                    <div class="col-sm-3">
                        <input name="category" id="sex" class="form-control" disabled="">
                    </div>
                    <label class="col-sm-3 control-label"> Religion :</label>
                    <div class="col-sm-3">
                        <input name="religion" id="religion" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Medium of learning :</label>
                    <div class="col-sm-3">
                        <input name="category" id="medium" class="form-control" disabled="">
                    </div>
                    <label class="col-sm-3 control-label"> Date of birth:</label>
                    <div class="col-sm-3">
                        <input name="dob" type="text" class="form-control" id="dob">
                    </div>
                </div>

                <hr> 

                <!----------------------------------- DETAILS OF THE PARENT ------------------------------------------>
                <div class="form-group">
                    <label class="col-sm-12 label-primary"> Details of the applicant: (Mother/Father/Legal Guardian)</label>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Name in full :</label>
                    <div class="col-sm-9">
                        <textarea name="fullname_parent" id="fullname_parent" rows="2" class="form-control" ></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> NIC :</label>
                    <div class="col-sm-3">
                        <input name="nic_parent" id="nic_parent" class="form-control" >
                    </div>
                    <label class="col-sm-3 control-label"> Religion :</label>
                    <div class="col-sm-3">
                        <input name="religion_parent" id="religion_parent" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Nationality :</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="issrilankan" name="issrilankan">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Permanent address :</label>
                    <div class="col-sm-9">
                        <textarea name="address_parent" id="address_parent" rows="2" class="form-control" ></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"> Residential district :</label>
                    <div class="col-sm-3">
                        <input name="district" id="district" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Grama Niladhari Division :</label>
                    <div class="col-sm-3">
                        <input name="grama_div" id="grama_div" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Distance to the school from the place of residence :</label>
                    <div class="col-sm-3">
                        <input onchange="set_distance()" placeholder="km"name="distance" id="distance" class="form-control" >
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-12 label-primary">Additional information - Please complete only the relevant sections</label>
                </div>

                <!-------------------- PAST PUPILS------------------------------------>
                <div class="form-group">
                    <label class="col-sm-12 label-default">Children of Past Pupils</label>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label ">Admission No. </label>
                    <div class="col-sm-3">
                        <input name="past_pupil_id" id="past_pupil_id" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label ">Full name : </label>
                    <div class="col-sm-9">
                        <input name="past_pupil_name" id="past_pupil_name" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label ">Period spent in the school as a pupil from:</label>
                    <!--<label class="col-sm-1 control-label ">From </label>-->
                    <div class="col-sm-3">
                        <input name="past_pupil_from_grade" id="past_pupil_from_grade" class="form-control">
                    </div>
                    <label class="col-sm-3 control-label ">in year </label>
                    <div class="col-sm-3">
                        <input name="past_pupil_from_year" id="past_pupil_from_year" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label ">To :</label>
                    <!--<label class="col-sm-1 control-label ">From </label>-->
                    <div class="col-sm-3">
                        <input name="past_pupil_to_grade" id="past_pupil_to_grade" class="form-control">
                    </div>
                    <label class="col-sm-3 control-label ">in year</label>
                    <div class="col-sm-3">
                        <input name="past_pupil_to_year" id="past_pupil_to_year" class="form-control">
                    </div>
                </div>

                <!------------------SIBLING REFERENCE --------------------------------->
                <div class="form-group">
                    <label class="col-sm-12 label-default">Brothers/Sisters of students who are studying in the school at present</label>
                </div>
                <div class="form-group">
                    <label class="col-sm-6 control-label ">Name of child :</label>
                    <label class="col-sm-3 control-label ">Grade </label>
                    <label class="col-sm-3 control-label ">Admission No. </label>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label ">1 </label>
                    <div class="col-sm-5">
                        <input name="sibling_1_name" id="sibling_1_name" class="form-control" >
                    </div>
                    <div class="col-sm-3">
                        <input name="sibling_1_grade" id="sibling_1_grade" class="form-control" >
                    </div>
                    <div class="col-sm-3">
                        <input name="sibling_1_id" id="sibling_1_id" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label ">2 </label>
                    <div class="col-sm-5">
                        <input name="sibling_2_name" id="sibling_2_name" class="form-control" >
                    </div>
                    <div class="col-sm-3">
                        <input name="sibling_2_grade" id="sibling_2_grade" class="form-control" >
                    </div>
                    <div class="col-sm-3">
                        <input name="sibling_2_id" id="sibling_2_id" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label ">3 </label>
                    <div class="col-sm-5">
                        <input name="sibling_3_name" id="sibling_3_name" class="form-control" >
                    </div>
                    <div class="col-sm-3">
                        <input name="sibling_3_grade" id="sibling_3_grade" class="form-control" >
                    </div>
                    <div class="col-sm-3">
                        <input name="sibling_3_id" id="sibling_3_id" class="form-control" >
                    </div>
                </div>
            </div>

            <div class="box-footer">
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary pull-right" style="display: none" id="updatebtnapplication">Update</button>
                    </div>
                </div>
            </div>
        </form>
    </div><!-- /.box -->

</div>
<!-- jQuery 2.1.4 -->
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="plugins/jQueryUI/jquery-ui.js"></script>
<script>
                            $("input").prop("disabled", true);
                            $("textarea").prop("disabled", true);
                            $("select").prop("disabled", true);
</script>