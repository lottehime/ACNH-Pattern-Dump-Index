<a name="readme-top"></a>

<!-- PROJECT HEADER -->
<br />
<div align="center">
  <a href="https://github.com/lottehime/ACNH-Pattern-Dump-Index">
    <img src="readmeimg.png" alt="Logo">
  </a>

  <h2 align="center">ACNH design pattern dump and index site with self building script for Windows.</h2>

  <p align="center">
    An <b><i>open source</i></b> directory of Animal Crossing New Horizons design pattern files that isn't locked behind someones frontend and can be contributed to and accessed by <strong>anyone at any time</strong> (and can be self stored and hosted locally on your machine)!
    <br><br />
    <a href="https://github.com/lottehime/ACNH-Pattern-Dump-Index/issues">Report A Bug</a> 🐞
    ·
    <a href="https://github.com/lottehime/ACNH-Pattern-Dump-Index/issues">Request A Feature</a> 🏝️
  </p>
</div>

<div align="center">

[![Contributors][contributors-shield]][contributors-url] [![Stargazers][stars-shield]][stars-url] [![Issues][issues-shield]][issues-url]  [![License][license-shield]][license-url] 

[contributors-shield]: https://img.shields.io/github/contributors/lottehime/ACNH-Pattern-Dump-Index.svg?style=for-the-badge
[contributors-url]: https://github.com/lottehime/ACNH-Pattern-Dump-Index/graphs/contributors
[stars-shield]: https://img.shields.io/github/stars/lottehime/ACNH-Pattern-Dump-Index.svg?style=for-the-badge
[stars-url]: https://github.com/lottehime/ACNH-Pattern-Dump-Index/stargazers
[issues-shield]: https://img.shields.io/github/issues/lottehime/ACNH-Pattern-Dump-Index.svg?style=for-the-badge
[issues-url]: https://github.com/lottehime/ACNH-Pattern-Dump-Index/issues
[license-shield]: https://img.shields.io/github/license/lottehime/ACNH-Pattern-Dump-Index.svg?style=for-the-badge
[license-url]: https://github.com/lottehime/ACNH-Pattern-Dump-Index/blob/master/LICENSE.txt

</div>

<div align="center">
  <br>
  <a href="https://lottehime.github.io/ACNH-Pattern-Dump-Index/">
  <img src="https://custom-icon-badges.demolab.com/badge/-CHECK_IT_OUT_ONLINE-68ba9f?style=for-the-badge&logo=globe&logoColor=white" height="60"/>
  </a>
  <br>
</div>

<!-- TABLE OF CONTENTS -->
### Table of Contents:
<details>
  <summary>Sections</summary>
<ol>
  <li><a href="#about-acnh-pattern-dump-index">About ACNH Pattern Dump Index</a></li>
  <li><a href="#features">Features</a></li>
  <li><a href="#roadmap">Roadmap</a></li>
  <li><a href="#installation">Installation</a></li>
  <li><a href="#built-with">Built With</a></li>
  <li><a href="#contributing">Contributing</a></li>
  <li><a href="#license">License</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#acknowledgments">Acknowledgments</a></li>
</ol>
</details>

<!-- ABOUT -->
## About ACNH Pattern Dump Index:

If you're like most Animal Crossing New Horizons players, you love messing about making your cool island theme and plastering custom design patterns all over the place. Me too. 📐🖌️

Getting back into ACNH this year and wanting to do some modding of my save file, it was annoying to find design patterns online that were easily accessible without having to click through unnecessarily fluffy UIs to download a few files. Then those files were all in slightly different formats (untrimmed bin, trimmed bin, QR only, scrambled bin, code only, etc.) and it drove me nuts as a user! 🤬

