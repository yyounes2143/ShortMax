package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EditingBuffer.kt */
@Metadata
/* loaded from: classes.dex */
public final class EditingBuffer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NOWHERE = -1;
    private int compositionEnd;
    private int compositionStart;
    @NotNull
    private final PartialGapBuffer gapBuffer;
    private int selectionEnd;
    private int selectionStart;

    /* compiled from: EditingBuffer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ EditingBuffer(AnnotatedString annotatedString, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j10);
    }

    public final void cancelComposition$ui_text_release() {
        replace$ui_text_release(this.compositionStart, this.compositionEnd, "");
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void commitComposition$ui_text_release() {
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void delete$ui_text_release(int i10, int i11) {
        long TextRange = TextRangeKt.TextRange(i10, i11);
        this.gapBuffer.replace(i10, i11, "");
        long m3819updateRangeAfterDeletepWDy79M = EditingBufferKt.m3819updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.selectionStart, this.selectionEnd), TextRange);
        this.selectionStart = TextRange.m3695getMinimpl(m3819updateRangeAfterDeletepWDy79M);
        this.selectionEnd = TextRange.m3694getMaximpl(m3819updateRangeAfterDeletepWDy79M);
        if (hasComposition$ui_text_release()) {
            long m3819updateRangeAfterDeletepWDy79M2 = EditingBufferKt.m3819updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd), TextRange);
            if (TextRange.m3691getCollapsedimpl(m3819updateRangeAfterDeletepWDy79M2)) {
                commitComposition$ui_text_release();
                return;
            }
            this.compositionStart = TextRange.m3695getMinimpl(m3819updateRangeAfterDeletepWDy79M2);
            this.compositionEnd = TextRange.m3694getMaximpl(m3819updateRangeAfterDeletepWDy79M2);
        }
    }

    public final char get$ui_text_release(int i10) {
        return this.gapBuffer.get(i10);
    }

    @Nullable
    /* renamed from: getComposition-MzsxiRA$ui_text_release  reason: not valid java name */
    public final TextRange m3817getCompositionMzsxiRA$ui_text_release() {
        if (hasComposition$ui_text_release()) {
            return TextRange.m3685boximpl(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd));
        }
        return null;
    }

    public final int getCompositionEnd$ui_text_release() {
        return this.compositionEnd;
    }

    public final int getCompositionStart$ui_text_release() {
        return this.compositionStart;
    }

    public final int getCursor$ui_text_release() {
        int i10 = this.selectionStart;
        int i11 = this.selectionEnd;
        if (i10 != i11) {
            return -1;
        }
        return i11;
    }

    public final int getLength$ui_text_release() {
        return this.gapBuffer.getLength();
    }

    /* renamed from: getSelection-d9O1mEE$ui_text_release  reason: not valid java name */
    public final long m3818getSelectiond9O1mEE$ui_text_release() {
        return TextRangeKt.TextRange(this.selectionStart, this.selectionEnd);
    }

    public final int getSelectionEnd$ui_text_release() {
        return this.selectionEnd;
    }

    public final int getSelectionStart$ui_text_release() {
        return this.selectionStart;
    }

    public final boolean hasComposition$ui_text_release() {
        if (this.compositionStart != -1) {
            return true;
        }
        return false;
    }

    public final void replace$ui_text_release(int i10, int i11, @NotNull AnnotatedString text) {
        Intrinsics.checkNotNullParameter(text, "text");
        replace$ui_text_release(i10, i11, text.getText());
    }

    public final void setComposition$ui_text_release(int i10, int i11) {
        if (i10 >= 0 && i10 <= this.gapBuffer.getLength()) {
            if (i11 >= 0 && i11 <= this.gapBuffer.getLength()) {
                if (i10 < i11) {
                    this.compositionStart = i10;
                    this.compositionEnd = i11;
                    return;
                }
                throw new IllegalArgumentException("Do not set reversed or empty range: " + i10 + " > " + i11);
            }
            throw new IndexOutOfBoundsException("end (" + i11 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        throw new IndexOutOfBoundsException("start (" + i10 + ") offset is outside of text region " + this.gapBuffer.getLength());
    }

    public final void setCursor$ui_text_release(int i10) {
        setSelection$ui_text_release(i10, i10);
    }

    public final void setSelection$ui_text_release(int i10, int i11) {
        if (i10 >= 0 && i10 <= this.gapBuffer.getLength()) {
            if (i11 >= 0 && i11 <= this.gapBuffer.getLength()) {
                if (i10 <= i11) {
                    this.selectionStart = i10;
                    this.selectionEnd = i11;
                    return;
                }
                throw new IllegalArgumentException("Do not set reversed range: " + i10 + " > " + i11);
            }
            throw new IndexOutOfBoundsException("end (" + i11 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        throw new IndexOutOfBoundsException("start (" + i10 + ") offset is outside of text region " + this.gapBuffer.getLength());
    }

    @NotNull
    public final AnnotatedString toAnnotatedString$ui_text_release() {
        return new AnnotatedString(toString(), null, null, 6, null);
    }

    @NotNull
    public String toString() {
        return this.gapBuffer.toString();
    }

    public /* synthetic */ EditingBuffer(String str, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10);
    }

    public final void replace$ui_text_release(int i10, int i11, @NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (i10 >= 0 && i10 <= this.gapBuffer.getLength()) {
            if (i11 < 0 || i11 > this.gapBuffer.getLength()) {
                throw new IndexOutOfBoundsException("end (" + i11 + ") offset is outside of text region " + this.gapBuffer.getLength());
            } else if (i10 <= i11) {
                this.gapBuffer.replace(i10, i11, text);
                this.selectionStart = text.length() + i10;
                this.selectionEnd = i10 + text.length();
                this.compositionStart = -1;
                this.compositionEnd = -1;
                return;
            } else {
                throw new IllegalArgumentException("Do not set reversed range: " + i10 + " > " + i11);
            }
        }
        throw new IndexOutOfBoundsException("start (" + i10 + ") offset is outside of text region " + this.gapBuffer.getLength());
    }

    private EditingBuffer(AnnotatedString annotatedString, long j10) {
        this.gapBuffer = new PartialGapBuffer(annotatedString.getText());
        this.selectionStart = TextRange.m3695getMinimpl(j10);
        this.selectionEnd = TextRange.m3694getMaximpl(j10);
        this.compositionStart = -1;
        this.compositionEnd = -1;
        int m3695getMinimpl = TextRange.m3695getMinimpl(j10);
        int m3694getMaximpl = TextRange.m3694getMaximpl(j10);
        if (m3695getMinimpl >= 0 && m3695getMinimpl <= annotatedString.length()) {
            if (m3694getMaximpl < 0 || m3694getMaximpl > annotatedString.length()) {
                throw new IndexOutOfBoundsException("end (" + m3694getMaximpl + ") offset is outside of text region " + annotatedString.length());
            } else if (m3695getMinimpl <= m3694getMaximpl) {
                return;
            } else {
                throw new IllegalArgumentException("Do not set reversed range: " + m3695getMinimpl + " > " + m3694getMaximpl);
            }
        }
        throw new IndexOutOfBoundsException("start (" + m3695getMinimpl + ") offset is outside of text region " + annotatedString.length());
    }

    private EditingBuffer(String str, long j10) {
        this(new AnnotatedString(str, null, null, 6, null), j10, (DefaultConstructorMarker) null);
    }
}
