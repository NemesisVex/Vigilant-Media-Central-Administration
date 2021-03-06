<h4 class="admin_head">Track information</h4>

{if $rsReleases}
<p>Choose a release to edit:</p>

<table class="Admin_Wide">
<tr>
	<th>TITLE</th>
	<th>FORMAT</th>
	<th>RELEASE DATE</th>
</tr>
{foreach item=rsRelease from=$rsReleases}
<tr>
	<td valign="top"><strong><a href="/index.php/musicwhore/tracks/check/{$rsRelease->release_id}/">{$rsRelease->album_title}</a></strong></td>
	<td valign="top">{$rsRelease->format_name}</td>
	<td valign="top">{$rsRelease->release_release_date|date_format:"%Y-%m-%d"}</td>
</tr>
{/foreach}
</table>

{else}
<p>No releases could be found. You must <a href="/index.php/musicwhore/album/browse/{$artist_id}">add an album</a> or <a href="/index.php/musicwhore/release/browse/{$artist_id}/">add a release</a> before you can add tracks.</p>
{/if}

