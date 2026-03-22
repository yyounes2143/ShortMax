package com.tencent.wcdb;

import android.database.CharArrayBuffer;
/* loaded from: classes7.dex */
public abstract class AbstractWindowedCursor extends AbstractCursor {
    protected CursorWindow mWindow;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.wcdb.AbstractCursor
    public void checkPosition() {
        super.checkPosition();
        if (this.mWindow != null) {
            return;
        }
        throw new StaleDataException("Attempting to access a closed CursorWindow.Most probable cause: cursor is deactivated prior to calling this method.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearOrCreateWindow(String str) {
        CursorWindow cursorWindow = this.mWindow;
        if (cursorWindow == null) {
            this.mWindow = new CursorWindow(str);
        } else {
            cursorWindow.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeWindow() {
        CursorWindow cursorWindow = this.mWindow;
        if (cursorWindow != null) {
            cursorWindow.close();
            this.mWindow = null;
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
        checkPosition();
        this.mWindow.copyStringToBuffer(this.mPos, i10, charArrayBuffer);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public byte[] getBlob(int i10) {
        checkPosition();
        return this.mWindow.getBlob(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public double getDouble(int i10) {
        checkPosition();
        return this.mWindow.getDouble(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public float getFloat(int i10) {
        checkPosition();
        return this.mWindow.getFloat(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getInt(int i10) {
        checkPosition();
        return this.mWindow.getInt(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public long getLong(int i10) {
        checkPosition();
        return this.mWindow.getLong(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public short getShort(int i10) {
        checkPosition();
        return this.mWindow.getShort(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String getString(int i10) {
        checkPosition();
        return this.mWindow.getString(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getType(int i10) {
        checkPosition();
        return this.mWindow.getType(this.mPos, i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.CrossProcessCursor
    public CursorWindow getWindow() {
        return this.mWindow;
    }

    public boolean hasWindow() {
        if (this.mWindow != null) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isBlob(int i10) {
        if (getType(i10) == 4) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isFloat(int i10) {
        if (getType(i10) == 2) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isLong(int i10) {
        if (getType(i10) == 1) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean isNull(int i10) {
        checkPosition();
        if (this.mWindow.getType(this.mPos, i10) == 0) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isString(int i10) {
        if (getType(i10) == 3) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.wcdb.AbstractCursor
    public void onDeactivateOrClose() {
        super.onDeactivateOrClose();
        closeWindow();
    }

    public void setWindow(CursorWindow cursorWindow) {
        if (cursorWindow != this.mWindow) {
            closeWindow();
            this.mWindow = cursorWindow;
        }
    }
}
