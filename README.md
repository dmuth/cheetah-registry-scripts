

# Cheetah Registry Scripts

<img src="img/cheetah-saying-hi.png" align="right" width="250" />

This GitHub repo holds supporting scripts that are used to ingest info on cheetahs from Twitter into my <a href="https://cheetah-list.glideapp.io/">Cheetah Registry App</a>.


## Prequistes

### Get a List of Usernames from Twitter

This repo comes with a file called `cheetahs.txt`, which I regularly refresh from my list of cheetahs on Twitter.  But if you have your own list that you'd like to download, here's how to go about doing that:

From <a href="https://www.makeuseof.com/tag/backup-export-twitter-lists/">the instructions in this article</a>:
- Go into <a href="https://tweetdeck.twitter.com/">Tweetdeck</a>
- Click "add column"
- Click the list you want to add
- Once the list is added, click the "filter" button on the upper right of that list
- Click "Edit List"
- Click "Export List" in the upper right of that list.  That will give you a list of Twitter usernames that you can copy and paste to a text file.

### Downloading User Profile Info from Twitter:

- `./download-list.sh ./cheetahs.txt`
   - This will go through Twitter, download the user profile info of each user in that file, and write it to a JSON file in the `users/` directory.
   - If a user's info already exists in `users/`, it won't be downloaded again, as a timesaving measure.



# Resources

- <a href="https://cheetah-list.glideapp.io/">The Cheetah Registry App</a> for iPhone and Android
- <a href="https://github.com/twintproject/twint">Twint</a>
- <a href="https://github.com/dmuth/splunk-twint">Splunk-Twint</a>
   - A Dockerized wrapper for running Twint
- <a href="https://imgur.com/a/euc9ryC">My cheetah images stored on Imgur</a>


# Credits

- The icon shown above is part of the Cheetah Telegram sticker pack, drawn by <a href="https://twitter.com/cinnamonsp0ts">Cinnamon Spots</a>





