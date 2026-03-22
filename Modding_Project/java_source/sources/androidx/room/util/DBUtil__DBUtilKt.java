package androidx.room.util;

import android.database.SQLException;
import androidx.annotation.RestrictTo;
import androidx.room.PooledConnection;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ys.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DBUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDBUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1869#2,2:172\n*S KotlinDebug\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n109#1:172,2\n*E\n"})
/* loaded from: classes2.dex */
public final /* synthetic */ class DBUtil__DBUtilKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void dropFtsSyncTriggers(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        List c10 = CollectionsKt.c();
        SQLiteStatement prepare = connection.prepare("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (prepare.step()) {
            try {
                c10.add(prepare.getText(0));
            } finally {
            }
        }
        Unit unit = Unit.f60915a;
        a.a(prepare, null);
        for (String str : CollectionsKt.a(c10)) {
            if (StringsKt.V(str, "room_fts_content_sync_", false, 2, null)) {
                SQLite.execSQL(connection, "DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final void foreignKeyCheck(@NotNull SQLiteConnection db2, @NotNull String tableName) {
        Intrinsics.checkNotNullParameter(db2, "db");
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        SQLiteStatement prepare = db2.prepare("PRAGMA foreign_key_check(`" + tableName + "`)");
        try {
            if (!prepare.step()) {
                Unit unit = Unit.f60915a;
                a.a(prepare, null);
                return;
            }
            throw new SQLException(processForeignKeyCheckFailure$DBUtil__DBUtilKt(prepare));
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                a.a(prepare, th2);
                throw th3;
            }
        }
    }

    @Nullable
    public static final <R> Object internalPerform(@NotNull RoomDatabase roomDatabase, boolean z10, boolean z11, @NotNull Function2<? super PooledConnection, ? super c<? super R>, ? extends Object> function2, @NotNull c<? super R> cVar) {
        return roomDatabase.useConnection(z10, new DBUtil__DBUtilKt$internalPerform$2(z11, z10, roomDatabase, function2, null), cVar);
    }

    private static final <R> Object internalPerform$$forInline(RoomDatabase roomDatabase, boolean z10, boolean z11, Function2<? super PooledConnection, ? super c<? super R>, ? extends Object> function2, c<? super R> cVar) {
        DBUtil__DBUtilKt$internalPerform$2 dBUtil__DBUtilKt$internalPerform$2 = new DBUtil__DBUtilKt$internalPerform$2(z11, z10, roomDatabase, function2, null);
        InlineMarker.mark(0);
        Object useConnection = roomDatabase.useConnection(z10, dBUtil__DBUtilKt$internalPerform$2, cVar);
        InlineMarker.mark(1);
        return useConnection;
    }

    private static final String processForeignKeyCheckFailure$DBUtil__DBUtilKt(SQLiteStatement sQLiteStatement) {
        StringBuilder sb2 = new StringBuilder();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i10 = 0;
        do {
            if (i10 == 0) {
                sb2.append("Foreign key violation(s) detected in '");
                sb2.append(sQLiteStatement.getText(0));
                sb2.append("'.\n");
            }
            String text = sQLiteStatement.getText(3);
            if (!linkedHashMap.containsKey(text)) {
                linkedHashMap.put(text, sQLiteStatement.getText(2));
            }
            i10++;
        } while (sQLiteStatement.step());
        sb2.append("Number of different violations discovered: ");
        sb2.append(linkedHashMap.keySet().size());
        sb2.append("\n");
        sb2.append("Number of rows in violation: ");
        sb2.append(i10);
        sb2.append("\n");
        sb2.append("Violation(s) detected in the following constraint(s):\n");
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            sb2.append("\tParent Table = ");
            sb2.append((String) entry.getValue());
            sb2.append(", Foreign Key Constraint Index = ");
            sb2.append((String) entry.getKey());
            sb2.append("\n");
        }
        return sb2.toString();
    }
}
