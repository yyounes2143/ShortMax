package io.bidmachine.analytics.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: io.bidmachine.analytics.internal.c  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3308c extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final a f54062a = new a(null);

    /* renamed from: io.bidmachine.analytics.internal.c$a */
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public C3308c(Context context) {
        super(context, "BMAnalytics.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    private final Object a(SQLiteDatabase sQLiteDatabase) {
        try {
            Result.a aVar = Result.f60901b;
            Cursor query = sQLiteDatabase.query("sqlite_master", new String[]{"name"}, "type = ?", new String[]{"table"}, null, null, null);
            while (query.moveToNext()) {
                try {
                    Result.a aVar2 = Result.f60901b;
                    String string = query.getString(0);
                    if (!Intrinsics.areEqual(string, "android_metadata") && !Intrinsics.areEqual(string, "sqlite_master")) {
                        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + string);
                    }
                    Result.d(Unit.f60915a);
                } catch (Throwable th2) {
                    Result.a aVar3 = Result.f60901b;
                    Result.d(kotlin.f.a(th2));
                }
            }
            Unit unit = Unit.f60915a;
            ws.b.a(query, null);
            return Result.d(unit);
        } catch (Throwable th3) {
            Result.a aVar4 = Result.f60901b;
            return Result.d(kotlin.f.a(th3));
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE monitor_record (id TEXT,name TEXT,timestamp INTEGER,session_id TEXT,data BLOB,error BLOB,is_reserved INTEGER DEFAULT 0)");
        sQLiteDatabase.execSQL("CREATE TABLE reader_record (id TEXT,name TEXT,timestamp INTEGER,data_hash TEXT,rule TEXT,error BLOB,is_dirty INTEGER,is_reserved INTEGER DEFAULT 0)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        onUpgrade(sQLiteDatabase, i10, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        a(sQLiteDatabase);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS monitor_record");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS reader_record");
        onCreate(sQLiteDatabase);
    }
}
