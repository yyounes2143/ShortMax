package androidx.sqlite.db;

import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SupportSQLiteQueryBuilder.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSupportSQLiteQueryBuilder.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupportSQLiteQueryBuilder.android.kt\nandroidx/sqlite/db/SupportSQLiteQueryBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"})
/* loaded from: classes2.dex */
public final class SupportSQLiteQueryBuilder {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern limitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");
    @Nullable
    private Object[] bindArgs;
    @Nullable
    private String[] columns;
    private boolean distinct;
    @Nullable
    private String groupBy;
    @Nullable
    private String having;
    @Nullable
    private String limit;
    @Nullable
    private String orderBy;
    @Nullable
    private String selection;
    @NotNull
    private final String table;

    /* compiled from: SupportSQLiteQueryBuilder.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SupportSQLiteQueryBuilder builder(@NotNull String tableName) {
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return new SupportSQLiteQueryBuilder(tableName, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ SupportSQLiteQueryBuilder(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private final void appendClause(StringBuilder sb2, String str, String str2) {
        if (str2 != null && str2.length() != 0) {
            sb2.append(str);
            sb2.append(str2);
        }
    }

    private final void appendColumns(StringBuilder sb2, String[] strArr) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str = strArr[i10];
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        sb2.append(' ');
    }

    @NotNull
    public static final SupportSQLiteQueryBuilder builder(@NotNull String str) {
        return Companion.builder(str);
    }

    @NotNull
    public final SupportSQLiteQueryBuilder columns(@Nullable String[] strArr) {
        this.columns = strArr;
        return this;
    }

    @NotNull
    public final SupportSQLiteQuery create() {
        String str;
        String str2 = this.groupBy;
        if ((str2 == null || str2.length() == 0) && (str = this.having) != null && str.length() != 0) {
            throw new IllegalArgumentException("HAVING clauses are only permitted when using a groupBy clause");
        }
        StringBuilder sb2 = new StringBuilder(120);
        sb2.append("SELECT ");
        if (this.distinct) {
            sb2.append("DISTINCT ");
        }
        String[] strArr = this.columns;
        if (strArr != null && strArr.length != 0) {
            Intrinsics.checkNotNull(strArr);
            appendColumns(sb2, strArr);
        } else {
            sb2.append("* ");
        }
        sb2.append("FROM ");
        sb2.append(this.table);
        appendClause(sb2, " WHERE ", this.selection);
        appendClause(sb2, " GROUP BY ", this.groupBy);
        appendClause(sb2, " HAVING ", this.having);
        appendClause(sb2, " ORDER BY ", this.orderBy);
        appendClause(sb2, " LIMIT ", this.limit);
        return new SimpleSQLiteQuery(sb2.toString(), this.bindArgs);
    }

    @NotNull
    public final SupportSQLiteQueryBuilder distinct() {
        this.distinct = true;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder groupBy(@Nullable String str) {
        this.groupBy = str;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder having(@Nullable String str) {
        this.having = str;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder limit(@NotNull String limit) {
        Intrinsics.checkNotNullParameter(limit, "limit");
        boolean matches = limitPattern.matcher(limit).matches();
        if (limit.length() == 0 || matches) {
            this.limit = limit;
            return this;
        }
        throw new IllegalArgumentException(("invalid LIMIT clauses:" + limit).toString());
    }

    @NotNull
    public final SupportSQLiteQueryBuilder orderBy(@Nullable String str) {
        this.orderBy = str;
        return this;
    }

    @NotNull
    public final SupportSQLiteQueryBuilder selection(@Nullable String str, @Nullable Object[] objArr) {
        this.selection = str;
        this.bindArgs = objArr;
        return this;
    }

    private SupportSQLiteQueryBuilder(String str) {
        this.table = str;
    }
}
