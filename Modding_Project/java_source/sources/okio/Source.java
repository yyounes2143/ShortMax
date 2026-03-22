package okio;

import java.io.Closeable;
import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Source.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Source extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(@NotNull Buffer buffer, long j10) throws IOException;

    @NotNull
    Timeout timeout();
}
