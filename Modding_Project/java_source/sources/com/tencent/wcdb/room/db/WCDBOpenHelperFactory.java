package com.tencent.wcdb.room.db;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.tencent.wcdb.database.SQLiteCipherSpec;
/* loaded from: classes7.dex */
public class WCDBOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    private boolean mAsyncCheckpoint;
    private SQLiteCipherSpec mCipherSpec;
    private byte[] mPassphrase;
    private boolean mWALMode;

    public WCDBOpenHelperFactory asyncCheckpointEnabled(boolean z10) {
        this.mAsyncCheckpoint = z10;
        return this;
    }

    public WCDBOpenHelperFactory cipherSpec(SQLiteCipherSpec sQLiteCipherSpec) {
        this.mCipherSpec = sQLiteCipherSpec;
        return this;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        WCDBOpenHelper wCDBOpenHelper = new WCDBOpenHelper(configuration.context, configuration.name, this.mPassphrase, this.mCipherSpec, configuration.callback);
        wCDBOpenHelper.setWriteAheadLoggingEnabled(this.mWALMode);
        wCDBOpenHelper.setAsyncCheckpointEnabled(this.mAsyncCheckpoint);
        return wCDBOpenHelper;
    }

    public WCDBOpenHelperFactory passphrase(byte[] bArr) {
        this.mPassphrase = bArr;
        return this;
    }

    public WCDBOpenHelperFactory writeAheadLoggingEnabled(boolean z10) {
        this.mWALMode = z10;
        return this;
    }
}
