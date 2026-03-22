package androidx.compose.ui.text.input;

import androidx.compose.ui.text.InternalTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GapBuffer.kt */
@Metadata
@InternalTextApi
/* loaded from: classes.dex */
public final class PartialGapBuffer {
    public static final int BUF_SIZE = 255;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NOWHERE = -1;
    public static final int SURROUNDING_SIZE = 64;
    private int bufEnd;
    private int bufStart;
    @Nullable
    private GapBuffer buffer;
    @NotNull
    private String text;

    /* compiled from: GapBuffer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public PartialGapBuffer(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
        this.bufStart = -1;
        this.bufEnd = -1;
    }

    public final char get(int i10) {
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer == null) {
            return this.text.charAt(i10);
        }
        if (i10 < this.bufStart) {
            return this.text.charAt(i10);
        }
        int length = gapBuffer.length();
        int i11 = this.bufStart;
        if (i10 < length + i11) {
            return gapBuffer.get(i10 - i11);
        }
        return this.text.charAt(i10 - ((length - this.bufEnd) + i11));
    }

    public final int getLength() {
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer == null) {
            return this.text.length();
        }
        return (this.text.length() - (this.bufEnd - this.bufStart)) + gapBuffer.length();
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final void replace(int i10, int i11, @NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer == null) {
            int max = Math.max(255, text.length() + 128);
            char[] cArr = new char[max];
            int min = Math.min(i10, 64);
            int min2 = Math.min(this.text.length() - i11, 64);
            int i12 = i10 - min;
            GapBufferKt.toCharArray(this.text, cArr, 0, i12, i10);
            int i13 = max - min2;
            int i14 = i11 + min2;
            GapBufferKt.toCharArray(this.text, cArr, i13, i11, i14);
            GapBufferKt.toCharArray$default(text, cArr, min, 0, 0, 12, null);
            this.buffer = new GapBuffer(cArr, min + text.length(), i13);
            this.bufStart = i12;
            this.bufEnd = i14;
            return;
        }
        int i15 = this.bufStart;
        int i16 = i10 - i15;
        int i17 = i11 - i15;
        if (i16 >= 0 && i17 <= gapBuffer.length()) {
            gapBuffer.replace(i16, i17, text);
            return;
        }
        this.text = toString();
        this.buffer = null;
        this.bufStart = -1;
        this.bufEnd = -1;
        replace(i10, i11, text);
    }

    public final void setText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    @NotNull
    public String toString() {
        GapBuffer gapBuffer = this.buffer;
        if (gapBuffer == null) {
            return this.text;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) this.text, 0, this.bufStart);
        gapBuffer.append(sb2);
        String str = this.text;
        sb2.append((CharSequence) str, this.bufEnd, str.length());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "sb.toString()");
        return sb3;
    }
}
