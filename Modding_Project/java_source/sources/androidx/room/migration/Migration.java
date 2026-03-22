package androidx.room.migration;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Migration.android.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class Migration {
    public final int endVersion;
    public final int startVersion;

    public Migration(int i10, int i11) {
        this.startVersion = i10;
        this.endVersion = i11;
    }

    public void migrate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        throw new NotImplementedError("Migration functionality with a SupportSQLiteDatabase (without a provided SQLiteDriver) requires overriding the migrate(SupportSQLiteDatabase) function.");
    }

    public void migrate(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (connection instanceof SupportSQLiteConnection) {
            migrate(((SupportSQLiteConnection) connection).getDb());
            return;
        }
        throw new NotImplementedError("Migration functionality with a provided SQLiteDriver requires overriding the migrate(SQLiteConnection) function.");
    }
}
