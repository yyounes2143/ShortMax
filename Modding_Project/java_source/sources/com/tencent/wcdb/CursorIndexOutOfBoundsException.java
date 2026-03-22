package com.tencent.wcdb;
/* loaded from: classes7.dex */
public class CursorIndexOutOfBoundsException extends IndexOutOfBoundsException {
    public CursorIndexOutOfBoundsException(int i10, int i11) {
        super("Index " + i10 + " requested, with a size of " + i11);
    }

    public CursorIndexOutOfBoundsException(String str) {
        super(str);
    }
}
