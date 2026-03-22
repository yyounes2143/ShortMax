package com.ss.ttvideoengine.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes6.dex */
public class DBHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "fangqing.db";
    private static final int DATABASE_VERSION = 1;
    private static DBHelper mInstance;

    private DBHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static DBHelper getInstance(Context context) {
        if (mInstance == null) {
            synchronized (DBHelper.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new DBHelper(context);
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
