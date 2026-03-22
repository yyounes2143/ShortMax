package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteProgram;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: QueryInterceptorProgram.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class QueryInterceptorProgram implements SupportSQLiteProgram {
    @NotNull
    private final List<Object> bindArgsCache = new ArrayList();

    private final void saveArgsToCache(int i10, Object obj) {
        int size;
        int i11 = i10 - 1;
        if (i11 >= this.bindArgsCache.size() && (size = this.bindArgsCache.size()) <= i11) {
            while (true) {
                this.bindArgsCache.add(null);
                if (size == i11) {
                    break;
                }
                size++;
            }
        }
        this.bindArgsCache.set(i11, obj);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindBlob(int i10, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        saveArgsToCache(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindDouble(int i10, double d10) {
        saveArgsToCache(i10, Double.valueOf(d10));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindLong(int i10, long j10) {
        saveArgsToCache(i10, Long.valueOf(j10));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindNull(int i10) {
        saveArgsToCache(i10, null);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void bindString(int i10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        saveArgsToCache(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void clearBindings() {
        this.bindArgsCache.clear();
    }

    @NotNull
    public final List<Object> getBindArgsCache$room_runtime() {
        return this.bindArgsCache;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
