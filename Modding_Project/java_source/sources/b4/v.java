package b4;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MemoryChunk.kt */
@Metadata
/* loaded from: classes3.dex */
public interface v {
    long A() throws UnsupportedOperationException;

    int B(int i10, @NotNull byte[] bArr, int i11, int i12);

    @Nullable
    ByteBuffer C();

    byte D(int i10);

    int F(int i10, @NotNull byte[] bArr, int i11, int i12);

    void P(int i10, @NotNull v vVar, int i11, int i12);

    void close();

    int getSize();

    long getUniqueId();

    boolean isClosed();
}
