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
public final class S {

    /* renamed from: b  reason: collision with root package name */
    public static final a f54002b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteOpenHelper f54003a;

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
        final /* synthetic */ SQLiteDatabase f54004a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ContentValues f54005b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            super(1);
            this.f54004a = sQLiteDatabase;
            this.f54005b = contentValues;
        }

        public final void a(List list) {
            String str;
            SQLiteDatabase sQLiteDatabase = this.f54004a;
            ContentValues contentValues = this.f54005b;
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
                    arrayList.add(((T) it.next()).c());
                }
                strArr = AbstractC3322q.a(arrayList);
            }
            sQLiteDatabase.update("monitor_record", contentValues, str, strArr);
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
        final /* synthetic */ SQLiteDatabase f54006a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(SQLiteDatabase sQLiteDatabase) {
            super(1);
            this.f54006a = sQLiteDatabase;
        }

        public final void a(List list) {
            String str;
            SQLiteDatabase sQLiteDatabase = this.f54006a;
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
                    arrayList.add(((T) it.next()).c());
                }
                strArr = AbstractC3322q.a(arrayList);
            }
            sQLiteDatabase.delete("monitor_record", str, strArr);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.f60915a;
        }
    }

    public S(SQLiteOpenHelper sQLiteOpenHelper) {
        this.f54003a = sQLiteOpenHelper;
    }

    public final Object a(T t10) {
        Object d10;
        synchronized (this.f54003a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54003a.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", t10.c());
                contentValues.put("name", t10.d());
                contentValues.put("timestamp", Long.valueOf(t10.f()));
                contentValues.put("session_id", t10.e());
                contentValues.put("data", s0.b(t10.a(), t10.c()));
                contentValues.put("error", s0.b(t10.b(), t10.c()));
                writableDatabase.insert("monitor_record", null, contentValues);
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

    public final Object b(List list) {
        return a(false, list);
    }

    public final Object c(List list) {
        return a(true, list);
    }

    public final Object a(String str, String str2) {
        return a(str, str2, (Integer) null);
    }

    public final Object a(String str, String str2, Integer num) {
        return a("name = ? AND session_id = ? AND is_reserved = 0", new String[]{str, str2}, num != null ? num.toString() : null);
    }

    private final Object a(String str, String[] strArr, String str2) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f54003a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase readableDatabase = this.f54003a.getReadableDatabase();
                Cursor query = readableDatabase.query("monitor_record", new String[]{"id", "name", "timestamp", "session_id", "data", "error"}, str, strArr, null, null, "timestamp DESC", str2);
                while (query.moveToNext()) {
                    try {
                        Result.a aVar2 = Result.f60901b;
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        long j10 = query.getLong(2);
                        Result.d(Boolean.valueOf(arrayList.add(new T(string, string2, query.getString(3), j10, s0.a(query.getBlob(4), string), s0.a(query.getBlob(5), string)))));
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

    public final Object a() {
        return a(false, (List) null);
    }

    private final Object a(boolean z10, List list) {
        Object d10;
        synchronized (this.f54003a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54003a.getWritableDatabase();
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
        synchronized (this.f54003a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54003a.getWritableDatabase();
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
        synchronized (this.f54003a) {
            try {
                Result.a aVar = Result.f60901b;
                SQLiteDatabase writableDatabase = this.f54003a.getWritableDatabase();
                writableDatabase.delete("monitor_record", "session_id != ? OR " + AbstractC3322q.a(list, "name NOT IN"), AbstractC3322q.a(CollectionsKt.K0(CollectionsKt.e(str), list)));
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
}
