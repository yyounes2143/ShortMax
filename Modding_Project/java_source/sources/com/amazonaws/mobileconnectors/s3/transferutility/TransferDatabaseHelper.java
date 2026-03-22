package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes2.dex */
class TransferDatabaseHelper extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5649a;

    /* renamed from: b  reason: collision with root package name */
    private int f5650b;

    public TransferDatabaseHelper(Context context) {
        this(context, 6);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        TransferTable.f(sQLiteDatabase, this.f5650b);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f5649a.deleteDatabase("awss3transfertable.db");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        TransferTable.g(sQLiteDatabase, i10, i11);
    }

    public TransferDatabaseHelper(Context context, int i10) {
        super(context, "awss3transfertable.db", (SQLiteDatabase.CursorFactory) null, i10);
        this.f5649a = context;
        this.f5650b = i10;
    }
}
