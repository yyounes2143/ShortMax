package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import ys.a;
/* compiled from: ConnectionUtil.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SQLiteConnectionUtil {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final long getLastInsertedRowId(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (getTotalChangedRows(connection) == 0) {
            return -1L;
        }
        SQLiteStatement prepare = connection.prepare("SELECT last_insert_rowid()");
        try {
            prepare.step();
            long j10 = prepare.getLong(0);
            a.a(prepare, null);
            return j10;
        } finally {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int getTotalChangedRows(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        SQLiteStatement prepare = connection.prepare("SELECT changes()");
        try {
            prepare.step();
            int i10 = (int) prepare.getLong(0);
            a.a(prepare, null);
            return i10;
        } finally {
        }
    }
}
