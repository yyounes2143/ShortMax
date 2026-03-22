package androidx.room.support;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: QueryInterceptorOpenHelperFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class QueryInterceptorOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @NotNull
    private final SupportSQLiteOpenHelper.Factory delegate;
    @NotNull
    private final RoomDatabase.QueryCallback queryCallback;
    @NotNull
    private final g0 queryCallbackScope;

    public QueryInterceptorOpenHelperFactory(@NotNull SupportSQLiteOpenHelper.Factory delegate, @NotNull g0 queryCallbackScope, @NotNull RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(queryCallbackScope, "queryCallbackScope");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.queryCallbackScope = queryCallbackScope;
        this.queryCallback = queryCallback;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    @NotNull
    public SupportSQLiteOpenHelper create(@NotNull SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new QueryInterceptorOpenHelper(this.delegate.create(configuration), this.queryCallbackScope, this.queryCallback);
    }
}
