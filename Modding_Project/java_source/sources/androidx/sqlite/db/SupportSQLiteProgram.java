package androidx.sqlite.db;

import java.io.Closeable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SupportSQLiteProgram.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int i10, @NotNull byte[] bArr);

    void bindDouble(int i10, double d10);

    void bindLong(int i10, long j10);

    void bindNull(int i10);

    void bindString(int i10, @NotNull String str);

    void clearBindings();
}
