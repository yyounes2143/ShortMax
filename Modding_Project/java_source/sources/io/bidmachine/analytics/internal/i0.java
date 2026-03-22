package io.bidmachine.analytics.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes7.dex */
public final class i0 {

    /* renamed from: b  reason: collision with root package name */
    public static final a f54129b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteOpenHelper f54130a;

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b extends Lambda implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SQLiteDatabase f54131a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContentValues f54132b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            super(1);
            this.f54131a = sQLiteDatabase;
            this.f54132b = contentValues;
        }

        public final void a(List list) {
            String str;
            SQLiteDatabase sQLiteDatabase = this.f54131a;
            ContentValues contentValues = this.f54132b;
            String[] strArr = null;
            if (list != null) {
                str = AbstractC3322q.a(list, "id IN");
            } else {
                str = null;
            }
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((j0) it.next()).c());
                }
                strArr = AbstractC3322q.a(arrayList);
            }
            sQLiteDatabase.update("reader_record", contentValues, str, strArr);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.f60915a;
        }
    }

    /* loaded from: classes7.dex */
    static final class c extends Lambda implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SQLiteDatabase f54133a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(SQLiteDatabase sQLiteDatabase) {
            super(1);
            this.f54133a = sQLiteDatabase;
        }

        public final void a(List list) {
            String str;
            SQLiteDatabase sQLiteDatabase = this.f54133a;
            String[] strArr = null;
            if (list != null) {
                str = AbstractC3322q.a(list, "id IN");
            } else {
                str = null;
            }
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((j0) it.next()).c());
                }
                strArr = AbstractC3322q.a(arrayList);
            }
            sQLiteDatabase.delete("reader_record", str, strArr);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.f60915a;
        }
    }

    public i0(SQLiteOpenHelper sQLiteOpenHelper) {
        this.f54130a = sQLiteOpenHelper;
    }

    public final Object a(j0 j0Var) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                writableDatabase.insert("reader_record", null, b(j0Var));
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    public final Object b() {
        return a(false, (List) null);
    }

    public final Object c(j0 j0Var) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                writableDatabase.update("reader_record", b(j0Var), "id = ?", new String[]{j0Var.c()});
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    public final Object d(List list) {
        return a(false, list);
    }

    public final Object e(List list) {
        return a(true, list);
    }

    public final Object b(List list) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                writableDatabase.delete("reader_record", AbstractC3322q.a(list, "name NOT IN"), AbstractC3322q.a(list));
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    public final Object a(String str, String str2) {
        Object a10 = a(this, "name = ? AND rule = ? AND " + a(), new String[]{str, s0.c(str2)}, null, 4, null);
        if (Result.i(a10)) {
            Throwable g10 = Result.g(a10);
            if (g10 == null) {
                g10 = new Exception();
            }
            return Result.d(kotlin.f.a(g10));
        }
        if (Result.i(a10)) {
            a10 = null;
        }
        List list = (List) a10;
        return Result.d(list != null ? (j0) CollectionsKt.firstOrNull(list) : null);
    }

    public final Object c(List list) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(s0.c((String) it.next()));
                }
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                writableDatabase.delete("reader_record", AbstractC3322q.a(arrayList, "rule NOT IN"), AbstractC3322q.a(arrayList));
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    private final ContentValues b(j0 j0Var) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", j0Var.c());
        contentValues.put("name", j0Var.d());
        contentValues.put("timestamp", Long.valueOf(j0Var.f()));
        contentValues.put("data_hash", j0Var.a());
        contentValues.put("rule", s0.c(j0Var.e()));
        contentValues.put("error", s0.b(j0Var.b(), j0Var.c()));
        contentValues.put("is_dirty", Boolean.valueOf(j0Var.g()));
        return contentValues;
    }

    public final Object a(String str) {
        return a(this, "name = ? AND is_reserved = 0 AND is_dirty = 1", new String[]{str}, null, 4, null);
    }

    static /* synthetic */ Object a(i0 i0Var, String str, String[] strArr, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            strArr = null;
        }
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        return i0Var.a(str, strArr, str2);
    }

    private final Object a(String str, String[] strArr, String str2) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase readableDatabase = this.f54130a.getReadableDatabase();
                Cursor query = readableDatabase.query("reader_record", new String[]{"id", "name", "timestamp", "data_hash", "rule", "error", "is_dirty"}, str, strArr, null, null, "timestamp DESC", str2);
                while (query.moveToNext()) {
                    try {
                        Result.a aVar2 = Result.f60901b;
                        String string = query.getString(0);
                        Result.d(Boolean.valueOf(arrayList.add(new j0(string, query.getString(1), query.getLong(2), query.getString(3), s0.a(query.getString(4)), s0.a(query.getBlob(5), string), query.getInt(6) == 1))));
                    } finally {
                    }
                }
                Unit unit = Unit.f60915a;
                ws.b.a(query, null);
                ws.b.a(readableDatabase, null);
                Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar3 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
        return Result.d(arrayList);
    }

    private final Object a(boolean z10, List list) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_reserved", Boolean.valueOf(z10));
                AbstractC3322q.a(list, writableDatabase, 0, new b(writableDatabase, contentValues), 2, null);
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    public final Object a(List list) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                AbstractC3322q.a(list, writableDatabase, 0, new c(writableDatabase), 2, null);
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    public final Object a(String str, List list) {
        Object d10;
        synchronized (this.f54130a) {
            try {
                Result.a aVar = Result.f60901b;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(s0.c((String) it.next()));
                }
                SQLiteDatabase writableDatabase = this.f54130a.getWritableDatabase();
                writableDatabase.delete("reader_record", "name = ? AND " + a() + " AND " + AbstractC3322q.a(arrayList, "rule IN"), AbstractC3322q.a(CollectionsKt.K0(CollectionsKt.e(str), arrayList)));
                Unit unit = Unit.f60915a;
                ws.b.a(writableDatabase, null);
                d10 = Result.d(unit);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
        }
        return d10;
    }

    private final String a() {
        return "(LENGTH(error) = 0 OR error IS NULL)";
    }
}
