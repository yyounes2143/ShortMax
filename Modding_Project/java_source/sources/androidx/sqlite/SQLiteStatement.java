package androidx.sqlite;

import androidx.annotation.IntRange;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SQLiteStatement.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSQLiteStatement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLiteStatement.kt\nandroidx/sqlite/SQLiteStatement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1#2:234\n*E\n"})
/* loaded from: classes2.dex */
public interface SQLiteStatement extends AutoCloseable {
    /* renamed from: bindBlob */
    void mo4329bindBlob(@IntRange(from = 1) int i10, @NotNull byte[] bArr);

    default void bindBoolean(@IntRange(from = 1) int i10, boolean z10) {
        long j10;
        if (z10) {
            j10 = 1;
        } else {
            j10 = 0;
        }
        mo4331bindLong(i10, j10);
    }

    /* renamed from: bindDouble */
    void mo4330bindDouble(@IntRange(from = 1) int i10, double d10);

    default void bindFloat(@IntRange(from = 1) int i10, float f10) {
        mo4330bindDouble(i10, f10);
    }

    default void bindInt(@IntRange(from = 1) int i10, int i11) {
        mo4331bindLong(i10, i11);
    }

    /* renamed from: bindLong */
    void mo4331bindLong(@IntRange(from = 1) int i10, long j10);

    /* renamed from: bindNull */
    void mo4332bindNull(@IntRange(from = 1) int i10);

    /* renamed from: bindText */
    void mo4333bindText(@IntRange(from = 1) int i10, @NotNull String str);

    /* renamed from: clearBindings */
    void mo4334clearBindings();

    @Override // java.lang.AutoCloseable
    void close();

    @NotNull
    byte[] getBlob(@IntRange(from = 0) int i10);

    default boolean getBoolean(@IntRange(from = 0) int i10) {
        if (getLong(i10) != 0) {
            return true;
        }
        return false;
    }

    int getColumnCount();

    @NotNull
    String getColumnName(@IntRange(from = 0) int i10);

    @NotNull
    default List<String> getColumnNames() {
        int columnCount = getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i10 = 0; i10 < columnCount; i10++) {
            arrayList.add(getColumnName(i10));
        }
        return arrayList;
    }

    int getColumnType(@IntRange(from = 0) int i10);

    double getDouble(@IntRange(from = 0) int i10);

    default float getFloat(@IntRange(from = 0) int i10) {
        return (float) getDouble(i10);
    }

    default int getInt(@IntRange(from = 0) int i10) {
        return (int) getLong(i10);
    }

    long getLong(@IntRange(from = 0) int i10);

    @NotNull
    String getText(@IntRange(from = 0) int i10);

    boolean isNull(@IntRange(from = 0) int i10);

    void reset();

    boolean step();
}
