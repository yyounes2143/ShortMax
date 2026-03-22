package com.tencent.wcdb.database;
/* loaded from: classes7.dex */
public interface SQLiteCheckpointListener {
    void onAttach(SQLiteDatabase sQLiteDatabase);

    void onDetach(SQLiteDatabase sQLiteDatabase);

    void onWALCommit(SQLiteDatabase sQLiteDatabase, String str, int i10);
}
