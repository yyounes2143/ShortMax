package com.applovin.shadow.okio;

import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NioFileSystemFileHandle.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NioFileSystemFileHandle extends FileHandle {
    @NotNull
    private final FileChannel fileChannel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NioFileSystemFileHandle(boolean z10, @NotNull FileChannel fileChannel) {
        super(z10);
        Intrinsics.checkNotNullParameter(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    @Override // com.applovin.shadow.okio.FileHandle
    protected synchronized void protectedClose() {
        this.fileChannel.close();
    }

    @Override // com.applovin.shadow.okio.FileHandle
    protected synchronized void protectedFlush() {
        this.fileChannel.force(true);
    }

    @Override // com.applovin.shadow.okio.FileHandle
    protected synchronized int protectedRead(long j10, @NotNull byte[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.fileChannel.position(j10);
        ByteBuffer wrap = ByteBuffer.wrap(array, i10, i11);
        int i12 = 0;
        while (true) {
            if (i12 >= i11) {
                break;
            }
            int read = this.fileChannel.read(wrap);
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

    @Override // com.applovin.shadow.okio.FileHandle
    protected synchronized void protectedResize(long j10) {
        try {
            long size = size();
            long j11 = j10 - size;
            if (j11 > 0) {
                int i10 = (int) j11;
                protectedWrite(size, new byte[i10], 0, i10);
            } else {
                this.fileChannel.truncate(j10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.applovin.shadow.okio.FileHandle
    protected synchronized long protectedSize() {
        return this.fileChannel.size();
    }

    @Override // com.applovin.shadow.okio.FileHandle
    protected synchronized void protectedWrite(long j10, @NotNull byte[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.fileChannel.position(j10);
        this.fileChannel.write(ByteBuffer.wrap(array, i10, i11));
    }
}
