package androidx.datastore.core;

import java.io.FileOutputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UncloseableOutputStream.kt */
@Metadata
/* loaded from: classes2.dex */
public final class UncloseableOutputStream extends OutputStream {
    @NotNull
    private final FileOutputStream fileOutputStream;

    public UncloseableOutputStream(@NotNull FileOutputStream fileOutputStream) {
        Intrinsics.checkNotNullParameter(fileOutputStream, "fileOutputStream");
        this.fileOutputStream = fileOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.fileOutputStream.flush();
    }

    @NotNull
    public final FileOutputStream getFileOutputStream() {
        return this.fileOutputStream;
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        this.fileOutputStream.write(i10);
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] b10) {
        Intrinsics.checkNotNullParameter(b10, "b");
        this.fileOutputStream.write(b10);
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] bytes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.fileOutputStream.write(bytes, i10, i11);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
