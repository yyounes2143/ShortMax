package com.bytedance.applog.aggregation;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MetricsSQLiteCache.kt */
@Metadata
/* loaded from: classes3.dex */
public final class MetricsSQLiteOpenHelper extends SQLiteOpenHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricsSQLiteOpenHelper(@NotNull Context context, @NotNull String name) {
        super(context, name, (SQLiteDatabase.CursorFactory) null, 1);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(name, "name");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(@NotNull SQLiteDatabase db2) {
        Intrinsics.checkParameterIsNotNull(db2, "db");
        db2.execSQL("CREATE TABLE IF NOT EXISTS metrics (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, group_id TEXT NOT NULL, agg_types INTEGER NOT NULL, start_time INTEGER NOT NULL, end_time INTEGER NOT NULL, interval TEXT, params TEXT, count INTEGER NOT NULL, sum REAL NOT NULL, value_array TEXT);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(@NotNull SQLiteDatabase db2, int i10, int i11) {
        Intrinsics.checkParameterIsNotNull(db2, "db");
        db2.execSQL("DROP TABLE IF EXISTS metrics");
        onCreate(db2);
    }
}
