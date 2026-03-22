package com.tencent.wcdb;
/* loaded from: classes7.dex */
public interface CrossProcessCursor extends Cursor {
    void fillWindow(int i10, CursorWindow cursorWindow);

    CursorWindow getWindow();

    boolean onMove(int i10, int i11);
}
