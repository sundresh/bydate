export BYDATE_BASE=${BYDATE_BASE-~/bydate}

function td () {
	local today=${BYDATE_BASE}/$(date +%Y/%m/%d)
	mkdir -p "${today}" && cd "${today}"
	ln -nsf "${today}" "${BYDATE_BASE}/today"

	export TODAY=$(pwd)
}

function yd () {
	local yesterday=${BYDATE_BASE}/$(date +%Y/%m/%d -d yesterday)
	mkdir -p "${yesterday}" && cd "${yesterday}"
}
