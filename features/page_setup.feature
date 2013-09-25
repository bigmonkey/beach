Feature: CMS page tags and tracking
	In order to track usage and be SEO'd
	As a site owner
	I want page tags and tracking
	

Scenario: Title tag is showing
  Given a user visits the Center page on CMS
  When the Center page loads
  Then the pages should have title tags Center - Beachside Rehab

