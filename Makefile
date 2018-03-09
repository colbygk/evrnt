thrift:
	thrift -strict -nowarn --allow-64bit-consts --allow-neg-keys --gen go:package_prefix=github.com/colbygk/evernote-sdk-golang/,thrift_import=github.com/apache/thrift/lib/go/thrift -I evernote-thrift/src/ -r --out evernotesdk/src/github.com/dreampuf/evernote-sdk-golang/ evernote-thrift/src/NoteStore.thrift

