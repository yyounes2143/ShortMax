package androidx.room.support;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryInterceptorStatement.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nQueryInterceptorStatement.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryInterceptorStatement.android.kt\nandroidx/room/support/QueryInterceptorStatement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"})
/* loaded from: classes2.dex */
public final class QueryInterceptorStatement implements SupportSQLiteStatement {
    @NotNull
    private final List<Object> bindArgsCache;
    @NotNull
    private final SupportSQLiteStatement delegate;
    @NotNull
    private final RoomDatabase.QueryCallback queryCallback;
    @NotNull
    private final g0 queryCallbackScope;
    @NotNull
    private final String sqlStatement;

    public QueryInterceptorStatement(@NotNull SupportSQLiteStatement delegate, @NotNull String sqlStatement, @NotNull g0 queryCallbackScope, @NotNull RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(sqlStatement, "sqlStatement");
        Intrinsics.checkNotNullParameter(queryCallbackScope, "queryCallbackScope");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.sqlStatement = sqlStatement;
        this.queryCallbackScope = queryCallbackScope;
        this.queryCallback = queryCallback;
        this.bindArgsCache = new ArrayList();
    }

    private final void saveArgsToCache(int i10, Object obj) {
        int i11 = i10 - 1;
        if (i11 >= this.bindArgsCache.size()) {
            int size = (i11 - this.bindArgsCache.size()) + 1;
            for (int i12 = 0; i12 < size; i12++) {
                this.bindArgsCache.add(null);
            }
        }
        this.bindArgsCache.set(i11, obj);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        saveArgsToCache(i10, value);
        this.delegate.bindBlob(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i10, double d10) {
        saveArgsToCache(i10, Double.valueOf(d10));
        this.delegate.bindDouble(i10, d10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i10, long j10) {
        saveArgsToCache(i10, Long.valueOf(j10));
        this.delegate.bindLong(i10, j10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i10) {
        saveArgsToCache(i10, null);
        this.delegate.bindNull(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        saveArgsToCache(i10, value);
        this.delegate.bindString(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.bindArgsCache.clear();
        this.delegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public void execute() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorStatement$execute$1(this, CollectionsKt.d1(this.bindArgsCache), null), 3, null);
        this.delegate.execute();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long executeInsert() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorStatement$executeInsert$1(this, CollectionsKt.d1(this.bindArgsCache), null), 3, null);
        return this.delegate.executeInsert();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorStatement$executeUpdateDelete$1(this, CollectionsKt.d1(this.bindArgsCache), null), 3, null);
        return this.delegate.executeUpdateDelete();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long simpleQueryForLong() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorStatement$simpleQueryForLong$1(this, CollectionsKt.d1(this.bindArgsCache), null), 3, null);
        return this.delegate.simpleQueryForLong();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    @Nullable
    public String simpleQueryForString() {
        gt.g.d(this.queryCallbackScope, null, null, new QueryInterceptorStatement$simpleQueryForString$1(this, CollectionsKt.d1(this.bindArgsCache), null), 3, null);
        return this.delegate.simpleQueryForString();
    }
}
