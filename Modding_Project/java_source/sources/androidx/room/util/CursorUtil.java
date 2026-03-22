package androidx.room.util;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.MatrixCursor;
import android.os.Build;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import ws.b;
/* compiled from: CursorUtil.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nCursorUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CursorUtil.android.kt\nandroidx/room/util/CursorUtil\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n146#1:182\n13537#2,3:183\n1#3:186\n*S KotlinDebug\n*F\n+ 1 CursorUtil.android.kt\nandroidx/room/util/CursorUtil\n*L\n39#1:182\n128#1:183,3\n*E\n"})
/* loaded from: classes2.dex */
public final class CursorUtil {
    @NotNull
    public static final Cursor copyAndClose(@NotNull Cursor c10) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Cursor cursor = c10;
        try {
            Cursor cursor2 = cursor;
            MatrixCursor matrixCursor = new MatrixCursor(cursor2.getColumnNames(), cursor2.getCount());
            while (cursor2.moveToNext()) {
                Object[] objArr = new Object[cursor2.getColumnCount()];
                int columnCount = c10.getColumnCount();
                for (int i10 = 0; i10 < columnCount; i10++) {
                    int type = cursor2.getType(i10);
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 2) {
                                if (type != 3) {
                                    if (type == 4) {
                                        objArr[i10] = cursor2.getBlob(i10);
                                    } else {
                                        throw new IllegalStateException();
                                    }
                                } else {
                                    objArr[i10] = cursor2.getString(i10);
                                }
                            } else {
                                objArr[i10] = Double.valueOf(cursor2.getDouble(i10));
                            }
                        } else {
                            objArr[i10] = Long.valueOf(cursor2.getLong(i10));
                        }
                    } else {
                        objArr[i10] = null;
                    }
                }
                matrixCursor.addRow(objArr);
            }
            b.a(cursor, null);
            return matrixCursor;
        } finally {
        }
    }

    private static final int findColumnIndexBySuffix(Cursor cursor, String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            String[] columnNames = cursor.getColumnNames();
            Intrinsics.checkNotNull(columnNames);
            return findColumnIndexBySuffix(columnNames, str);
        }
        return -1;
    }

    public static final int getColumnIndex(@NotNull Cursor c10, @NotNull String name) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(name, "name");
        int columnIndex = c10.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c10.getColumnIndex('`' + name + '`');
        if (columnIndex2 < 0) {
            return findColumnIndexBySuffix(c10, name);
        }
        return columnIndex2;
    }

    public static final int getColumnIndexOrThrow(@NotNull Cursor c10, @NotNull String name) {
        String str;
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(name, "name");
        int columnIndex = getColumnIndex(c10, name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames = c10.getColumnNames();
            Intrinsics.checkNotNullExpressionValue(columnNames, "getColumnNames(...)");
            str = n.U0(columnNames, null, null, null, 0, null, null, 63, null);
        } catch (Exception e10) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e10);
            str = "unknown";
        }
        throw new IllegalArgumentException("column '" + name + "' does not exist. Available columns: " + str);
    }

    public static final <R> R useCursor(@NotNull Cursor cursor, @NotNull Function1<? super Cursor, ? extends R> block) {
        Intrinsics.checkNotNullParameter(cursor, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Cursor cursor2 = cursor;
        try {
            R invoke = block.invoke(cursor2);
            InlineMarker.finallyStart(1);
            b.a(cursor2, null);
            InlineMarker.finallyEnd(1);
            return invoke;
        } finally {
        }
    }

    @NotNull
    public static final Cursor wrapMappedColumns(@NotNull final Cursor cursor, @NotNull final String[] columnNames, @NotNull final int[] mapping) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Intrinsics.checkNotNullParameter(columnNames, "columnNames");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        if (columnNames.length == mapping.length) {
            return new CursorWrapper(cursor) { // from class: androidx.room.util.CursorUtil$wrapMappedColumns$2
                @Override // android.database.CursorWrapper, android.database.Cursor
                public int getColumnIndex(String columnName) {
                    Intrinsics.checkNotNullParameter(columnName, "columnName");
                    String[] strArr = columnNames;
                    int[] iArr = mapping;
                    int length = strArr.length;
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < length) {
                        int i12 = i11 + 1;
                        if (StringsKt.G(strArr[i10], columnName, true)) {
                            return iArr[i11];
                        }
                        i10++;
                        i11 = i12;
                    }
                    return super.getColumnIndex(columnName);
                }
            };
        }
        throw new IllegalStateException("Expected columnNames.length == mapping.length");
    }

    @VisibleForTesting
    public static final int findColumnIndexBySuffix(@NotNull String[] columnNames, @NotNull String name) {
        Intrinsics.checkNotNullParameter(columnNames, "columnNames");
        Intrinsics.checkNotNullParameter(name, "name");
        String str = '.' + name;
        String str2 = '.' + name + '`';
        int length = columnNames.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str3 = columnNames[i10];
            int i12 = i11 + 1;
            if (str3.length() >= name.length() + 2) {
                if (StringsKt.F(str3, str, false, 2, null)) {
                    return i11;
                }
                if (str3.charAt(0) == '`' && StringsKt.F(str3, str2, false, 2, null)) {
                    return i11;
                }
            }
            i10++;
            i11 = i12;
        }
        return -1;
    }
}
