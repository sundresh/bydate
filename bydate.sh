export BYDATE_BASE=~/bydate

function td () {
	cd $BYDATE_BASE

	local today=`date +%Y/%m/%d`
	ln -nsf $today today
	mkdir -p $today && cd $today

	export TODAY=`pwd`
}

function yd () {
	cd $BYDATE_BASE

	local yesterday=`date +%Y/%m/%d -d yesterday`
	mkdir -p $yesterday && cd $yesterday
}
