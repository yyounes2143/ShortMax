package com.bytedance.bdtracker;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.bdtracker.l0;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class y3 extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public final e0 f12531a;

    public y3(e0 e0Var, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        super(e0Var.b(), str, cursorFactory, i10);
        this.f12531a = e0Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.beginTransaction();
            for (u3 u3Var : u3.j().values()) {
                String a10 = u3Var.a();
                if (a10 != null) {
                    sQLiteDatabase.execSQL(a10);
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        onUpgrade(sQLiteDatabase, i10, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f12531a.f11955d.D.debug(5, "Database upgrade from:{} to:{}", Integer.valueOf(i10), Integer.valueOf(i11));
        try {
            sQLiteDatabase.beginTransaction();
            Iterator<u3> it = u3.j().values().iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next().f());
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            try {
                l0.b.a(sQLiteDatabase);
                onCreate(sQLiteDatabase);
            } catch (Throwable th2) {
            }
        }
        l0.b.a(sQLiteDatabase);
        onCreate(sQLiteDatabase);
    }
}
