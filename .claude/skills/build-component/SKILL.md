---
name: build-component
description: Create the circular meter component.
---

# Add Repository Skill

## Overview & Prerequisites

This skill guides you to implement the complete spark circular meter component.

Read the *all_styles.png* in the **template** to see the 4 possible styles of the component : 
- 4 variants : 
  - value only
  - value and label
  - icon
  - image

## ***Accessibility Identifier***

### ***Skills***
- ***/spark-component-accessibility-identifier***

## ***Enum***

### ***Skills***
- ***/spark-component-enum***

### ***Files***
- ***Public***
	- ***Size***
		- *Cases*
			- *small*
			- *medium*
			- *large*
			- *xLarge*
		- *Default*
			- *large*
	- ***Intent***
		- *Cases*
			- *support*
			- *success*
			- *alert*
			- *error*
			- *info*
			- *main*
		- *Default*
			- *support*
	- ***Alignment***
		- *Cases*
			- *center*
			- *right*
		- *Default*
			- *right*
- ***Internal***
	- ***TextAlignment***
		- *Cases*
			- *leading*
			- *center*

## ***Environment***

### ***Skills***
- ***/spark-component-environment***

### ***Files***
- ***Size***
	- *Use the Size enum*
- ***Intent***
	- *Use the Intent enum*
- ***Alignment***
	- *Use the Alignment enum*

## ***Model***

### ***Skills***
- ***/spark-component-model***

### ***Files***
- ***Colors***
	- *Properties*
		- *trackColorToken*
			- *type*
				- *any ColorToken*
			- *default value*
				- *ColorTokenClear()*
		- *indicatorColorToken*
			- *type*
				- *any ColorToken*
			- *default value*
				- *ColorTokenClear()*
		- *iconColorToken*
			- *type*
				- *any ColorToken*
			- *default value*
				- *ColorTokenClear()*
		- *valueColorToken*
			- *type*
				- *any ColorToken*
			- *default value*
				- *ColorTokenClear()*
		- *contentColorToken*
			- *type*
				- *any ColorToken*
			- *default value*
				- *ColorTokenClear()*
- ***Sizes***
	- *Properties*
		- *gaugeDiameter*
			- *type*
				- *CGFloat*
			- *default value*
				- *.zero*
		- *gaugeStroke*
			- *type*
				- *CGFloat*
			- *default value*
				- *.zero*
		- *icon*
			- *type*
				- *CGFloat*
			- *default value*
				- *.zero*
- ***Typographies***
	- *Properties*
		- *insideValueFontToken*
			- *type*
				- *any TypographyFontToken*
			- *default value*
				- *TypographyFontTokenClear()*
		- *insideContentFontToken*
			- *type*
				- *any TypographyFontToken*
			- *default value*
				- *TypographyFontTokenClear()*
		- *outsideValueFontToken*
			- *default value*
				- *TypographyFontTokenClear()*
		- *outsideContentFontToken*
			- *type*
				- *any TypographyFontToken*
			- *default value*
				- *TypographyFontTokenClear()*
- ***Layout***
	- *Properties*
		- *spacing*
			- *type*
				- *CGFloat*
			- *default value*
				- *.zero*

## ***UseCase***

### ***Skills***
- ***/spark-component-use-case***

### ***Files***
- ***GetColors***
	- *Parameters*
		- *theme*
			- *type*
				- *any theme*
		- *intent*
			- *type*
				- *Intent enum*
	- *Response*
		- *Colors model*
	- *Rules*
		- *support*
			- *trackColorToken*
				- *Support Dim 4*
			- *indicatorColorToken*
				- *Support*
			- *iconColorToken*
				- *Neutral*
			- *valueColorToken*
				- *On Surface*
			- *contentColorToken*
				- *On Surface Dim 1*
		- *success*
			- *trackColorToken*
				- *Success Dim 4*
			- *indicatorColorToken*
				- *Success*
			- *iconColorToken*
				- *Neutral*
			- *valueColorToken*
				- *On Surface*
			- *contentColorToken*
				- *On Surface Dim 1*
		- *alert*
			- *trackColorToken*
				- *Alert Dim 4*
			- *indicatorColorToken*
				- *Alert*
			- *iconColorToken*
				- *Neutral*
			- *valueColorToken*
				- *On Surface*
			- *contentColorToken*
				- *On Surface Dim 1*
		- *error*
			- *trackColorToken*
				- *Error Dim 4*
			- *indicatorColorToken*
				- *Error*
			- *iconColorToken*
				- *Neutral*
			- *valueColorToken*
				- *On Surface*
			- *contentColorToken*
				- *On Surface Dim 1*
		- *info*
			- *trackColorToken*
				- *Info Dim 4*
			- *indicatorColorToken*
				- *Info*
			- *iconColorToken*
				- *Neutral*
			- *valueColorToken*
				- *On Surface*
			- *contentColorToken*
				- *On Surface Dim 1*
		- *main*
			- *trackColorToken*
				- *Main Dim 4*
			- *indicatorColorToken*
				- *Main*
			- *iconColorToken*
				- *Neutral*
			- *valueColorToken*
				- *On Surface*
			- *contentColorToken*
				- *On Surface Dim 1*
