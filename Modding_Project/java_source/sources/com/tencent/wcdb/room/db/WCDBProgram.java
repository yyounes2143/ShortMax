package com.tencent.wcdb.room.db;

import androidx.sqlite.db.SupportSQLiteProgram;
import com.tencent.wcdb.database.SQLiteProgram;
import java.io.IOException;
/* loaded from: classes7.dex */
class WCDBProgram implements SupportSQLiteProgram {
    private final SQLiteProgram mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WCDBProgram(SQLiteProgram sQLiteProgram) {
        this.mDelegate = sQLiteProgram;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i10, byte[] bArr) {
        this.mDelegate.bindBlob(i10, bArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i10, double d10) {
        this.mDelegate.bindDouble(i10, d10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i10, long j10) {
        this.mDelegate.bindLong(i10, j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i10) {
        this.mDelegate.bindNull(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i10, String str) {
        this.mDelegate.bindString(i10, str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.mDelegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mDelegate.close();
    }
}
