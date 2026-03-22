package com.tencent.wcdb;
/* loaded from: classes7.dex */
public class CrossProcessCursorWrapper extends CursorWrapper implements CrossProcessCursor {
    public CrossProcessCursorWrapper(Cursor cursor) {
        super(cursor);
    }

    @Override // com.tencent.wcdb.CrossProcessCursor
    public void fillWindow(int i10, CursorWindow cursorWindow) {
        Cursor cursor = this.mCursor;
        if (cursor instanceof CrossProcessCursor) {
            ((CrossProcessCursor) cursor).fillWindow(i10, cursorWindow);
        } else {
            DatabaseUtils.cursorFillWindow(cursor, i10, cursorWindow);
        }
    }

    @Override // com.tencent.wcdb.CrossProcessCursor
    public CursorWindow getWindow() {
        Cursor cursor = this.mCursor;
        if (cursor instanceof CrossProcessCursor) {
            return ((CrossProcessCursor) cursor).getWindow();
        }
        return null;
    }

    @Override // com.tencent.wcdb.CrossProcessCursor
    public boolean onMove(int i10, int i11) {
        Cursor cursor = this.mCursor;
        if (cursor instanceof CrossProcessCursor) {
            return ((CrossProcessCursor) cursor).onMove(i10, i11);
        }
        return true;
    }
}
