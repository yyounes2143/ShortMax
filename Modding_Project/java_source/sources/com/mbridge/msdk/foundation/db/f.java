package com.mbridge.msdk.foundation.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: CommonAbsDBHelper.java */
/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private a f26782a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CommonAbsDBHelper.java */
    /* loaded from: classes5.dex */
    public class a extends SQLiteOpenHelper {
        public a(Context context, String str, int i10) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
            if (MBridgeConstans.DEBUG) {
                p0.a("DatabaseOpenHelper", "数据库： name :" + str + "  " + i10);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            if (MBridgeConstans.DEBUG) {
                p0.a("DatabaseOpenHelper", "数据库创建了");
            }
            f.this.a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            f.this.a(sQLiteDatabase, i10, i11);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (MBridgeConstans.DEBUG) {
                p0.a("DatabaseOpenHelper", "数据库升级了");
            }
            f.this.b(sQLiteDatabase, i10, i11);
        }
    }

    public f(Context context) {
        this.f26782a = new a(context, a(), b());
    }

    protected abstract String a();

    protected abstract void a(SQLiteDatabase sQLiteDatabase);

    protected abstract void a(SQLiteDatabase sQLiteDatabase, int i10, int i11);

    protected abstract int b();

    protected abstract void b(SQLiteDatabase sQLiteDatabase, int i10, int i11);

    public SQLiteDatabase c() {
        return this.f26782a.getReadableDatabase();
    }

    public synchronized SQLiteDatabase d() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f26782a.getWritableDatabase();
        } catch (Exception unused) {
            sQLiteDatabase = null;
        }
        return sQLiteDatabase;
    }
}
