package androidx.sqlite.driver;

import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.tencent.wcdb.database.SQLiteDatabaseConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SupportSQLiteDriver.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SupportSQLiteDriver implements SQLiteDriver {
    @NotNull
    private final SupportSQLiteOpenHelper openHelper;

    public SupportSQLiteDriver(@NotNull SupportSQLiteOpenHelper openHelper) {
        Intrinsics.checkNotNullParameter(openHelper, "openHelper");
        this.openHelper = openHelper;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    @Override // androidx.sqlite.SQLiteDriver
    @NotNull
    public SupportSQLiteConnection open(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        String databaseName = this.openHelper.getDatabaseName();
        if (databaseName == null) {
            if (!Intrinsics.areEqual(fileName, SQLiteDatabaseConfiguration.MEMORY_DB_PATH)) {
                throw new IllegalArgumentException(("This driver is configured to open an in-memory database but a file-based named '" + fileName + "' was requested.").toString());
            }
        } else if (!Intrinsics.areEqual(databaseName, fileName) && !Intrinsics.areEqual(StringsKt.k1(databaseName, '/', null, 2, null), StringsKt.k1(fileName, '/', null, 2, null))) {
            throw new IllegalArgumentException(("This driver is configured to open a database named '" + this.openHelper.getDatabaseName() + "' but '" + fileName + "' was requested.").toString());
        }
        return new SupportSQLiteConnection(this.openHelper.getWritableDatabase());
    }

    public static /* synthetic */ void hasConnectionPool$annotations() {
    }
}
