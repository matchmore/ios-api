#!/bin/sh
# generates nscoder swift code using sourcery and generated swagger code
rm -fr Generated
mkdir Generated
sourcery --templates Templates/ --sources Alps/Classes/Swaggers/Models --output Generated/