package com.tencent.wcdb.database;

import java.util.List;
/* loaded from: classes7.dex */
public interface SQLiteTrace {
    void onConnectionObtained(SQLiteDatabase sQLiteDatabase, String str, long j10, boolean z10);

    void onConnectionPoolBusy(SQLiteDatabase sQLiteDatabase, String str, List<String> list, String str2);

    void onDatabaseCorrupted(SQLiteDatabase sQLiteDatabase);

    void onSQLExecuted(SQLiteDatabase sQLiteDatabase, String str, int i10, long j10);
}
