package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PixelMap.kt */
@Metadata
/* loaded from: classes.dex */
public final class PixelMap {
    @NotNull
    private final int[] buffer;
    private final int bufferOffset;
    private final int height;
    private final int stride;
    private final int width;

    public PixelMap(@NotNull int[] buffer, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.buffer = buffer;
        this.width = i10;
        this.height = i11;
        this.bufferOffset = i12;
        this.stride = i13;
    }

    /* renamed from: get-WaAFU9c  reason: not valid java name */
    public final long m2099getWaAFU9c(int i10, int i11) {
        return ColorKt.Color(this.buffer[this.bufferOffset + (i11 * this.stride) + i10]);
    }

    @NotNull
    public final int[] getBuffer() {
        return this.buffer;
    }

    public final int getBufferOffset() {
        return this.bufferOffset;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getStride() {
        return this.stride;
    }

    public final int getWidth() {
        return this.width;
    }
}
