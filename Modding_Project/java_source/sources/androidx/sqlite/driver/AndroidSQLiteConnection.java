package androidx.sqlite.driver;

import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidSQLiteConnection.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class AndroidSQLiteConnection implements SQLiteConnection {
    @NotNull

    /* renamed from: db  reason: collision with root package name */
    private final SQLiteDatabase f1659db;

    public AndroidSQLiteConnection(@NotNull SQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        this.f1659db = db2;
    }

    @Override // androidx.sqlite.SQLiteConnection, java.lang.AutoCloseable
    public void close() {
        this.f1659db.close();
    }

    @NotNull
    public final SQLiteDatabase getDb() {
        return this.f1659db;
    }

    @Override // androidx.sqlite.SQLiteConnection
    public boolean inTransaction() {
        return this.f1659db.inTransaction();
    }

    @Override // androidx.sqlite.SQLiteConnection
    @NotNull
    public SQLiteStatement prepare(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        if (this.f1659db.isOpen()) {
            return SupportSQLiteStatement.Companion.create(new FrameworkSQLiteDatabase(this.f1659db), sql);
        }
        SQLite.throwSQLiteException(21, "connection is closed");
        throw new KotlinNothingValueException();
    }
}
