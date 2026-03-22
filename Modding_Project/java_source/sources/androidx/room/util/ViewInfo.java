package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewInfo.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class ViewInfo {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public final String name;
    @Nullable
    public final String sql;

    /* compiled from: ViewInfo.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @c
        @NotNull
        public final ViewInfo read(@NotNull SupportSQLiteDatabase database, @NotNull String viewName) {
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(viewName, "viewName");
            return read(new SupportSQLiteConnection(database), viewName);
        }

        private Companion() {
        }

        @NotNull
        public final ViewInfo read(@NotNull SQLiteConnection connection, @NotNull String viewName) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(viewName, "viewName");
            return SchemaInfoUtilKt.readViewInfo(connection, viewName);
        }
    }

    public ViewInfo(@NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.sql = str;
    }

    @NotNull
    public static final ViewInfo read(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        return Companion.read(sQLiteConnection, str);
    }

    public boolean equals(@Nullable Object obj) {
        return ViewInfoKt.equalsCommon(this, obj);
    }

    public int hashCode() {
        return ViewInfoKt.hashCodeCommon(this);
    }

    @NotNull
    public String toString() {
        return ViewInfoKt.toStringCommon(this);
    }

    @c
    @NotNull
    public static final ViewInfo read(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str) {
        return Companion.read(supportSQLiteDatabase, str);
    }
}
