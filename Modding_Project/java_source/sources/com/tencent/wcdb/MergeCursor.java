package com.tencent.wcdb;

import android.database.ContentObserver;
import android.database.DataSetObserver;
/* loaded from: classes7.dex */
public class MergeCursor extends AbstractCursor {
    private Cursor mCursor;
    private Cursor[] mCursors;
    private DataSetObserver mObserver = new DataSetObserver() { // from class: com.tencent.wcdb.MergeCursor.1
        @Override // android.database.DataSetObserver
        public void onChanged() {
            MergeCursor.this.mPos = -1;
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MergeCursor.this.mPos = -1;
        }
    };

    public MergeCursor(Cursor[] cursorArr) {
        this.mCursors = cursorArr;
        int i10 = 0;
        this.mCursor = cursorArr[0];
        while (true) {
            Cursor[] cursorArr2 = this.mCursors;
            if (i10 < cursorArr2.length) {
                Cursor cursor = cursorArr2[i10];
                if (cursor != null) {
                    cursor.registerDataSetObserver(this.mObserver);
                }
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null) {
                cursor.close();
            }
        }
        super.close();
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void deactivate() {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null) {
                cursor.deactivate();
            }
        }
        super.deactivate();
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public byte[] getBlob(int i10) {
        return this.mCursor.getBlob(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String[] getColumnNames() {
        Cursor cursor = this.mCursor;
        if (cursor != null) {
            return cursor.getColumnNames();
        }
        return new String[0];
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getCount() {
        int length = this.mCursors.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            Cursor cursor = this.mCursors[i11];
            if (cursor != null) {
                i10 += cursor.getCount();
            }
        }
        return i10;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public double getDouble(int i10) {
        return this.mCursor.getDouble(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public float getFloat(int i10) {
        return this.mCursor.getFloat(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getInt(int i10) {
        return this.mCursor.getInt(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public long getLong(int i10) {
        return this.mCursor.getLong(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public short getShort(int i10) {
        return this.mCursor.getShort(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public String getString(int i10) {
        return this.mCursor.getString(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public int getType(int i10) {
        return this.mCursor.getType(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean isNull(int i10) {
        return this.mCursor.isNull(i10);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.CrossProcessCursor
    public boolean onMove(int i10, int i11) {
        this.mCursor = null;
        int length = this.mCursors.length;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i12 >= length) {
                break;
            }
            Cursor cursor = this.mCursors[i12];
            if (cursor != null) {
                if (i11 < cursor.getCount() + i13) {
                    this.mCursor = this.mCursors[i12];
                    break;
                }
                i13 += this.mCursors[i12].getCount();
            }
            i12++;
        }
        Cursor cursor2 = this.mCursor;
        if (cursor2 == null) {
            return false;
        }
        return cursor2.moveToPosition(i11 - i13);
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null) {
                cursor.registerContentObserver(contentObserver);
            }
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean requery() {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null && !cursor.requery()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null) {
                cursor.unregisterContentObserver(contentObserver);
            }
        }
    }

    @Override // com.tencent.wcdb.AbstractCursor, com.tencent.wcdb.Cursor, android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        int length = this.mCursors.length;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor = this.mCursors[i10];
            if (cursor != null) {
                cursor.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }
}
