package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FrameworkSQLiteProgram.android.kt */
@Metadata
/* loaded from: classes2.dex */
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    @NotNull
    private final SQLiteProgram delegate;

    public FrameworkSQLiteProgram(@NotNull SQLiteProgram delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindBlob(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i10, double d10) {
        this.delegate.bindDouble(i10, d10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i10, long j10) {
        this.delegate.bindLong(i10, j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i10) {
        this.delegate.bindNull(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindString(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.delegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }
}
