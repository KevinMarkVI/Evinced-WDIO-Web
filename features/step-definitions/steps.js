import { Given, When, Then } from '@wdio/cucumber-framework';

const URLS = {
    'EVINCED_DEMO_SITE': 'https://demo.evinced.com'
};
let issues = [];

Given(/^I'm on "([^"]*)"$/, async function (urlAlias) {
    await browser.url(URLS[urlAlias]);
});

When(/^I run evAnalyze command$/, async function () {
    issues = await browser.evAnalyze();
});

Then(/^I should have (\d+) issues found$/, async function (issueCount) {
    await expect(issues.length).toEqual(issueCount);
});

When(/^I run evStart command$/, async function () {
    await browser.evStart();
});
When(/^I run evStop command$/, async function () {
    issues = await browser.evStop();
});
