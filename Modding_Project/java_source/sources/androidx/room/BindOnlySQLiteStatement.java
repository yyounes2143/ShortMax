package androidx.room;

import androidx.annotation.IntRange;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomRawQuery.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BindOnlySQLiteStatement implements SQLiteStatement {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String ONLY_BIND_CALLS_ALLOWED_ERROR = "Only bind*() calls are allowed on the RoomRawQuery received statement.";
    private final /* synthetic */ SQLiteStatement $$delegate_0;

    /* compiled from: RoomRawQuery.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BindOnlySQLiteStatement(@NotNull SQLiteStatement delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.$$delegate_0 = delegate;
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindBlob */
    public void mo4329bindBlob(@IntRange(from = 1) int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.mo4329bindBlob(i10, value);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindBoolean(@IntRange(from = 1) int i10, boolean z10) {
        this.$$delegate_0.bindBoolean(i10, z10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindDouble */
    public void mo4330bindDouble(@IntRange(from = 1) int i10, double d10) {
        this.$$delegate_0.mo4330bindDouble(i10, d10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindFloat(@IntRange(from = 1) int i10, float f10) {
        this.$$delegate_0.bindFloat(i10, f10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindInt(@IntRange(from = 1) int i10, int i11) {
        this.$$delegate_0.bindInt(i10, i11);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindLong */
    public void mo4331bindLong(@IntRange(from = 1) int i10, long j10) {
        this.$$delegate_0.mo4331bindLong(i10, j10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindNull */
    public void mo4332bindNull(@IntRange(from = 1) int i10) {
        this.$$delegate_0.mo4332bindNull(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: bindText */
    public void mo4333bindText(@IntRange(from = 1) int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.mo4333bindText(i10, value);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* renamed from: clearBindings */
    public void mo4334clearBindings() {
        this.$$delegate_0.mo4334clearBindings();
    }

    @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public byte[] getBlob(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean getBoolean(@IntRange(from = 0) int i10) {
        return this.$$delegate_0.getBoolean(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnCount() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public String getColumnName(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public List<String> getColumnNames() {
        return this.$$delegate_0.getColumnNames();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnType(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public double getDouble(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public float getFloat(@IntRange(from = 0) int i10) {
        return this.$$delegate_0.getFloat(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getInt(@IntRange(from = 0) int i10) {
        return this.$$delegate_0.getInt(i10);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public long getLong(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    @NotNull
    public String getText(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean isNull(int i10) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void reset() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean step() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }
}
