package androidx.room.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.room.ColumnInfo;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ys.a;
/* compiled from: SchemaInfoUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSchemaInfoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SchemaInfoUtil.kt\nandroidx/room/util/SchemaInfoUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,378:1\n774#2:379\n865#2,2:380\n1869#2,2:382\n1056#2:384\n1563#2:385\n1634#2,3:386\n1056#2:389\n1563#2:390\n1634#2,3:391\n774#2:420\n865#2:421\n866#2:424\n1188#3,2:394\n1190#3:419\n108#4:396\n80#4,22:397\n12637#5,2:422\n*S KotlinDebug\n*F\n+ 1 SchemaInfoUtil.kt\nandroidx/room/util/SchemaInfoUtilKt\n*L\n94#1:379\n94#1:380,2\n95#1:382,2\n256#1:384\n256#1:385\n256#1:386,3\n257#1:389\n257#1:390\n257#1:391,3\n360#1:420\n360#1:421\n360#1:424\n328#1:394,2\n328#1:419\n348#1:396\n348#1:397,22\n360#1:422,2\n*E\n"})
/* loaded from: classes2.dex */
public final class SchemaInfoUtilKt {
    @NotNull
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    @ColumnInfo.SQLiteTypeAffinity
    public static final int findAffinity(@Nullable String str) {
        if (str == null) {
            return 5;
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        if (StringsKt.b0(upperCase, "INT", false, 2, null)) {
            return 3;
        }
        if (StringsKt.b0(upperCase, "CHAR", false, 2, null) || StringsKt.b0(upperCase, "CLOB", false, 2, null) || StringsKt.b0(upperCase, "TEXT", false, 2, null)) {
            return 2;
        }
        if (StringsKt.b0(upperCase, "BLOB", false, 2, null)) {
            return 5;
        }
        if (!StringsKt.b0(upperCase, "REAL", false, 2, null) && !StringsKt.b0(upperCase, "FLOA", false, 2, null) && !StringsKt.b0(upperCase, "DOUB", false, 2, null)) {
            return 1;
        }
        return 4;
    }

    @NotNull
    public static final Set<String> parseFtsOptions(@NotNull String createStatement) {
        int i10;
        boolean z10;
        Character ch2;
        Intrinsics.checkNotNullParameter(createStatement, "createStatement");
        if (createStatement.length() == 0) {
            return y0.f();
        }
        String substring = createStatement.substring(StringsKt.p0(createStatement, '(', 0, false, 6, null) + 1, StringsKt.x0(createStatement, ')', 0, false, 6, null));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        ArrayList arrayList = new ArrayList();
        m mVar = new m();
        int i11 = -1;
        int i12 = 0;
        int i13 = 0;
        while (i12 < substring.length()) {
            char charAt = substring.charAt(i12);
            int i14 = i13 + 1;
            if (charAt != '\"' && charAt != '\'') {
                if (charAt != ',') {
                    if (charAt != '[') {
                        if (charAt != ']') {
                            if (charAt != '`') {
                            }
                        } else if (!mVar.isEmpty() && (ch2 = (Character) mVar.i()) != null && ch2.charValue() == '[') {
                            CollectionsKt.R(mVar);
                        }
                    } else if (mVar.isEmpty()) {
                        mVar.addFirst(Character.valueOf(charAt));
                    }
                } else if (mVar.isEmpty()) {
                    String substring2 = substring.substring(i11 + 1, i13);
                    Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                    int length = substring2.length() - 1;
                    int i15 = 0;
                    boolean z11 = false;
                    while (i15 <= length) {
                        if (!z11) {
                            i10 = i15;
                        } else {
                            i10 = length;
                        }
                        if (Intrinsics.compare((int) substring2.charAt(i10), 32) <= 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z11) {
                            if (!z10) {
                                z11 = true;
                            } else {
                                i15++;
                            }
                        } else if (!z10) {
                            break;
                        } else {
                            length--;
                        }
                    }
                    arrayList.add(substring2.subSequence(i15, length + 1).toString());
                    i11 = i13;
                }
                i12++;
                i13 = i14;
            }
            if (mVar.isEmpty()) {
                mVar.addFirst(Character.valueOf(charAt));
            } else {
                Character ch3 = (Character) mVar.i();
                if (ch3 != null && ch3.charValue() == charAt) {
                    CollectionsKt.R(mVar);
                }
            }
            i12++;
            i13 = i14;
        }
        String substring3 = substring.substring(i11 + 1);
        Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
        arrayList.add(StringsKt.v1(substring3).toString());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String str = (String) obj;
            String[] strArr = FTS_OPTIONS;
            int length2 = strArr.length;
            int i16 = 0;
            while (true) {
                if (i16 >= length2) {
                    break;
                } else if (StringsKt.V(str, strArr[i16], false, 2, null)) {
                    arrayList2.add(obj);
                    break;
                } else {
                    i16++;
                }
            }
        }
        return CollectionsKt.i1(arrayList2);
    }

