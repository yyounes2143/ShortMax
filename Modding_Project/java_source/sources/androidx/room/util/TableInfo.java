package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.driver.SupportSQLiteConnection;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TableInfo.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class TableInfo {
    public static final int CREATED_FROM_DATABASE = 2;
    public static final int CREATED_FROM_ENTITY = 1;
    public static final int CREATED_FROM_UNKNOWN = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public final Map<String, Column> columns;
    @NotNull
    public final Set<ForeignKey> foreignKeys;
    @Nullable
    public final Set<Index> indices;
    @NotNull
    public final String name;

    /* compiled from: TableInfo.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @c
        @NotNull
        public final TableInfo read(@NotNull SupportSQLiteDatabase database, @NotNull String tableName) {
            Intrinsics.checkNotNullParameter(database, "database");
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return read(new SupportSQLiteConnection(database), tableName);
        }

        private Companion() {
        }

        @NotNull
        public final TableInfo read(@NotNull SQLiteConnection connection, @NotNull String tableName) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            return SchemaInfoUtilKt.readTableInfo(connection, tableName);
        }
    }

    /* compiled from: TableInfo.android.kt */
    @Retention(RetentionPolicy.SOURCE)
    @Metadata
    /* loaded from: classes2.dex */
    public @interface CreatedFrom {
    }

    /* compiled from: TableInfo.android.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static final class ForeignKey {
        @NotNull
        public final List<String> columnNames;
        @NotNull
        public final String onDelete;
        @NotNull
        public final String onUpdate;
        @NotNull
        public final List<String> referenceColumnNames;
        @NotNull
        public final String referenceTable;

        public ForeignKey(@NotNull String referenceTable, @NotNull String onDelete, @NotNull String onUpdate, @NotNull List<String> columnNames, @NotNull List<String> referenceColumnNames) {
            Intrinsics.checkNotNullParameter(referenceTable, "referenceTable");
            Intrinsics.checkNotNullParameter(onDelete, "onDelete");
            Intrinsics.checkNotNullParameter(onUpdate, "onUpdate");
            Intrinsics.checkNotNullParameter(columnNames, "columnNames");
            Intrinsics.checkNotNullParameter(referenceColumnNames, "referenceColumnNames");
            this.referenceTable = referenceTable;
            this.onDelete = onDelete;
            this.onUpdate = onUpdate;
            this.columnNames = columnNames;
            this.referenceColumnNames = referenceColumnNames;
        }

        public boolean equals(@Nullable Object obj) {
            return TableInfoKt.equalsCommon(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.hashCodeCommon(this);
        }

        @NotNull
        public String toString() {
            return TableInfoKt.toStringCommon(this);
        }
    }

    public TableInfo(@NotNull String name, @NotNull Map<String, Column> columns, @NotNull Set<ForeignKey> foreignKeys, @Nullable Set<Index> set) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(foreignKeys, "foreignKeys");
        this.name = name;
        this.columns = columns;
        this.foreignKeys = foreignKeys;
        this.indices = set;
    }

    @NotNull
    public static final TableInfo read(@NotNull SQLiteConnection sQLiteConnection, @NotNull String str) {
        return Companion.read(sQLiteConnection, str);
    }

    public boolean equals(@Nullable Object obj) {
        return TableInfoKt.equalsCommon(this, obj);
    }

    public int hashCode() {
        return TableInfoKt.hashCodeCommon(this);
    }

    @NotNull
    public String toString() {
        return TableInfoKt.toStringCommon(this);
    }

    @c
    @NotNull
    public static final TableInfo read(@NotNull SupportSQLiteDatabase supportSQLiteDatabase, @NotNull String str) {
        return Companion.read(supportSQLiteDatabase, str);
    }

    /* compiled from: TableInfo.android.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @SourceDebugExtension({"SMAP\nTableInfo.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TableInfo.android.kt\nandroidx/room/util/TableInfo$Index\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Index {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final String DEFAULT_PREFIX = "index_";
        @NotNull
        public final List<String> columns;
        @NotNull
        public final String name;
        @NotNull
        public List<String> orders;
        public final boolean unique;

        /* compiled from: TableInfo.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.util.ArrayList] */
        public Index(@NotNull String name, boolean z10, @NotNull List<String> columns, @NotNull List<String> orders) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(columns, "columns");
            Intrinsics.checkNotNullParameter(orders, "orders");
            this.name = name;
            this.unique = z10;
            this.columns = columns;
            this.orders = orders;
            List<String> list = orders;
            if (list.isEmpty()) {
                int size = columns.size();
                list = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    list.add("ASC");
                }
            }
            this.orders = (List) list;
        }

        public boolean equals(@Nullable Object obj) {
            return TableInfoKt.equalsCommon(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.hashCodeCommon(this);
        }

        @NotNull
        public String toString() {
            return TableInfoKt.toStringCommon(this);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        @ms.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Index(@org.jetbrains.annotations.NotNull java.lang.String r5, boolean r6, @org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r7) {
            /*
                r4 = this;
                java.lang.String r0 = "name"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "columns"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                int r0 = r7.size()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>(r0)
                r2 = 0
            L14:
                if (r2 >= r0) goto L1e
                java.lang.String r3 = "ASC"
                r1.add(r3)
                int r2 = r2 + 1
                goto L14
            L1e:
                r4.<init>(r5, r6, r7, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.TableInfo.Index.<init>(java.lang.String, boolean, java.util.List):void");
        }
    }

    public /* synthetic */ TableInfo(String str, Map map, Set set, Set set2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, map, set, (i10 & 8) != 0 ? null : set2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public TableInfo(@NotNull String name, @NotNull Map<String, Column> columns, @NotNull Set<ForeignKey> foreignKeys) {
        this(name, columns, foreignKeys, y0.f());
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(columns, "columns");
        Intrinsics.checkNotNullParameter(foreignKeys, "foreignKeys");
    }

    /* compiled from: TableInfo.android.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static final class Column {
        @NotNull
        public static final Companion Companion = new Companion(null);
        public final int affinity;
        public final int createdFrom;
        @Nullable
        public final String defaultValue;
        @NotNull
        public final String name;
        public final boolean notNull;
        public final int primaryKeyPosition;
        @NotNull
        public final String type;

        /* compiled from: TableInfo.android.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final boolean defaultValueEquals(@NotNull String current, @Nullable String str) {
                Intrinsics.checkNotNullParameter(current, "current");
                return TableInfoKt.defaultValueEqualsCommon(current, str);
            }

            private Companion() {
            }
        }

        public Column(@NotNull String name, @NotNull String type, boolean z10, int i10, @Nullable String str, int i11) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(type, "type");
            this.name = name;
            this.type = type;
            this.notNull = z10;
            this.primaryKeyPosition = i10;
            this.defaultValue = str;
            this.createdFrom = i11;
            this.affinity = SchemaInfoUtilKt.findAffinity(type);
        }

        public static final boolean defaultValueEquals(@NotNull String str, @Nullable String str2) {
            return Companion.defaultValueEquals(str, str2);
        }

        public boolean equals(@Nullable Object obj) {
            return TableInfoKt.equalsCommon(this, obj);
        }

        public int hashCode() {
            return TableInfoKt.hashCodeCommon(this);
        }

        public final boolean isPrimaryKey() {
            if (this.primaryKeyPosition > 0) {
                return true;
            }
            return false;
        }

        @NotNull
        public String toString() {
            return TableInfoKt.toStringCommon(this);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        @c
        public Column(@NotNull String name, @NotNull String type, boolean z10, int i10) {
            this(name, type, z10, i10, null, 0);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(type, "type");
        }

        @ColumnInfo.SQLiteTypeAffinity
        public static /* synthetic */ void getAffinity$annotations() {
        }
    }
}
