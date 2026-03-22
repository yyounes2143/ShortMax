package androidx.room.util;

import android.os.Build;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StatementUtil.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final /* synthetic */ class SQLiteStatementUtil__StatementUtil_androidKt {
    public static final int columnIndexOf(@NotNull SQLiteStatement sQLiteStatement, @NotNull String name) {
        Intrinsics.checkNotNullParameter(sQLiteStatement, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int columnIndexOfCommon = SQLiteStatementUtil.columnIndexOfCommon(sQLiteStatement, name);
        if (columnIndexOfCommon >= 0) {
            return columnIndexOfCommon;
        }
        int columnIndexOfCommon2 = SQLiteStatementUtil.columnIndexOfCommon(sQLiteStatement, '`' + name + '`');
        if (columnIndexOfCommon2 < 0) {
            return findColumnIndexBySuffix$SQLiteStatementUtil__StatementUtil_androidKt(sQLiteStatement, name);
        }
        return columnIndexOfCommon2;
    }

    private static final int findColumnIndexBySuffix$SQLiteStatementUtil__StatementUtil_androidKt(SQLiteStatement sQLiteStatement, String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount = sQLiteStatement.getColumnCount();
            String str2 = '.' + str;
            String str3 = '.' + str + '`';
            for (int i10 = 0; i10 < columnCount; i10++) {
                String columnName = sQLiteStatement.getColumnName(i10);
                if (columnName.length() >= str.length() + 2) {
                    if (StringsKt.F(columnName, str2, false, 2, null)) {
                        return i10;
                    }
                    if (columnName.charAt(0) == '`' && StringsKt.F(columnName, str3, false, 2, null)) {
                        return i10;
                    }
                }
            }
        }
        return -1;
    }
}
