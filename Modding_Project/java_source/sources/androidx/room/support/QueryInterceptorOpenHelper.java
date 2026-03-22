package androidx.room.support;

import androidx.room.DelegatingOpenHelper;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryInterceptorOpenHelper.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class QueryInterceptorOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    @NotNull
    private final SupportSQLiteOpenHelper delegate;
    @NotNull
    private final RoomDatabase.QueryCallback queryCallback;
    @NotNull
    private final g0 queryCallbackScope;

    public QueryInterceptorOpenHelper(@NotNull SupportSQLiteOpenHelper delegate, @NotNull g0 queryCallbackScope, @NotNull RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(queryCallbackScope, "queryCallbackScope");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.queryCallbackScope = queryCallbackScope;
        this.queryCallback = queryCallback;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @Nullable
    public String getDatabaseName() {
        return this.delegate.getDatabaseName();
    }

    @Override // androidx.room.DelegatingOpenHelper
    @NotNull
    public SupportSQLiteOpenHelper getDelegate() {
        return this.delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        return new QueryInterceptorDatabase(getDelegate().getReadableDatabase(), this.queryCallbackScope, this.queryCallback);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        return new QueryInterceptorDatabase(getDelegate().getWritableDatabase(), this.queryCallbackScope, this.queryCallback);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean z10) {
        this.delegate.setWriteAheadLoggingEnabled(z10);
    }
}
