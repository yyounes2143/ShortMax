package com.tencent.wcdb.database;

import com.tencent.wcdb.SQLException;
/* loaded from: classes7.dex */
public class SQLiteException extends SQLException {
    public SQLiteException() {
    }

    public SQLiteException(String str) {
        super(str);
    }

    public SQLiteException(String str, Throwable th2) {
        super(str, th2);
    }
}