So I did a little reversing of some apps and sites and decided to dump a bunch of patterns I could find and store for myself.  
The only problem? Browsing and maintaining that catalog! 😫  
I then set out to create a single script that builds a simple site that can catalog and present those patterns with their available details and allow them to be searched/filtered and downloaded as untrimmed [NHSE](https://github.com/kwsch/NHSE) compatible files. ✌

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- FEATURES -->
## Features:

### Generic:
* Use the pages buttons or dropdown to navigate further.  
* Use the filter fields to search by name of creator, name of pattern, tags, and by pattern type.  
* Hover over an image to enlarge and view it in a larger size (for seeing pattern details or for scanning a QR).  
* Click the download links to get the files.

### Normal Pattern Dump
The directory ``files/pat`` contains a living dump of normal pattern files in ``.nhd`` format along with a ``.png`` of the pattern a ``.txt`` with its details, a ``.QR.png`` QR Code for the pattern (or a placeholder) and a ``.acnl`` file for any interoperable patterns.  
They're browsable from your OS on their own (obviously) due to this.  
Simply download the ``.nhd`` by clicking the download link, then load into your save with NHSE - or if you're running OFW you can scan the QR into NookLink for those that are supported.

### PRO Pattern Dump
The directory ``files/pro`` contains a living dump of normal pattern files in ``.nhpd`` format along with a ``.png`` of the pattern a ``.txt`` with its details, a ``.QR.png`` QR Code for the pattern (or a placeholder) and a ``.acnl`` file for any interoperable patterns. 
They're browsable from your OS on their own (obviously) due to this.  
Simply download the ``.nhpd`` by clicking the download link, then load into your save with NHSE - or if you're running OFW you can scan the QR into NookLink for those that are supported.

### Website
It's made up of 3 parts: ``files/table.html`` (generated), ``files/top.html`` (static) and ``files/bot.html`` (static) that are combined into a single ``index.html``.
Load up the index and browse away.
It's also available online here: [ACNH Pattern Dump Index (GitHub Pages)](https://lottehime.github.io/ACNH-Pattern-Dump-Index/)

### Windows Batch File Page Creator/Updater
The batch file ``live_makehtml.bat`` can be run to generate a new version of the index and pattern pages.  
Consider that it will take time! Especially on a slow drive, or a network drive. It's gathering up <strong>a lot</strong> of files into the ``table.html`` file!

### Source
To build your own customised version, refer to the ``_src`` folder.  
Place your normal patterns in ``_src/files/pat`` and your PRO patterns in ``_src/files/pro``.  
Then run ``_src/makehtml.bat`` as is, or modified to your liking.

The file formats are as follows:

<strong>Normal Design Pattern Files:</strong>  
Each design patterns 4 files need to have the same name (minus extensions).
* ``.nhd``: Normal Design Pattern Data, ``0x2A8`` (680 bytes) in size. Untrimmed. NHSE compatible.
* ``.png``: 32x32px PNG of the pattern, transparency included. Preference is a 1:1 data to PNG encode, limit post-processing.
* ``.QR.png``: QR Code PNG of the for the pattern, or a placeholder "no qr" image. 
* ``.txt``: 4 line file.
  * Line 1: design pattern type.
  * Line 2: design pattern name.
  * Line 3: creator name.
  * Line 4: tags separated by commas.
Optionally, for ACNL interoperable pattern types a ``.acnl`` file with the same name can be included as well.

<strong>PRO Design Pattern Files:</strong>  
Each design patterns 4 files need to have the same name (minus extensions).
* ``.nhpd``: PRO Design Pattern Data, ``0x8A8`` (2216 bytes) in size. Untrimmed. NHSE compatible.
* ``.png``: 64x64px PNG of the pattern, transparency included. Preference is a 1:1 data to PNG encode, limit post-processing.
* ``.QR.png``: QR Code PNG of the for the pattern, or a placeholder "no qr" image. 
* ``.txt``: 4 line file.
  * Line 1: design pattern type.
  * Line 2: design pattern name.
  * Line 3: creator name.
  * Line 4: tags separated by commas.
  Optionally, for ACNL interoperable pattern types a ``.acnl`` file with the same name can be included as well.

### Tools
WIP. See roadmap below.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ROADMAP -->
## Roadmap

- [x] Host on GitHub Pages.
- [X] Integrate QR codes into the website script side (probably QR as ``.png``, show QR.png either below pattern image or as mouseover).
- [X] Cleanup the batch file and combine some iterating for efficieny of file size and build time.
- [X] Better, faster, responsive site to replace the basic one.
- [ ] (WIP) Add tool for creating needed image and text files from ``.nhd`` and ``.nhpd`` files.
- [ ] (WIP) Add tool for producing QR codes from the files (needs some reversing).


See the [open issues](https://github.com/lottehime/ACNH-Pattern-Dump-Index/issues) for any additional community proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Installation

_For local use as is hosted here with the current dump:_

1. Download a zip of the repo and unpack it; <strong>or</strong>
2. Clone the repo
   ```sh
   git clone https://github.com/lottehime/ACNH-Pattern-Dump-Index.git
   ```
3. Simply open ``index.html`` and away you go.

_To build your own:_

1. Download a zip of the repo and unpack it; <strong>or</strong>
2. Clone the repo
   ```sh
   git clone https://github.com/lottehime/ACNH-Pattern-Dump-Index.git
   ```
3. Either move or copy the ``_src`` folder to where you intend to run it and modify the contents of ``_src/files/pat`` and ``_src/files/pro``; <strong>or</strong>
4. Modify the contents of ``files/pat`` and ``files/pro`` in the root directory (those containing the current dump).
5. Then run ``_src/makehtml.bat`` if modifying from the ``_src`` folder, or ``live_makehtml.bat`` if operating in the root.
6. Wait for it to build the ``index.html`` file.
7. Host as desired.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- BUILT WITH -->
## Built With

<a href="#">
<img src="https://img.shields.io/static/v1?message=batch&logo=powershell&label=&color=343940&logoColor=white&labelColor=&style=for-the-badge" height="35"/></a>

<a href="#">
<img src="https://img.shields.io/static/v1?message=html&logo=html5&label=&color=E34F26&logoColor=white&labelColor=&style=for-the-badge" height="35"/></a>

<a href="#">
<img src="https://img.shields.io/static/v1?message=css&logo=css3&label=&color=1572B6&logoColor=white&labelColor=&style=for-the-badge" height="35"/></a>

<a href="#">
<img src="https://img.shields.io/static/v1?message=javascript&logo=javascript&label=&color=F7DF1E&logoColor=white&labelColor=&style=for-the-badge" height="35"/></a>

<!--
<a href="#">
<img src="https://img.shields.io/static/v1?message=C Sharp&logo=csharp&label=&color=239120&logoColor=white&labelColor=&style=for-the-badge" height="35"/></a>
-->

<a href="https://github.com/Holt59/datatable">
<img src="https://custom-icon-badges.demolab.com/badge/-Datatable-blue?style=for-the-badge&logo=pivot-column&logoColor=white" height="35"/></a>

<a href="#">
<img src="https://custom-icon-badges.demolab.com/badge/-animal_crossing-68ba9f?style=for-the-badge&logoSource=feather&logo=compass&logoColor=white" height="35"/></a>

<a href="#">
<img src="https://custom-icon-badges.demolab.com/badge/-coffee-tan?style=for-the-badge&logo=coffee&logoColor=white" height="35"/></a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- BUY ME A COFFEE -->
## Help Support More Like This

<a href="https://www.buymeacoffee.com/lottehime" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

If you would like to submit patterns to the dumps, please do so via a pull request and place them in the ``queue`` folders ``pat`` or ``pro`` subfolder.  
They should be in the form of ``.nhd`` or ``.nhpd`` and have a ``.png`` and ``.txt`` file included that follows the format laid out in the above sections as well as their QR Code (or placeholder) ``.png``. The file names should be identical (except for the extensions, obviously).  
I am also happy to receive them via the issue tracker.

I will periodically moderate them and run an update to the site here. <strong>Please don't submit dumb offensive stuff, OK? Behave yourself.</strong>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the GNU General Public License v3.0 License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

<a href="#"><img src="https://cdn.simpleicons.org/twitter/1D9BF0" height="16"/></a> [@lotte_hime](https://twitter.com/lotte_hime)

<a href="#"><img src="https://cdn.simpleicons.org/github/181717" height="16"/></a> [https://github.com/lottehime](https://github.com/lottehime)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Uses [datatable by Holt59](https://github.com/Holt59/datatable) as a base for managing tables.

Thanks to all the people who created the designs in the dump and uploaded them to different places. I've done my best to make sure the data available to me to credit you is here. Please feel free to reach out for corrections! 💜  

Thanks to all the ACNH modders/devs who have stood up all the wonderful tools throughout the years that I was able to reference and poke and prod to get this happening.

Please keep in mind that this is a for fun, freedom and for personal use project. Don't charge for it, don't lock it behind something and help it grow.

<strong>Also, Audie is the best villager!🍍 Fight me.</strong>

<br><br><br>

_Animal crossing characters, trademarks, logos, names, etc. are the property of their respective owners. All company, product and service names used are for identification purposes only._

_This is a fan project undertaken with fair use in mind and in good faith towards the rights holders.
Neither the project, nor I have any relation or affiliation to the above owners and/or rights holders._

_Any issues, please kindly let me know._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
