Scenario:  User Profile visual check
Given I am on the main application page
When I enter ${UserEmail1} and ${UserPass1} on login form
When I click on an element by the xpath '//button[@type="submit"]'
When I wait until an element with the tag 'img' and attribute 'alt'='My Profile' appears
When I click on an element with the attribute 'alt'='My Profile'
When I COMPARE_AGAINST baseline with `myHome`

Scenario:  Visit Site page visual checks
Given I am on the main application page
When I click on a link with the CSS selector '#primary > main > div.customer-home__heading > div > a'
When I wait until an element with the tag 'p' and attribute 'class'='site-title' appears
When I COMPARE_AGAINST baseline with `visitSite` ignoring:
|ELEMENT|AREA|
|By.xpath(//article[@data-post-id="9"]/div/div[@class="entry-meta"])|By.cssSelector(#colophon)|


Scenario:  Hosting Configuration page visual check
Given I am on the main application page
When I click on an element with the text 'Manage'
When I click on an element with the attribute 'data-e2e-sidebar'='Hosting Configuration'
When I wait until an element with the tag 'h1' and attribute 'class'='formatted-header__title wp-brand-font' appears
When I COMPARE_AGAINST baseline with `hostingConfiguration` ignoring:
|ELEMENT|
|By.xpath(//div[@class='card support-card'])|

Scenario:  Name your site page visual check
Given I am on the main application page
When I click on an element by the xpath '//button[@class="button site-setup-list__task-action task__action is-primary"]'
When I COMPARE_AGAINST baseline with `settings`

Scenario:  Coming soon page visual check
Given I am on the main application page
When I click on an element with the attribute 'class'='site__badge site__badge-coming-soon'
When I wait until an element with the tag 'input' and attribute 'class'='form-text-input' appears
When I COMPARE_AGAINST baseline with `siteTitle`
