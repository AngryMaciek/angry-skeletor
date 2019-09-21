/*
###############################################################################
#
#   [TITLE, DESCRIPTION]
#
#   AUTHOR: {AUTHOR}
#   CONTACT: {EMAIL}
#   CREATED: {DATE}
#   LICENSE: {LICENSE}
#
###############################################################################
*/

// mark that we included this header
#ifndef LIBRARY_NAME_H
#define LIBRARY_NAME_H

// use C's linkage and naming
#ifdef __cplusplus
extern "C" {
#endif

/*
Prints out the "Hello world!" message
Arguments:
- integer n that sets how many times the message will be displayed
Returns:
(null)
*/
void hello_world(int n);

#ifdef __cplusplus
}
#endif

#endif