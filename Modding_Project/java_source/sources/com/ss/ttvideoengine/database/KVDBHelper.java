package com.ss.ttvideoengine.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes6.dex */
public class KVDBHelper extends SQLiteOpenHelper {
    private static final String TAG = "KVDBHelper";
    private static Integer Version = 1;

    public KVDBHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        super(context, str, cursorFactory, i10);
    }

    public KVDBHelper(Context context, String str, int i10) {
        this(context, str, null, i10);
    }

    public KVDBHelper(Context context, String str) {
        this(context, str, Version.intValue());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
