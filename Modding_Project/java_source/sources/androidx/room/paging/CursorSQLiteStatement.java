package androidx.room.paging;

import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CursorSQLiteStatement.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class CursorSQLiteStatement implements SQLiteStatement {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Cursor cursor;

    /* compiled from: CursorSQLiteStatement.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getDataType(Cursor cursor, int i10) {
            int type = cursor.getType(i10);
            int type2 = cursor.getType(i10);
            if (type2 != 0) {
                if (type2 == 1) {
                    return 1;
                }
                if (type2 == 2) {
                    return 2;
                }
                if (type2 == 3) {
                    return 3;
                }
                if (type2 == 4) {
                    return 4;
                }
                throw new IllegalStateException(("Unknown field type: " + type).toString());
            }
            return 5;
        }

        private Companion() {
        }
    }

    public CursorSQLiteStatement(@NotNull Cursor cursor) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        this.cursor = cursor;
    }

    @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
    public void close() {
        this.cursor.close();
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public byte[] getBlob(int i10) {
        byte[] blob = this.cursor.getBlob(i10);
        Intrinsics.checkNotNullExpressionValue(blob, "getBlob(...)");
        return blob;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnCount() {
        return this.cursor.getColumnCount();
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public String getColumnName(int i10) {
        String columnName = this.cursor.getColumnName(i10);
        Intrinsics.checkNotNullExpressionValue(columnName, "getColumnName(...)");
        return columnName;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnType(int i10) {
        return Companion.getDataType(this.cursor, i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public double getDouble(int i10) {
        return this.cursor.getDouble(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public long getLong(int i10) {
        return this.cursor.getLong(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public String getText(int i10) {
        String string = this.cursor.getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean isNull(int i10) {
        return this.cursor.isNull(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void reset() {
        this.cursor.moveToPosition(-1);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean step() {
        return this.cursor.moveToNext();
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    /* renamed from: bindBlob */
    public Void mo4329bindBlob(int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    /* renamed from: bindDouble */
    public Void mo4330bindDouble(int i10, double d10) {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    /* renamed from: bindLong */
    public Void mo4331bindLong(int i10, long j10) {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    /* renamed from: bindNull */
    public Void mo4332bindNull(int i10) {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    /* renamed from: bindText */
    public Void mo4333bindText(int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    /* renamed from: clearBindings */
    public Void mo4334clearBindings() {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }
}
