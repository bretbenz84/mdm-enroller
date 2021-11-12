# mdm-enroller
This AppleScript will remove an MDM enrollment profile and install a new one using GUI input. It asks a few questions

If you use DEP and MDMs, good on you, this script is irrelevant to you. If you don't, Apple makes it really hard to remotely manage MDM enrollment profiles. Apple wants the end-user to be the one approving enrollment profiles or removing them. However, if you are a sys-admin managing a fleet of remotely laptops where end-users are not admins, this can be cumbersome to manage.

Often times, remote screen sharing tools like TeamViewer, RealVNC use profiles to approve keyboard/mouse input and screen sharing. When you remove an MDM enrollment profile, it will remove all profiles that came with it, you will lose screen access and won't be able to install the new MDM profile.

This script gets around this problem.

REQUIREMENTS:
1. You must give Accessibility permissions to Script Editor.app for this to work. Open System Preferences, go to Security & Privacy, then the Privacy Tab. Locate the Accessibility options and add Script Editor. It is located inside /Applications/Utilities/.
2. You must also copy the new enrollment MDM profile to the machine before running the script in a place accessible to the end-user.
3. You should know the OS version prior to running the script.
4. You should know if the logged in user is an admin or not. This is because macOS will show a different dialog box for admins and non-admins.
5. You should know the exact names of the old and new enrollment profiles as they show up in System Preferences. Our Jamf profile is called "MDM Profile" and our old Apple Profile Manager was called "Remote Management". Go through the process on a system you have in front of you and collect the names before you attempt to do this remotely.

Note: There is a 17 second delay after removing the old script before killing System Preferences and loading the new one. This is to allow systems time to remove profiles that were pushed from the old MDM profile.

Testing: You may want to adjust the delays for older slower systems. If the script runs faster than the OS can keep up you will have failures. You have been warned.