- ***GetSizes***
	- *Parameters*
		- *size*
			- *type*
				- *Size enum*
	- *Response*
		- *Sizes model*
	- *Rules*
		- *If size is .small*
			- *gaugeDiameter*
				- *24px*
			- *gaugeStroke*
				- *3px*
		- *If size is .medium*
			- *gaugeDiameter*
				- *64px*
			- *gaugeStroke*
				- *5px*
			- *icon*
				- *24px*
		- *If size is .large*
			- *gaugeDiameter*
				- *96px*
			- *gaugeStroke*
				- *8px*
			- *icon*
				- *32px*
		- *If size is .xLarge*
			- *gaugeDiameter*
				- *128px*
			- *gaugeStroke*
				- *10px*
			- *icon*
				- *40px*
- ***GetTypographies***
	- *Parameters*
		- *theme*
			- *type*
				- *any theme*
		- *size*
			- *type*
				- *Size enum*
	- *Response*
		- *Typographies model*
	- *Rules*
		- *If size is .small*
			- *outsideValueFontToken*
				- *Body 2 Highlight*
			- *outsideContentFontToken*
				- *Body 2*
		- *If size is .medium*
			- *valueFontToken*
				- *Body 2 Highlight* 
			- *contentFontToken*
				- *Small*
			- *outsideValueFontToken*
				- *Headline 2*
			- *outsideContentFontToken*
				- *Body 1*
		- *If size is .large*
			- *valueFontToken*
				- *Body 1 Highlight*
			- *contentFontToken*
				- *Caption*
			- *outsideValueFontToken*
				- *Headline 2*
			- *outsideContentFontToken*
				- *Body 1*
		- *If size is .xLarge*
			- *valueFontToken*
				- *Display 3*
			- *contentFontToken*
				- *Body 2*
			- *outsideValueFontToken*
				- *Display 3*
			- *outsideContentFontToken*
				- *Body 1*
- ***GetLayout***
	- *Parameters*
		- *theme*
			- *type*
				- *any theme*
	- *Response*
		- *Layout model*
	- *Rules*
		- *theme.layout.spacing.medium*
- ***GetTextAlignment***
	- *Parameters*
		- *size*
			- *type*
				- *Size enum*
		- *alignment*
			- *type*
				- *Alignment enum*
	- *Response*
		- *TextAlignment enum*
	- *Rules*
		- *If size is .small*
			- *TextAlignment*
				- *.leading*
		- *If alignment is .center*
			- *TextAlignment*
				- *.center*
		- *If alignment is .right*
			- *TextAlignment 
				- *.leading*

## ***ViewModel***

### ***Skills***
- ***/spark-component-view-model***

### ***Files***
- ***Get/Set Properties***
	- *All public Enum*
	- *Theme*
- ***UseCases***
	- *Implement all use cases created before*
- ***Published Properties***
	- *All Models*

## ***View***

### ***Skills***
- ***/spark-component-view***

### ***Files***
- ***Environment***
	- *All Environment created before*
	- *Theme Environment* 
- ***Inits***
	- Can have :
		- init with only image
		- or all others possibilities from
			- value (String or ValueLabel)
			- content (String or ContentLabel)
			- otherValue (String or OtherValueLabel)
			- otherContent (String or OtherContentLabel)
			- icon (Image)
	

## ***Snapshots Testing***

### ***Skills***
- ***spark-component-snapshots-testing***

### ***Files***
- ***Tests all view init possisibilies***

## ***Documentation***

Use the *overview* in https://zeroheight.com/1186e1705/p/35093b-circular-meter.

## Workflow
  - Add/Update the code.
  - Add/Update the documentation if the accessibility identifier is public.
  - Implement the unit tests.

### Code Conventions
- [ ] File headers follow pattern: `Created by {firstname.lastname} on DD/MM/YYYY`
- [ ] Copyright line includes current year
- [ ] No empty lines contain whitespace or tabs
- [ ] All class members accessed with `self.`
- [ ] Protocol marked with `// sourcery: AutoMockable`
- [ ] Proper MARK comments in place
- [ ] The unit tests must be write in *Swift Testing*

### Test Implementation
- [ ] Proper imports (SparkComponentXXX, SparkCommon, SparkTheming, @testable, @_spi(SI_SPI) @testable import SparkComponentXXXTesting, Testing, ...)