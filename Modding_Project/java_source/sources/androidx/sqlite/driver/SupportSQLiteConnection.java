package androidx.sqlite.driver;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SupportSQLiteConnection.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SupportSQLiteConnection implements SQLiteConnection {
    @NotNull

    /* renamed from: db  reason: collision with root package name */
    private final SupportSQLiteDatabase f1660db;

    public SupportSQLiteConnection(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        this.f1660db = db2;
    }

    @Override // androidx.sqlite.SQLiteConnection, java.lang.AutoCloseable
    public void close() {
        this.f1660db.close();
    }

    @NotNull
    public final SupportSQLiteDatabase getDb() {
        return this.f1660db;
    }

    @Override // androidx.sqlite.SQLiteConnection
    public boolean inTransaction() {
        return this.f1660db.inTransaction();
    }

    @Override // androidx.sqlite.SQLiteConnection
    @NotNull
    public SQLiteStatement prepare(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        if (this.f1660db.isOpen()) {
            return SupportSQLiteStatement.Companion.create(this.f1660db, sql);
        }
        SQLite.throwSQLiteException(21, "connection is closed");
        throw new KotlinNothingValueException();
    }
}
