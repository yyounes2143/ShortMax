package com.tencent.wcdb.database;

import android.content.Context;
import com.tencent.wcdb.DatabaseErrorHandler;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.support.Log;
/* loaded from: classes7.dex */
public abstract class SQLiteOpenHelper {
    private static final boolean DEBUG_STRICT_READONLY = false;
    private static final String TAG = "WCDB.SQLiteOpenHelper";
    private SQLiteCipherSpec mCipher;
    private final Context mContext;
    private SQLiteDatabase mDatabase;
    private boolean mEnableWriteAheadLogging;
    private final DatabaseErrorHandler mErrorHandler;
    private final SQLiteDatabase.CursorFactory mFactory;
    private boolean mForcedSingleConnection;
    private boolean mIsInitializing;
    private int mMode;
    private final String mName;
    private boolean mNeedMode;
    private final int mNewVersion;
    private byte[] mPassword;

    static {
        SQLiteGlobal.loadLib();
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        this(context, str, cursorFactory, i10, null);
    }

    private SQLiteDatabase getDatabaseLocked(boolean z10) {
        int i10;
        SQLiteDatabase sQLiteDatabase = this.mDatabase;
        if (sQLiteDatabase != null) {
            if (!sQLiteDatabase.isOpen()) {
                this.mDatabase = null;
            } else if (!z10 || !this.mDatabase.isReadOnly()) {
                return this.mDatabase;
            }
        }
        if (!this.mIsInitializing) {
            SQLiteDatabase sQLiteDatabase2 = this.mDatabase;
            try {
                this.mIsInitializing = true;
                if (sQLiteDatabase2 != null) {
                    if (z10 && sQLiteDatabase2.isReadOnly()) {
                        sQLiteDatabase2.reopenReadWrite();
                    }
                } else {
                    String str = this.mName;
                    if (str == null) {
                        sQLiteDatabase2 = SQLiteDatabase.create(null);
                    } else {
                        boolean z11 = this.mForcedSingleConnection;
                        try {
                            this.mNeedMode = true;
                            if (this.mEnableWriteAheadLogging) {
                                i10 = 8;
                            } else {
                                i10 = 0;
                            }
                            this.mMode = i10;
                            sQLiteDatabase2 = com.tencent.wcdb.support.Context.openOrCreateDatabase(this.mContext, str, this.mPassword, this.mCipher, i10, this.mFactory, this.mErrorHandler, z11 ? 1 : 0);
                        } catch (SQLiteException e10) {
                            if (!z10) {
                                Log.e(TAG, "Couldn't open " + this.mName + " for writing (will try read-only):", e10);
                                sQLiteDatabase2 = SQLiteDatabase.openDatabase(this.mContext.getDatabasePath(this.mName).getPath(), this.mPassword, this.mCipher, this.mFactory, 1, this.mErrorHandler);
                            } else {
                                throw e10;
                            }
                        }
                    }
                }
                SQLiteDatabase databaseLockedLast = getDatabaseLockedLast(sQLiteDatabase2);
                this.mIsInitializing = false;
                if (sQLiteDatabase2 != null && sQLiteDatabase2 != this.mDatabase) {
                    sQLiteDatabase2.close();
                }
                return databaseLockedLast;
            } catch (Throwable th2) {
                this.mIsInitializing = false;
                if (sQLiteDatabase2 != null && sQLiteDatabase2 != this.mDatabase) {
                    sQLiteDatabase2.close();
                }
                throw th2;
            }
        }
        throw new IllegalStateException("getDatabase called recursively");
    }

    private SQLiteDatabase getDatabaseLockedLast(SQLiteDatabase sQLiteDatabase) {
        onConfigure(sQLiteDatabase);
        int version = sQLiteDatabase.getVersion();
        if (version != this.mNewVersion) {
            if (!sQLiteDatabase.isReadOnly()) {
                sQLiteDatabase.beginTransaction();
                try {
                    if (version == 0) {
                        onCreate(sQLiteDatabase);
                    } else {
                        int i10 = this.mNewVersion;
                        if (version > i10) {
                            onDowngrade(sQLiteDatabase, version, i10);
                        } else {
                            onUpgrade(sQLiteDatabase, version, i10);
                        }
                    }
                    sQLiteDatabase.setVersion(this.mNewVersion);
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th2) {
                    sQLiteDatabase.endTransaction();
                    throw th2;
                }
            } else {
                throw new SQLiteException("Can't upgrade read-only database from version " + sQLiteDatabase.getVersion() + " to " + this.mNewVersion + ": " + this.mName);
            }
        }
        onOpen(sQLiteDatabase);
        if (sQLiteDatabase.isReadOnly()) {
            Log.w(TAG, "Opened " + this.mName + " in read-only mode");
        }
        this.mDatabase = sQLiteDatabase;
        return sQLiteDatabase;
    }

    public synchronized void close() {
        if (!this.mIsInitializing) {
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                this.mDatabase.close();
                this.mDatabase = null;
            }
        } else {
            throw new IllegalStateException("Closed during initialization");
        }
    }

    public String getDatabaseName() {
        return this.mName;
    }

    public SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked(false);
        }
        return databaseLocked;
    }

    public SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase databaseLocked;
        synchronized (this) {
            databaseLocked = getDatabaseLocked(true);
        }
        return databaseLocked;
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase);

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        throw new SQLiteException("Can't downgrade database from version " + i10 + " to " + i11);
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11);

    public void setForcedSingleConnection(boolean z10) {
        synchronized (this) {
            this.mForcedSingleConnection = z10;
        }
    }

    public void setWriteAheadLoggingEnabled(boolean z10) {
        synchronized (this) {
            try {
                if (this.mEnableWriteAheadLogging != z10) {
                    SQLiteDatabase sQLiteDatabase = this.mDatabase;
                    if (sQLiteDatabase != null && sQLiteDatabase.isOpen() && !this.mDatabase.isReadOnly()) {
                        if (z10) {
                            this.mDatabase.enableWriteAheadLogging();
                        } else {
                            this.mDatabase.disableWriteAheadLogging();
                        }
                    }
                    this.mEnableWriteAheadLogging = z10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public SQLiteOpenHelper(Context context, String str, byte[] bArr, SQLiteCipherSpec sQLiteCipherSpec, SQLiteDatabase.CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler) {
        if (i10 >= 1) {
            this.mContext = context;
            this.mName = str;
            this.mFactory = cursorFactory;
            this.mNewVersion = i10;
            this.mErrorHandler = databaseErrorHandler;
            this.mPassword = bArr;
            this.mCipher = sQLiteCipherSpec == null ? null : new SQLiteCipherSpec(sQLiteCipherSpec);
            this.mNeedMode = false;
            return;
        }
        throw new IllegalArgumentException("Version must be >= 1, was " + i10);
    }

    public SQLiteOpenHelper(Context context, String str, byte[] bArr, SQLiteDatabase.CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler) {
        this(context, str, bArr, null, cursorFactory, i10, databaseErrorHandler);
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10, DatabaseErrorHandler databaseErrorHandler) {
        this(context, str, null, null, cursorFactory, i10, databaseErrorHandler);
    }

    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
    }
}
