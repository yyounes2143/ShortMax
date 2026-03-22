package androidx.room.migration;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AutoMigrationSpec.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface AutoMigrationSpec {
    default void onPostMigrate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
    }

    default void onPostMigrate(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (connection instanceof SupportSQLiteConnection) {
            onPostMigrate(((SupportSQLiteConnection) connection).getDb());
        }
    }
}
