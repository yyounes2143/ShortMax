package com.inmobi.media;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class A3 {

    /* renamed from: b  reason: collision with root package name */
    public static final SQLiteDatabase f23454b;

    /* renamed from: a  reason: collision with root package name */
    public static final A3 f23453a = new A3();

    /* renamed from: c  reason: collision with root package name */
    public static final Object f23455c = new Object();

    static {
        try {
            f23454b = new C3267z3(Uc.d()).getWritableDatabase();
        } catch (Exception unused) {
        }
    }

    public static final int a(@NotNull String tableName, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f23455c) {
            long a10 = a(tableName, contentValues);
            if (a10 == -1) {
                return b(tableName, contentValues, str, strArr);
            }
            return (int) a10;
        }
    }

    public static final int b(@NotNull String tableName, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        int i10;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f23455c) {
            try {
                SQLiteDatabase sQLiteDatabase = f23454b;
                if (sQLiteDatabase != null) {
                    i10 = sQLiteDatabase.updateWithOnConflict(tableName, contentValues, str, strArr, 4);
                } else {
                    Intrinsics.checkNotNullExpressionValue("A3", "TAG");
                    i10 = -1;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    public static final long a(@NotNull String tableName, @Nullable ContentValues contentValues) {
        long j10;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f23455c) {
            try {
                SQLiteDatabase sQLiteDatabase = f23454b;
                if (sQLiteDatabase != null) {
                    j10 = sQLiteDatabase.insertWithOnConflict(tableName, null, contentValues, 4);
                } else {
                    Intrinsics.checkNotNullExpressionValue("A3", "TAG");
                    j10 = -1;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    @NotNull
    public static final List<ContentValues> b(@NotNull String tableName, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        Cursor query;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f23455c) {
            try {
                SQLiteDatabase sQLiteDatabase = f23454b;
                query = sQLiteDatabase != null ? sQLiteDatabase.query(tableName, strArr, str, strArr2, str2, str3, str4, str5) : null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                if (query.moveToFirst()) {
                    do {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(query, contentValues);
                        arrayList.add(contentValues);
                    } while (query.moveToNext());
                    ws.b.a(query, null);
                    return arrayList;
                }
                ws.b.a(query, null);
                return arrayList;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    ws.b.a(query, th3);
                    throw th4;
                }
            }
        }
        return CollectionsKt.n();
    }

    public static final int a(@NotNull String tableName, @Nullable String str, @Nullable String[] strArr) {
        int i10;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f23455c) {
            try {
                SQLiteDatabase sQLiteDatabase = f23454b;
                if (sQLiteDatabase != null) {
                    i10 = sQLiteDatabase.delete(tableName, str, strArr);
                } else {
                    Intrinsics.checkNotNullExpressionValue("A3", "TAG");
                    i10 = 0;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    public static final void a(@NotNull String tableName) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        String str = "DROP TABLE IF EXISTS \"" + tableName + '\"';
        synchronized (f23455c) {
            SQLiteDatabase sQLiteDatabase = f23454b;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.execSQL(str);
                Unit unit = Unit.f60915a;
            }
        }
    }

    public final void a(@NotNull String tableName, @NotNull String tableSchema) {
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
        String str = "CREATE TABLE IF NOT EXISTS " + tableName + tableSchema + ';';
        synchronized (f23455c) {
            SQLiteDatabase sQLiteDatabase = f23454b;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.execSQL(str);
                Unit unit = Unit.f60915a;
            }
        }
    }

    public static final int a(@NotNull String tableName, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        Cursor query;
        int columnIndex;
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        synchronized (f23455c) {
            try {
                SQLiteDatabase sQLiteDatabase = f23454b;
                query = sQLiteDatabase != null ? sQLiteDatabase.query(tableName, new String[]{"COUNT(*) AS count"}, str, strArr2, str2, str3, str4, str5) : null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int i10 = 0;
        if (query != null) {
            try {
                if (query.moveToFirst() && (columnIndex = query.getColumnIndex(MetricsSQLiteCacheKt.METRICS_COUNT)) >= 0) {
                    i10 = query.getInt(columnIndex);
                }
                ws.b.a(query, null);
            } catch (Exception unused) {
            }
        }
        return i10;
    }
}
