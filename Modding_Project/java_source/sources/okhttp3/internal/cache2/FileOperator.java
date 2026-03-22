package okhttp3.internal.cache2;

import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileOperator.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FileOperator {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f63716a;

    public FileOperator(@NotNull FileChannel fileChannel) {
        Intrinsics.checkNotNullParameter(fileChannel, "fileChannel");
        this.f63716a = fileChannel;
    }

    public final void a(long j10, @NotNull Buffer sink, long j11) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j11 >= 0) {
            while (j11 > 0) {
                long transferTo = this.f63716a.transferTo(j10, j11, sink);
                j10 += transferTo;
                j11 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public final void b(long j10, @NotNull Buffer source, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (j11 >= 0 && j11 <= source.size()) {
            while (j11 > 0) {
                long transferFrom = this.f63716a.transferFrom(source, j10, j11);
                j10 += transferFrom;
                j11 -= transferFrom;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