    private static final Map<String, TableInfo.Column> readColumns(SQLiteConnection sQLiteConnection, String str) {
        boolean z10;
        String text;
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA table_info(`" + str + "`)");
        try {
            String str2 = null;
            if (!prepare.step()) {
                Map<String, TableInfo.Column> i10 = p0.i();
                a.a(prepare, null);
                return i10;
            }
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "name");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "type");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "notnull");
            int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(prepare, "pk");
            int columnIndexOf5 = SQLiteStatementUtil.columnIndexOf(prepare, "dflt_value");
            Map c10 = p0.c();
            while (true) {
                String text2 = prepare.getText(columnIndexOf);
                String text3 = prepare.getText(columnIndexOf2);
                if (prepare.getLong(columnIndexOf3) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean z11 = z10;
                int i11 = (int) prepare.getLong(columnIndexOf4);
                if (prepare.isNull(columnIndexOf5)) {
                    text = str2;
                } else {
                    text = prepare.getText(columnIndexOf5);
                }
                c10.put(text2, new TableInfo.Column(text2, text3, z11, i11, text, 2));
                if (!prepare.step()) {
                    Map<String, TableInfo.Column> b10 = p0.b(c10);
                    a.a(prepare, null);
                    return b10;
                }
                str2 = null;
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                a.a(prepare, th2);
                throw th3;
            }
        }
    }

    private static final List<ForeignKeyWithSequence> readForeignKeyFieldMappings(SQLiteStatement sQLiteStatement) {
        int columnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "id");
        int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "seq");
        int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "from");
        int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, TypedValues.TransitionType.S_TO);
        List c10 = CollectionsKt.c();
        while (sQLiteStatement.step()) {
            c10.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(columnIndexOf), (int) sQLiteStatement.getLong(columnIndexOf2), sQLiteStatement.getText(columnIndexOf3), sQLiteStatement.getText(columnIndexOf4)));
        }
        return CollectionsKt.T0(CollectionsKt.a(c10));
    }

    private static final Set<TableInfo.ForeignKey> readForeignKeys(SQLiteConnection sQLiteConnection, String str) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "id");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "seq");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "table");
            int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(prepare, "on_delete");
            int columnIndexOf5 = SQLiteStatementUtil.columnIndexOf(prepare, "on_update");
            List<ForeignKeyWithSequence> readForeignKeyFieldMappings = readForeignKeyFieldMappings(prepare);
            prepare.reset();
            Set b10 = y0.b();
            while (prepare.step()) {
                if (prepare.getLong(columnIndexOf2) == 0) {
                    int i10 = (int) prepare.getLong(columnIndexOf);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList<ForeignKeyWithSequence> arrayList3 = new ArrayList();
                    for (Object obj : readForeignKeyFieldMappings) {
                        if (((ForeignKeyWithSequence) obj).getId() == i10) {
                            arrayList3.add(obj);
                        }
                    }
                    for (ForeignKeyWithSequence foreignKeyWithSequence : arrayList3) {
                        arrayList.add(foreignKeyWithSequence.getFrom());
                        arrayList2.add(foreignKeyWithSequence.getTo());
                    }
                    b10.add(new TableInfo.ForeignKey(prepare.getText(columnIndexOf3), prepare.getText(columnIndexOf4), prepare.getText(columnIndexOf5), arrayList, arrayList2));
                }
            }
            Set<TableInfo.ForeignKey> a10 = y0.a(b10);
            a.a(prepare, null);
            return a10;
        } finally {
        }
    }

    @NotNull
    public static final Set<String> readFtsColumns(@NotNull SQLiteConnection connection, @NotNull String tableName) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Set b10 = y0.b();
        SQLiteStatement prepare = connection.prepare("PRAGMA table_info(`" + tableName + "`)");
        try {
            if (prepare.step()) {
                int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "name");
                do {
                    b10.add(prepare.getText(columnIndexOf));
                } while (prepare.step());
            }
            Unit unit = Unit.f60915a;
            a.a(prepare, null);
            return y0.a(b10);
        } finally {
        }
    }

    @NotNull
    public static final Set<String> readFtsOptions(@NotNull SQLiteConnection connection, @NotNull String tableName) {
        String str;
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        SQLiteStatement prepare = connection.prepare("SELECT * FROM sqlite_master WHERE `name` = '" + tableName + '\'');
        try {
            if (prepare.step()) {
                str = prepare.getText(SQLiteStatementUtil.columnIndexOf(prepare, "sql"));
            } else {
                str = "";
            }
            a.a(prepare, null);
            return parseFtsOptions(str);
        } finally {
        }
    }

    private static final TableInfo.Index readIndex(SQLiteConnection sQLiteConnection, String str, boolean z10) {
        String str2;
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "seqno");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, BidResponsedEx.KEY_CID);
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "name");
            int columnIndexOf4 = SQLiteStatementUtil.columnIndexOf(prepare, CampaignEx.JSON_KEY_DESC);
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1 && columnIndexOf4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (prepare.step()) {
                    if (((int) prepare.getLong(columnIndexOf2)) >= 0) {
                        int i10 = (int) prepare.getLong(columnIndexOf);
                        String text = prepare.getText(columnIndexOf3);
                        if (prepare.getLong(columnIndexOf4) > 0) {
                            str2 = "DESC";
                        } else {
                            str2 = "ASC";
                        }
                        linkedHashMap.put(Integer.valueOf(i10), text);
                        linkedHashMap2.put(Integer.valueOf(i10), str2);
                    }
                }
                List<Map.Entry> U0 = CollectionsKt.U0(linkedHashMap.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t10, T t11) {
                        return ps.a.a((Integer) ((Map.Entry) t10).getKey(), (Integer) ((Map.Entry) t11).getKey());
                    }
                });
                ArrayList arrayList = new ArrayList(CollectionsKt.z(U0, 10));
                for (Map.Entry entry : U0) {
                    arrayList.add((String) entry.getValue());
                }
                List d12 = CollectionsKt.d1(arrayList);
                List<Map.Entry> U02 = CollectionsKt.U0(linkedHashMap2.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t10, T t11) {
                        return ps.a.a((Integer) ((Map.Entry) t10).getKey(), (Integer) ((Map.Entry) t11).getKey());
                    }
                });
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(U02, 10));
                for (Map.Entry entry2 : U02) {
                    arrayList2.add((String) entry2.getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z10, d12, CollectionsKt.d1(arrayList2));
                a.a(prepare, null);
                return index;
            }
            a.a(prepare, null);
            return null;
        } finally {
        }
    }

    private static final Set<TableInfo.Index> readIndices(SQLiteConnection sQLiteConnection, String str) {
        boolean z10;
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndexOf = SQLiteStatementUtil.columnIndexOf(prepare, "name");
            int columnIndexOf2 = SQLiteStatementUtil.columnIndexOf(prepare, "origin");
            int columnIndexOf3 = SQLiteStatementUtil.columnIndexOf(prepare, "unique");
            if (columnIndexOf != -1 && columnIndexOf2 != -1 && columnIndexOf3 != -1) {
                Set b10 = y0.b();
                while (prepare.step()) {
                    if (Intrinsics.areEqual("c", prepare.getText(columnIndexOf2))) {
                        String text = prepare.getText(columnIndexOf);
                        if (prepare.getLong(columnIndexOf3) == 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        TableInfo.Index readIndex = readIndex(sQLiteConnection, text, z10);
                        if (readIndex == null) {
                            a.a(prepare, null);
                            return null;
                        }
                        b10.add(readIndex);
                    }
                }
                Set<TableInfo.Index> a10 = y0.a(b10);
                a.a(prepare, null);
                return a10;
            }
            a.a(prepare, null);
            return null;
        } finally {
        }
    }

    @NotNull
    public static final TableInfo readTableInfo(@NotNull SQLiteConnection connection, @NotNull String tableName) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        return new TableInfo(tableName, readColumns(connection, tableName), readForeignKeys(connection, tableName), readIndices(connection, tableName));
    }

    @NotNull
    public static final ViewInfo readViewInfo(@NotNull SQLiteConnection connection, @NotNull String viewName) {
        ViewInfo viewInfo;
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(viewName, "viewName");
        SQLiteStatement prepare = connection.prepare("SELECT name, sql FROM sqlite_master WHERE type = 'view' AND name = '" + viewName + '\'');
        try {
            if (prepare.step()) {
                viewInfo = new ViewInfo(prepare.getText(0), prepare.getText(1));
            } else {
                viewInfo = new ViewInfo(viewName, null);
            }
            a.a(prepare, null);
            return viewInfo;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                a.a(prepare, th2);
                throw th3;
            }
        }
    }
}
