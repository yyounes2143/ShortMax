package com.tencent.wcdb.database;

import com.tencent.wcdb.database.SQLiteDatabase;
/* loaded from: classes7.dex */
public final class SQLiteCustomFunction {
    public final SQLiteDatabase.CustomFunction callback;
    public final String name;
    public final int numArgs;

    public SQLiteCustomFunction(String str, int i10, SQLiteDatabase.CustomFunction customFunction) {
        if (str != null) {
            this.name = str;
            this.numArgs = i10;
            this.callback = customFunction;
            return;
        }
        throw new IllegalArgumentException("name must not be null.");
    }

    private void dispatchCallback(String[] strArr) {
        this.callback.callback(strArr);
    }
}
