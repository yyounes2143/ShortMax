package androidx.room.util;

import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StatementUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStatementUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatementUtil.kt\nandroidx/room/util/SQLiteStatementUtil__StatementUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
/* loaded from: classes2.dex */
public final /* synthetic */ class SQLiteStatementUtil__StatementUtilKt {
    public static final int columnIndexOfCommon(@NotNull SQLiteStatement sQLiteStatement, @NotNull String name) {
        Intrinsics.checkNotNullParameter(sQLiteStatement, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        if (sQLiteStatement instanceof MappedColumnsSQLiteStatementWrapper) {
            return ((MappedColumnsSQLiteStatementWrapper) sQLiteStatement).getColumnIndex(name);
        }
        int columnCount = sQLiteStatement.getColumnCount();
        for (int i10 = 0; i10 < columnCount; i10++) {
            if (Intrinsics.areEqual(name, sQLiteStatement.getColumnName(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int getColumnIndex(@NotNull SQLiteStatement stmt, @NotNull String name) {
        Intrinsics.checkNotNullParameter(stmt, "stmt");
        Intrinsics.checkNotNullParameter(name, "name");
        return SQLiteStatementUtil.columnIndexOf(stmt, name);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int getColumnIndexOrThrow(@NotNull SQLiteStatement stmt, @NotNull String name) {
        Intrinsics.checkNotNullParameter(stmt, "stmt");
        Intrinsics.checkNotNullParameter(name, "name");
        int columnIndexOf = SQLiteStatementUtil.columnIndexOf(stmt, name);
        if (columnIndexOf >= 0) {
            return columnIndexOf;
        }
        int columnCount = stmt.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i10 = 0; i10 < columnCount; i10++) {
            arrayList.add(stmt.getColumnName(i10));
        }
        String A0 = CollectionsKt.A0(arrayList, null, null, null, 0, null, null, 63, null);
        throw new IllegalArgumentException("Column '" + name + "' does not exist. Available columns: [" + A0 + ']');
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final SQLiteStatement wrapMappedColumns(@NotNull SQLiteStatement statement, @NotNull String[] columnNames, @NotNull int[] mapping) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        Intrinsics.checkNotNullParameter(columnNames, "columnNames");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        return new MappedColumnsSQLiteStatementWrapper(statement, columnNames, mapping);
    }
}
