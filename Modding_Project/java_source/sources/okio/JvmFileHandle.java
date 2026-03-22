package okio;

import java.io.RandomAccessFile;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: JvmFileHandle.kt */
@Metadata
/* loaded from: classes8.dex */
public final class JvmFileHandle extends FileHandle {
    @NotNull
    private final RandomAccessFile randomAccessFile;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFileHandle(boolean z10, @NotNull RandomAccessFile randomAccessFile) {
        super(z10);
        Intrinsics.checkNotNullParameter(randomAccessFile, "randomAccessFile");
        this.randomAccessFile = randomAccessFile;
    }

    @Override // okio.FileHandle
    protected synchronized void protectedClose() {
        this.randomAccessFile.close();
    }

    @Override // okio.FileHandle
    protected synchronized void protectedFlush() {
        this.randomAccessFile.getFD().sync();
    }

    @Override // okio.FileHandle
    protected synchronized int protectedRead(long j10, @NotNull byte[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.randomAccessFile.seek(j10);
        int i12 = 0;
        while (true) {
            if (i12 >= i11) {
                break;
            }
            int read = this.randomAccessFile.read(array, i10, i11 - i12);
            if (read == -1) {
                if (i12 == 0) {
                    return -1;
                }
            } else {
                i12 += read;
            }
        }
        return i12;
    }

    @Override // okio.FileHandle
    protected synchronized void protectedResize(long j10) {
        try {
            long size = size();
            long j11 = j10 - size;
            if (j11 > 0) {
                int i10 = (int) j11;
                protectedWrite(size, new byte[i10], 0, i10);
            } else {
                this.randomAccessFile.setLength(j10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // okio.FileHandle
    protected synchronized long protectedSize() {
        return this.randomAccessFile.length();
    }

    @Override // okio.FileHandle
    protected synchronized void protectedWrite(long j10, @NotNull byte[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.randomAccessFile.seek(j10);
        this.randomAccessFile.write(array, i10, i11);
    }
}
