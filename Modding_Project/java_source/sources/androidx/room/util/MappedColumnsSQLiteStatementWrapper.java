package androidx.room.util;

import androidx.annotation.IntRange;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StatementUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStatementUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatementUtil.kt\nandroidx/room/util/MappedColumnsSQLiteStatementWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,112:1\n1#2:113\n13537#3,3:114\n*S KotlinDebug\n*F\n+ 1 StatementUtil.kt\nandroidx/room/util/MappedColumnsSQLiteStatementWrapper\n*L\n99#1:114,3\n*E\n"})
/* loaded from: classes2.dex */
public final class MappedColumnsSQLiteStatementWrapper implements SQLiteStatement {
    @NotNull
    private final Map<String, Integer> columnNameToIndexMap;
    @NotNull
    private final String[] columnNames;
    @NotNull
    private final SQLiteStatement delegate;
    @NotNull
    private final int[] mapping;

    public MappedColumnsSQLiteStatementWrapper(@NotNull SQLiteStatement delegate, @NotNull String[] columnNames, @NotNull int[] mapping) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(columnNames, "columnNames");
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        this.delegate = delegate;
        this.columnNames = columnNames;
        this.mapping = mapping;
        if (columnNames.length == mapping.length) {
            Map c10 = p0.c();
            int length = columnNames.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                c10.put(columnNames[i10], Integer.valueOf(this.mapping[i11]));
                i10++;
                i11++;
            }
            int columnCount = getColumnCount();
            for (int i12 = 0; i12 < columnCount; i12++) {
                if (!c10.containsKey(getColumnName(i12))) {
                    c10.put(getColumnName(i12), Integer.valueOf(i12));
                }
            }
            this.columnNameToIndexMap = p0.b(c10);
            return;
        }
        throw new IllegalArgumentException("Expected columnNames.size == mapping.size");
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindBlob */
    public void mo4329bindBlob(@IntRange(from = 1) int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.mo4329bindBlob(i10, value);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindBoolean(@IntRange(from = 1) int i10, boolean z10) {
        this.delegate.bindBoolean(i10, z10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindDouble */
    public void mo4330bindDouble(@IntRange(from = 1) int i10, double d10) {
        this.delegate.mo4330bindDouble(i10, d10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindFloat(@IntRange(from = 1) int i10, float f10) {
        this.delegate.bindFloat(i10, f10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindInt(@IntRange(from = 1) int i10, int i11) {
        this.delegate.bindInt(i10, i11);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindLong */
    public void mo4331bindLong(@IntRange(from = 1) int i10, long j10) {
        this.delegate.mo4331bindLong(i10, j10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindNull */
    public void mo4332bindNull(@IntRange(from = 1) int i10) {
        this.delegate.mo4332bindNull(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindText */
    public void mo4333bindText(@IntRange(from = 1) int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.mo4333bindText(i10, value);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: clearBindings */
    public void mo4334clearBindings() {
        this.delegate.mo4334clearBindings();
    }

    @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public byte[] getBlob(@IntRange(from = 0) int i10) {
        return this.delegate.getBlob(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean getBoolean(@IntRange(from = 0) int i10) {
        return this.delegate.getBoolean(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnCount() {
        return this.delegate.getColumnCount();
    }

    public final int getColumnIndex(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer num = this.columnNameToIndexMap.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public String getColumnName(@IntRange(from = 0) int i10) {
        return this.delegate.getColumnName(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public List<String> getColumnNames() {
        return this.delegate.getColumnNames();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnType(@IntRange(from = 0) int i10) {
        return this.delegate.getColumnType(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public double getDouble(@IntRange(from = 0) int i10) {
        return this.delegate.getDouble(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public float getFloat(@IntRange(from = 0) int i10) {
        return this.delegate.getFloat(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getInt(@IntRange(from = 0) int i10) {
        return this.delegate.getInt(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public long getLong(@IntRange(from = 0) int i10) {
        return this.delegate.getLong(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public String getText(@IntRange(from = 0) int i10) {
        return this.delegate.getText(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean isNull(@IntRange(from = 0) int i10) {
        return this.delegate.isNull(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void reset() {
        this.delegate.reset();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean step() {
        return this.delegate.step();
    }
}
