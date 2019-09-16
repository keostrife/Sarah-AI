# DCS Banner template

## Readme template:

- FEED: 
- DOCKET: 
- DESCRIPTION:  
- DEVELOPER: 
- PROJECT MANAGER: 

## Process (this section need to be updated):

- Duplicate the files as many times as you need
- [!Important] populate README.md with project content such as Feed, Docket number, who work on it, ...etc
- Remove unused files based on your project, for example if you are working on Hyundai DCS banners, you can remove all genesis and surex assets
- in `<body>` use class `.hyundai/surex/genesis` for brand, and  `.s-300x250/300x600/970x250/728x90` for size
- in `<html>` use attribute `lang="en"` or `lang="fr"` for language
- Populate html markups
- Put your animation js code in `js/animation.js`
- Use `app.feed.connector` in `js/feed.js` to connect the feed with html elements, or an array of elements in case 1 feed field need to connect to multiple elements

## Feed format example:

#### Image path: 
```
Example: DRM_Asset:Innocean Worldwide Canada/Hyundai Auto Canada/assets/blank.png
```

- If it connects to an `<img>` tag, the image source will be modified
- If it connects to a other htmlElements, the background-image css property will be modified
- All images will be preloaded before appearing so you don't have to worry about image switching on runtime

#### Json data: 
```
{
	"text":"Build your Santa Fe",
	"right":"72px"
}
```
- `text` property will be used for the content of the element
- Line break will be automatically converted to `<br>`
- can use nested objects to style child elements, for example:
```
{
	"text":"Full <span class='last-name'>Name</span>",
	"user-last-name": {
		"selector": ".last-name",
		"color": "red"
	}
}
// in this example the child element with class .last-name will have red color
```

#### Exit URL

Currently it's hardcoded with label: `Exit_URL`, if the label doesn't match the feed column, you wil need to change it in `js/feed.js`

#### Custom Feed Connector

Sometimes you want to parse the content from the feed without using the default parser mentioned above
The connectData function has a callback that allow you to archive this. Example:
```
this.connectData(function(el, data, jsonData){
	// custom connectors here
	if(jsonData && jsonData.moveDirection && jsonData.moveDirection === "left")
		//animate from left instead
});
```

## Naming rules

- Github Branch name: `[docket]-[month]-[year]-[project]`
- DCS Creative name: `[year]_[month]_[project]_[creative]_[size]_[lang]`
- DCS Feed name: `[brand]_[docket]_[month]_[year]_[nameplate]_[size]`

## Todos:

- need 728x90 size template, also 970x90
- need Surex/Genesis/Kia modules
- need french logos for Hyundai?
- need to add unique class of each banner into body tag. probably Reporting Label from the feed
- Dom manipulation/rendering solution? Without jquery of course
- how to combine this with packaging task?
- How to enforce this template, should we just begin to refactor old projects? Should ask for upcoming DCS projects and foresee their similarities?
- dev and production environments?
- disable legal if there is no legal content
- Use politeInit() from google for preloading assets instead of current preloader