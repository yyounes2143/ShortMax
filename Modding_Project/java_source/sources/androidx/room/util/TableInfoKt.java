package androidx.room.util;

import androidx.room.util.TableInfo;
import com.google.android.gms.ads.AdError;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ps.a;
/* compiled from: TableInfo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTableInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TableInfo.kt\nandroidx/room/util/TableInfoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,397:1\n1056#2:398\n1056#2:399\n1188#3,3:400\n*S KotlinDebug\n*F\n+ 1 TableInfo.kt\nandroidx/room/util/TableInfoKt\n*L\n192#1:398\n194#1:399\n261#1:400,3\n*E\n"})
/* loaded from: classes2.dex */
public final class TableInfoKt {
    private static final boolean containsSurroundingParenthesis(String str) {
        if (str.length() == 0) {
            return false;
        }
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            int i13 = i12 + 1;
            if (i12 == 0 && charAt != '(') {
                return false;
            }
            if (charAt != '(') {
                if (charAt == ')' && i11 - 1 == 0 && i12 != str.length() - 1) {
                    return false;
                }
            } else {
                i11++;
            }
            i10++;
            i12 = i13;
        }
        if (i11 != 0) {
            return false;
        }
        return true;
    }

    public static final boolean defaultValueEqualsCommon(@NotNull String current, @Nullable String str) {
        Intrinsics.checkNotNullParameter(current, "current");
        if (Intrinsics.areEqual(current, str)) {
            return true;
        }
        if (containsSurroundingParenthesis(current)) {
            String substring = current.substring(1, current.length() - 1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return Intrinsics.areEqual(StringsKt.v1(substring).toString(), str);
        }
        return false;
    }

    public static final boolean equalsCommon(@NotNull TableInfo tableInfo, @Nullable Object obj) {
        Set<TableInfo.Index> set;
        Intrinsics.checkNotNullParameter(tableInfo, "<this>");
        if (tableInfo == obj) {
            return true;
        }
        if (obj instanceof TableInfo) {
            TableInfo tableInfo2 = (TableInfo) obj;
            if (Intrinsics.areEqual(tableInfo.name, tableInfo2.name) && Intrinsics.areEqual(tableInfo.columns, tableInfo2.columns) && Intrinsics.areEqual(tableInfo.foreignKeys, tableInfo2.foreignKeys)) {
                Set<TableInfo.Index> set2 = tableInfo.indices;
                if (set2 == null || (set = tableInfo2.indices) == null) {
                    return true;
                }
                return Intrinsics.areEqual(set2, set);
            }
            return false;
        }
        return false;
    }

    @NotNull
    public static final String formatString(@NotNull Collection<?> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (!collection.isEmpty()) {
            return StringsKt.j(CollectionsKt.A0(collection, ",\n", "\n", "\n", 0, null, null, 56, null), null, 1, null) + "},";
        }
        return " }";
    }

    public static final int hashCodeCommon(@NotNull TableInfo tableInfo) {
        Intrinsics.checkNotNullParameter(tableInfo, "<this>");
        return (((tableInfo.name.hashCode() * 31) + tableInfo.columns.hashCode()) * 31) + tableInfo.foreignKeys.hashCode();
    }

    private static final void joinToStringEndWithIndent(Collection<?> collection) {
        StringsKt.j(CollectionsKt.A0(collection, ",", null, null, 0, null, null, 62, null), null, 1, null);
        StringsKt.j(" }", null, 1, null);
    }

    private static final void joinToStringMiddleWithIndent(Collection<?> collection) {
        StringsKt.j(CollectionsKt.A0(collection, ",", null, null, 0, null, null, 62, null), null, 1, null);
        StringsKt.j("},", null, 1, null);
    }

    @NotNull
    public static final String toStringCommon(@NotNull TableInfo tableInfo) {
        List n10;
        Intrinsics.checkNotNullParameter(tableInfo, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |TableInfo {\n            |    name = '");
        sb2.append(tableInfo.name);
        sb2.append("',\n            |    columns = {");
        sb2.append(formatString(CollectionsKt.U0(tableInfo.columns.values(), new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return a.a(((TableInfo.Column) t10).name, ((TableInfo.Column) t11).name);
            }
        })));
        sb2.append("\n            |    foreignKeys = {");
        sb2.append(formatString(tableInfo.foreignKeys));
        sb2.append("\n            |    indices = {");
        Set<TableInfo.Index> set = tableInfo.indices;
        if (set == null || (n10 = CollectionsKt.U0(set, new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$2
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return a.a(((TableInfo.Index) t10).name, ((TableInfo.Index) t11).name);
            }
        })) == null) {
            n10 = CollectionsKt.n();
        }
        sb2.append(formatString(n10));
        sb2.append("\n            |}\n        ");
        return StringsKt.p(sb2.toString(), null, 1, null);
    }

    public static final int hashCodeCommon(@NotNull TableInfo.Column column) {
        Intrinsics.checkNotNullParameter(column, "<this>");
        return (((((column.name.hashCode() * 31) + column.affinity) * 31) + (column.notNull ? 1231 : 1237)) * 31) + column.primaryKeyPosition;
    }

    public static final boolean equalsCommon(@NotNull TableInfo.Column column, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(column, "<this>");
        if (column == obj) {
            return true;
        }
        if (obj instanceof TableInfo.Column) {
            TableInfo.Column column2 = (TableInfo.Column) obj;
            if (column.isPrimaryKey() == column2.isPrimaryKey() && Intrinsics.areEqual(column.name, column2.name) && column.notNull == column2.notNull) {
                String str = column.defaultValue;
                String str2 = column2.defaultValue;
                if (column.createdFrom != 1 || column2.createdFrom != 2 || str == null || defaultValueEqualsCommon(str, str2)) {
                    if (column.createdFrom != 2 || column2.createdFrom != 1 || str2 == null || defaultValueEqualsCommon(str2, str)) {
                        int i10 = column.createdFrom;
                        return (i10 == 0 || i10 != column2.createdFrom || (str == null ? str2 == null : defaultValueEqualsCommon(str, str2))) && column.affinity == column2.affinity;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public static final int hashCodeCommon(@NotNull TableInfo.ForeignKey foreignKey) {
        Intrinsics.checkNotNullParameter(foreignKey, "<this>");
        return (((((((foreignKey.referenceTable.hashCode() * 31) + foreignKey.onDelete.hashCode()) * 31) + foreignKey.onUpdate.hashCode()) * 31) + foreignKey.columnNames.hashCode()) * 31) + foreignKey.referenceColumnNames.hashCode();
    }

    public static final int hashCodeCommon(@NotNull TableInfo.Index index) {
        Intrinsics.checkNotNullParameter(index, "<this>");
        return ((((((StringsKt.V(index.name, TableInfo.Index.DEFAULT_PREFIX, false, 2, null) ? -1184239155 : index.name.hashCode()) * 31) + (index.unique ? 1 : 0)) * 31) + index.columns.hashCode()) * 31) + index.orders.hashCode();
    }

    public static final boolean equalsCommon(@NotNull TableInfo.ForeignKey foreignKey, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(foreignKey, "<this>");
        if (foreignKey == obj) {
            return true;
        }
        if (obj instanceof TableInfo.ForeignKey) {
            TableInfo.ForeignKey foreignKey2 = (TableInfo.ForeignKey) obj;
            if (Intrinsics.areEqual(foreignKey.referenceTable, foreignKey2.referenceTable) && Intrinsics.areEqual(foreignKey.onDelete, foreignKey2.onDelete) && Intrinsics.areEqual(foreignKey.onUpdate, foreignKey2.onUpdate) && Intrinsics.areEqual(foreignKey.columnNames, foreignKey2.columnNames)) {
                return Intrinsics.areEqual(foreignKey.referenceColumnNames, foreignKey2.referenceColumnNames);
            }
            return false;
        }
        return false;
    }

    @NotNull
    public static final String toStringCommon(@NotNull TableInfo.Column column) {
        Intrinsics.checkNotNullParameter(column, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |Column {\n            |   name = '");
        sb2.append(column.name);
        sb2.append("',\n            |   type = '");
        sb2.append(column.type);
        sb2.append("',\n            |   affinity = '");
        sb2.append(column.affinity);
        sb2.append("',\n            |   notNull = '");
        sb2.append(column.notNull);
        sb2.append("',\n            |   primaryKeyPosition = '");
        sb2.append(column.primaryKeyPosition);
        sb2.append("',\n            |   defaultValue = '");
        String str = column.defaultValue;
        if (str == null) {
            str = AdError.UNDEFINED_DOMAIN;
        }
        sb2.append(str);
        sb2.append("'\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final boolean equalsCommon(@NotNull TableInfo.Index index, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(index, "<this>");
        if (index == obj) {
            return true;
        }
        if (obj instanceof TableInfo.Index) {
            TableInfo.Index index2 = (TableInfo.Index) obj;
            if (index.unique == index2.unique && Intrinsics.areEqual(index.columns, index2.columns) && Intrinsics.areEqual(index.orders, index2.orders)) {
                if (StringsKt.V(index.name, TableInfo.Index.DEFAULT_PREFIX, false, 2, null)) {
                    return StringsKt.V(index2.name, TableInfo.Index.DEFAULT_PREFIX, false, 2, null);
                }
                return Intrinsics.areEqual(index.name, index2.name);
            }
            return false;
        }
        return false;
    }

    @NotNull
    public static final String toStringCommon(@NotNull TableInfo.ForeignKey foreignKey) {
        Intrinsics.checkNotNullParameter(foreignKey, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |ForeignKey {\n            |   referenceTable = '");
        sb2.append(foreignKey.referenceTable);
        sb2.append("',\n            |   onDelete = '");
        sb2.append(foreignKey.onDelete);
        sb2.append("',\n            |   onUpdate = '");
        sb2.append(foreignKey.onUpdate);
        sb2.append("',\n            |   columnNames = {");
        joinToStringMiddleWithIndent(CollectionsKt.T0(foreignKey.columnNames));
        Unit unit = Unit.f60915a;
        sb2.append(unit);
        sb2.append("\n            |   referenceColumnNames = {");
        joinToStringEndWithIndent(CollectionsKt.T0(foreignKey.referenceColumnNames));
        sb2.append(unit);
        sb2.append("\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    @NotNull
    public static final String toStringCommon(@NotNull TableInfo.Index index) {
        Intrinsics.checkNotNullParameter(index, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |Index {\n            |   name = '");
        sb2.append(index.name);
        sb2.append("',\n            |   unique = '");
        sb2.append(index.unique);
        sb2.append("',\n            |   columns = {");
        joinToStringMiddleWithIndent(index.columns);
        Unit unit = Unit.f60915a;
        sb2.append(unit);
        sb2.append("\n            |   orders = {");
        joinToStringEndWithIndent(index.orders);
        sb2.append(unit);
        sb2.append("\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }
}
