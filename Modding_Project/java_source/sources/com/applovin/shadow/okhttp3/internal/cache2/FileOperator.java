package com.applovin.shadow.okhttp3.internal.cache2;

import com.applovin.shadow.okio.Buffer;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileOperator.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FileOperator {
    @NotNull
    private final FileChannel fileChannel;

    public FileOperator(@NotNull FileChannel fileChannel) {
        Intrinsics.checkNotNullParameter(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j10, @NotNull Buffer sink, long j11) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j11 >= 0) {
            while (j11 > 0) {
                long transferTo = this.fileChannel.transferTo(j10, j11, sink);
                j10 += transferTo;
                j11 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public final void write(long j10, @NotNull Buffer source, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (j11 >= 0 && j11 <= source.size()) {
            while (j11 > 0) {
                long transferFrom = this.fileChannel.transferFrom(source, j10, j11);
                j10 += transferFrom;
                j11 -= transferFrom;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
