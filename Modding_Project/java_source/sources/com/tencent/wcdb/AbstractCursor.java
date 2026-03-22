package com.tencent.wcdb;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObservable;
import android.database.ContentObserver;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.wcdb.support.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public abstract class AbstractCursor implements CrossProcessCursor {
    private static final String TAG = "Cursor";
    protected boolean mClosed;
    protected ContentResolver mContentResolver;
    private Uri mNotifyUri;
    private ContentObserver mSelfObserver;
    private boolean mSelfObserverRegistered;
    private final Object mSelfObserverLock = new Object();
    private final DataSetObservable mDataSetObservable = new DataSetObservable();
    private final ContentObservable mContentObservable = new ContentObservable();
    private Bundle mExtras = Bundle.EMPTY;
    protected int mPos = -1;
    @Deprecated
    protected int mRowIdColumnIndex = -1;
    @Deprecated
    protected Long mCurrentRowID = null;
    @Deprecated
    protected HashMap<Long, Map<String, Object>> mUpdatedRows = new HashMap<>();

    /* loaded from: classes7.dex */
    protected static class SelfContentObserver extends ContentObserver {
        WeakReference<AbstractCursor> mCursor;

        public SelfContentObserver(AbstractCursor abstractCursor) {
            super(null);
            this.mCursor = new WeakReference<>(abstractCursor);
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return false;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            AbstractCursor abstractCursor = this.mCursor.get();
            if (abstractCursor != null) {
                abstractCursor.onChange(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkPosition() {
        if (-1 != this.mPos && getCount() != this.mPos) {
            return;
        }
        throw new CursorIndexOutOfBoundsException(this.mPos, getCount());
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.mClosed = true;
        this.mContentObservable.unregisterAll();
        onDeactivateOrClose();
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
        String string = getString(i10);
        if (string != null) {
            char[] cArr = charArrayBuffer.data;
            if (cArr != null && cArr.length >= string.length()) {
                string.getChars(0, string.length(), cArr, 0);
            } else {
                charArrayBuffer.data = string.toCharArray();
            }
            charArrayBuffer.sizeCopied = string.length();
            return;
        }
        charArrayBuffer.sizeCopied = 0;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void deactivate() {
        onDeactivateOrClose();
    }

    @Override // com.tencent.wcdb.CrossProcessCursor
    public void fillWindow(int i10, CursorWindow cursorWindow) {
        DatabaseUtils.cursorFillWindow(this, i10, cursorWindow);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finalize() {
        ContentObserver contentObserver = this.mSelfObserver;
        if (contentObserver != null && this.mSelfObserverRegistered) {
            this.mContentResolver.unregisterContentObserver(contentObserver);
        }
        try {
            if (!this.mClosed) {
                close();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public byte[] getBlob(int i10) {
        throw new UnsupportedOperationException("getBlob is not supported");
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public int getColumnCount() {
        return getColumnNames().length;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public int getColumnIndex(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            Exception exc = new Exception();
            Log.e(TAG, "requesting column name with table name -- " + str, exc);
            str = str.substring(lastIndexOf + 1);
        }
        String[] columnNames = getColumnNames();
        int length = columnNames.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (columnNames[i10].equalsIgnoreCase(str)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        int columnIndex = getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        throw new IllegalArgumentException("column '" + str + "' does not exist");
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public String getColumnName(int i10) {
        return getColumnNames()[i10];
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract String[] getColumnNames();

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract int getCount();

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract double getDouble(int i10);

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract float getFloat(int i10);

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract int getInt(int i10);

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract long getLong(int i10);

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return this.mNotifyUri;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final int getPosition() {
        return this.mPos;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract short getShort(int i10);

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract String getString(int i10);

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public int getType(int i10) {
        return 3;
    }

    @Deprecated
    protected Object getUpdatedField(int i10) {
        return null;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        return false;
    }

    @Override // com.tencent.wcdb.CrossProcessCursor
    public CursorWindow getWindow() {
        return null;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean isAfterLast() {
        if (getCount() == 0 || this.mPos == getCount()) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean isBeforeFirst() {
        if (getCount() == 0 || this.mPos == -1) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean isClosed() {
        return this.mClosed;
    }

    @Deprecated
    protected boolean isFieldUpdated(int i10) {
        return false;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean isFirst() {
        if (this.mPos == 0 && getCount() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean isLast() {
        int count = getCount();
        if (this.mPos == count - 1 && count != 0) {
            return true;
        }
        return false;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public abstract boolean isNull(int i10);

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean move(int i10) {
        return moveToPosition(this.mPos + i10);
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean moveToFirst() {
        return moveToPosition(0);
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean moveToLast() {
        return moveToPosition(getCount() - 1);
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean moveToNext() {
        return moveToPosition(this.mPos + 1);
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean moveToPosition(int i10) {
        int count = getCount();
        if (i10 >= count) {
            this.mPos = count;
            return false;
        } else if (i10 < 0) {
            this.mPos = -1;
            return false;
        } else {
            int i11 = this.mPos;
            if (i10 == i11) {
                return true;
            }
            boolean onMove = onMove(i11, i10);
            if (!onMove) {
                this.mPos = -1;
            } else {
                this.mPos = i10;
                int i12 = this.mRowIdColumnIndex;
                if (i12 != -1) {
                    this.mCurrentRowID = Long.valueOf(getLong(i12));
                }
            }
            return onMove;
        }
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public final boolean moveToPrevious() {
        return moveToPosition(this.mPos - 1);
    }

    protected void onChange(boolean z10) {
        synchronized (this.mSelfObserverLock) {
            try {
                this.mContentObservable.dispatchChange(z10);
                Uri uri = this.mNotifyUri;
                if (uri != null && z10) {
                    this.mContentResolver.notifyChange(uri, this.mSelfObserver);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDeactivateOrClose() {
        ContentObserver contentObserver = this.mSelfObserver;
        if (contentObserver != null) {
            this.mContentResolver.unregisterContentObserver(contentObserver);
            this.mSelfObserverRegistered = false;
        }
        this.mDataSetObservable.notifyInvalidated();
    }

    @Override // com.tencent.wcdb.CrossProcessCursor
    public boolean onMove(int i10, int i11) {
        return true;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        this.mContentObservable.registerObserver(contentObserver);
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObservable.registerObserver(dataSetObserver);
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public boolean requery() {
        ContentObserver contentObserver = this.mSelfObserver;
        if (contentObserver != null && !this.mSelfObserverRegistered) {
            this.mContentResolver.registerContentObserver(this.mNotifyUri, true, contentObserver);
            this.mSelfObserverRegistered = true;
        }
        this.mDataSetObservable.notifyChanged();
        return true;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public Bundle respond(Bundle bundle) {
        return Bundle.EMPTY;
    }

    @Override // android.database.Cursor
    public void setExtras(Bundle bundle) {
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        this.mExtras = bundle;
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        synchronized (this.mSelfObserverLock) {
            try {
                this.mNotifyUri = uri;
                this.mContentResolver = contentResolver;
                ContentObserver contentObserver = this.mSelfObserver;
                if (contentObserver != null) {
                    contentResolver.unregisterContentObserver(contentObserver);
                }
                SelfContentObserver selfContentObserver = new SelfContentObserver(this);
                this.mSelfObserver = selfContentObserver;
                this.mContentResolver.registerContentObserver(this.mNotifyUri, true, selfContentObserver);
                this.mSelfObserverRegistered = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        if (!this.mClosed) {
            this.mContentObservable.unregisterObserver(contentObserver);
        }
    }

    @Override // com.tencent.wcdb.Cursor, android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.mDataSetObservable.unregisterObserver(dataSetObserver);
    }
}
