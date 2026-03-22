package com.tencent.wcdb;

import com.tencent.wcdb.database.SQLiteDatabase;
/* loaded from: classes7.dex */
public interface DatabaseErrorHandler {
    void onCorruption(SQLiteDatabase sQLiteDatabase);
}
