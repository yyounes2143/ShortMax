package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FtsTableInfo.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class FtsTableInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public final Set<String> columns;
    @NotNull
    public final String name;
    @NotNull
    public final Set<String> options;

    /* compiled from: FtsTableInfo.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final FtsTableInfo read(@NotNull SupportSQLiteDatabase database, @NotNull String tableName) {
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return read(new SupportSQLiteConnection(database), tableName);
        }

        private Companion() {
        }

        @NotNull
        public final FtsTableInfo read(@NotNull SQLiteConnection connection, @NotNull String tableName) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return new FtsTableInfo(tableName, SchemaInfoUtilKt.readFtsColumns(connection, tableName), SchemaInfoUtilKt.readFtsOptions(connection, tableName));
        }
    }

    public FtsTableInfo(@NotNull String name, @NotNull Set<String> columns, @NotNull Set<String> options) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(options, "options");
        this.name = name;
        this.columns = columns;
        this.options = options;
    }

    @NotNull
    public static final FtsTableInfo read(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        return Companion.read(sQLiteConnection, str);
    }

    public boolean equals(@Nullable Object obj) {
        return FtsTableInfoKt.equalsCommon(this, obj);
    }

    public int hashCode() {
        return FtsTableInfoKt.hashCodeCommon(this);
    }

    @NotNull
    public String toString() {
        return FtsTableInfoKt.toStringCommon(this);
    }

    @NotNull
    public static final FtsTableInfo read(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str) {
        return Companion.read(supportSQLiteDatabase, str);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FtsTableInfo(@NotNull String name, @NotNull Set<String> columns, @NotNull String createSql) {
        this(name, columns, SchemaInfoUtilKt.parseFtsOptions(createSql));
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(createSql, "createSql");
    }
}
