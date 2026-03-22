package androidx.sqlite.db;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SimpleSQLiteQuery.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Object[] bindArgs;
    @NotNull
    private final String query;

    /* compiled from: SimpleSQLiteQuery.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void bind(@NotNull SupportSQLiteProgram statement, @Nullable Object[] objArr) {
            Intrinsics.checkNotNullParameter(statement, "statement");
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i10 = 0;
            while (i10 < length) {
                Object obj = objArr[i10];
                i10++;
                bind(statement, i10, obj);
            }
        }

        private Companion() {
        }

        private final void bind(SupportSQLiteProgram supportSQLiteProgram, int i10, Object obj) {
            if (obj == null) {
                supportSQLiteProgram.bindNull(i10);
            } else if (obj instanceof byte[]) {
                supportSQLiteProgram.bindBlob(i10, (byte[]) obj);
            } else if (obj instanceof Float) {
                supportSQLiteProgram.bindDouble(i10, ((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                supportSQLiteProgram.bindDouble(i10, ((Number) obj).doubleValue());
            } else if (obj instanceof Long) {
                supportSQLiteProgram.bindLong(i10, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                supportSQLiteProgram.bindLong(i10, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                supportSQLiteProgram.bindLong(i10, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                supportSQLiteProgram.bindLong(i10, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                supportSQLiteProgram.bindString(i10, (String) obj);
            } else if (obj instanceof Boolean) {
                supportSQLiteProgram.bindLong(i10, ((Boolean) obj).booleanValue() ? 1L : 0L);
            } else {
                throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i10 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
            }
        }
    }

    public SimpleSQLiteQuery(@NotNull String query, @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.query = query;
        this.bindArgs = objArr;
    }

    public static final void bind(@NotNull SupportSQLiteProgram supportSQLiteProgram, @Nullable Object[] objArr) {
        Companion.bind(supportSQLiteProgram, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public void bindTo(@NotNull SupportSQLiteProgram statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        Companion.bind(statement, this.bindArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    public int getArgCount() {
        Object[] objArr = this.bindArgs;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    @Override // androidx.sqlite.db.SupportSQLiteQuery
    @NotNull
    public String getSql() {
        return this.query;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimpleSQLiteQuery(@NotNull String query) {
        this(query, null);
        Intrinsics.checkNotNullParameter(query, "query");
    }
}
