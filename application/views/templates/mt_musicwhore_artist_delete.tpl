<h4 class="admin_head">Album information</h4>

{if $rsArtist}
<form action="/index.php/musicwhore/artist/remove/{$artist_id}/" method="post" name="album">

<p><span style="color: #F00"><strong>WARNING:</strong></span> Deleting a record will permanently remove it from the database. Deletions affect all related tables. You cannot undo deletions once they're performed.</p>

<p>Are you sure you want to delete <strong><em>{format_artist_name_object obj=$rsArtist}</em></strong> <em>permanently</em> from the database?<br>

<p>
<input type="hidden" name="artist_name" value="{format_artist_name_object obj=$rsArtist}">
<input type="submit" id="confirm" name="confirm" value="Yes">
<input type="submit" name="confirm" value="No">
</p>


{literal}
<script type="text/javascript">
$(document).ready(function ()
{
	$('#confirm').click(function () {return confirm_delete('artist');});
});
</script>
{/literal}
</form>
{else}
<p>No artist exists for this record.</p>
{/if}