package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GapBuffer.kt */
@Metadata
/* loaded from: classes.dex */
final class GapBuffer {
    @NotNull
    private char[] buffer;
    private int capacity;
    private int gapEnd;
    private int gapStart;

    public GapBuffer(@NotNull char[] initBuffer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initBuffer, "initBuffer");
        this.capacity = initBuffer.length;
        this.buffer = initBuffer;
        this.gapStart = i10;
        this.gapEnd = i11;
    }

    private final void delete(int i10, int i11) {
        int i12 = this.gapStart;
        if (i10 < i12 && i11 <= i12) {
            int i13 = i12 - i11;
            char[] cArr = this.buffer;
            n.i(cArr, cArr, this.gapEnd - i13, i11, i12);
            this.gapStart = i10;
            this.gapEnd -= i13;
        } else if (i10 < i12 && i11 >= i12) {
            this.gapEnd = i11 + gapLength();
            this.gapStart = i10;
        } else {
            int gapLength = i10 + gapLength();
            int gapLength2 = i11 + gapLength();
            int i14 = this.gapEnd;
            char[] cArr2 = this.buffer;
            n.i(cArr2, cArr2, this.gapStart, i14, gapLength);
            this.gapStart += gapLength - i14;
            this.gapEnd = gapLength2;
        }
    }

    private final int gapLength() {
        return this.gapEnd - this.gapStart;
    }

    private final void makeSureAvailableSpace(int i10) {
        if (i10 <= gapLength()) {
            return;
        }
        int gapLength = i10 - gapLength();
        int i11 = this.capacity;
        do {
            i11 *= 2;
        } while (i11 - this.capacity < gapLength);
        char[] cArr = new char[i11];
        n.i(this.buffer, cArr, 0, 0, this.gapStart);
        int i12 = this.capacity;
        int i13 = this.gapEnd;
        int i14 = i12 - i13;
        int i15 = i11 - i14;
        n.i(this.buffer, cArr, i15, i13, i14 + i13);
        this.buffer = cArr;
        this.capacity = i11;
        this.gapEnd = i15;
    }

    public final void append(@NotNull StringBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.append(this.buffer, 0, this.gapStart);
        char[] cArr = this.buffer;
        int i10 = this.gapEnd;
        builder.append(cArr, i10, this.capacity - i10);
    }

    public final char get(int i10) {
        int i11 = this.gapStart;
        if (i10 < i11) {
            return this.buffer[i10];
        }
        return this.buffer[(i10 - i11) + this.gapEnd];
    }

    public final int length() {
        return this.capacity - gapLength();
    }

    public final void replace(int i10, int i11, @NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        makeSureAvailableSpace(text.length() - (i11 - i10));
        delete(i10, i11);
        GapBufferKt.toCharArray$default(text, this.buffer, this.gapStart, 0, 0, 12, null);
        this.gapStart += text.length();
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) sb2);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply { append(this) }.toString()");
        return sb3;
    }
}
