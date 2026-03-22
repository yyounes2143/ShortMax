package androidx.sqlite;

import android.database.SQLException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ys.a;
/* compiled from: SQLite.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSQLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLite.kt\nandroidx/sqlite/SQLite\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"})
/* loaded from: classes2.dex */
public final class SQLite {
    public static final int SQLITE_DATA_BLOB = 4;
    public static final int SQLITE_DATA_FLOAT = 2;
    public static final int SQLITE_DATA_INTEGER = 1;
    public static final int SQLITE_DATA_NULL = 5;
    public static final int SQLITE_DATA_TEXT = 3;

    public static final void execSQL(@NotNull SQLiteConnection sQLiteConnection, @NotNull String sql) {
        Intrinsics.checkNotNullParameter(sQLiteConnection, "<this>");
        Intrinsics.checkNotNullParameter(sql, "sql");
        SQLiteStatement prepare = sQLiteConnection.prepare(sql);
        try {
            prepare.step();
            a.a(prepare, null);
        } finally {
        }
    }

    @NotNull
    public static final Void throwSQLiteException(int i10, @Nullable String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Error code: " + i10);
        if (str != null) {
            sb2.append(", message: " + str);
        }
        throw new SQLException(sb2.toString());
    }
}
