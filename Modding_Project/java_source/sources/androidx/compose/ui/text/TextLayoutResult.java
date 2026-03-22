package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextLayoutResult.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextLayoutResult {
    private final float firstBaseline;
    private final float lastBaseline;
    @NotNull
    private final TextLayoutInput layoutInput;
    @NotNull
    private final MultiParagraph multiParagraph;
    @NotNull
    private final List<Rect> placeholderRects;
    private final long size;

    public /* synthetic */ TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(textLayoutInput, multiParagraph, j10);
    }

    /* renamed from: copy-O0kMr_c$default  reason: not valid java name */
    public static /* synthetic */ TextLayoutResult m3680copyO0kMr_c$default(TextLayoutResult textLayoutResult, TextLayoutInput textLayoutInput, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textLayoutInput = textLayoutResult.layoutInput;
        }
        if ((i10 & 2) != 0) {
            j10 = textLayoutResult.size;
        }
        return textLayoutResult.m3681copyO0kMr_c(textLayoutInput, j10);
    }

    public static /* synthetic */ int getLineEnd$default(TextLayoutResult textLayoutResult, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return textLayoutResult.getLineEnd(i10, z10);
    }

    @NotNull
    /* renamed from: copy-O0kMr_c  reason: not valid java name */
    public final TextLayoutResult m3681copyO0kMr_c(@NotNull TextLayoutInput layoutInput, long j10) {
        Intrinsics.checkNotNullParameter(layoutInput, "layoutInput");
        return new TextLayoutResult(layoutInput, this.multiParagraph, j10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextLayoutResult)) {
            return false;
        }
        TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
        if (Intrinsics.areEqual(this.layoutInput, textLayoutResult.layoutInput) && Intrinsics.areEqual(this.multiParagraph, textLayoutResult.multiParagraph) && IntSize.m4207equalsimpl0(this.size, textLayoutResult.size) && this.firstBaseline == textLayoutResult.firstBaseline && this.lastBaseline == textLayoutResult.lastBaseline && Intrinsics.areEqual(this.placeholderRects, textLayoutResult.placeholderRects)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ResolvedTextDirection getBidiRunDirection(int i10) {
        return this.multiParagraph.getBidiRunDirection(i10);
    }

    @NotNull
    public final Rect getBoundingBox(int i10) {
        return this.multiParagraph.getBoundingBox(i10);
    }

    @NotNull
    public final Rect getCursorRect(int i10) {
        return this.multiParagraph.getCursorRect(i10);
    }

    public final boolean getDidOverflowHeight() {
        if (!this.multiParagraph.getDidExceedMaxLines() && IntSize.m4208getHeightimpl(this.size) >= this.multiParagraph.getHeight()) {
            return false;
        }
        return true;
    }

    public final boolean getDidOverflowWidth() {
        if (IntSize.m4209getWidthimpl(this.size) < this.multiParagraph.getWidth()) {
            return true;
        }
        return false;
    }

    public final float getFirstBaseline() {
        return this.firstBaseline;
    }

    public final boolean getHasVisualOverflow() {
        if (!getDidOverflowWidth() && !getDidOverflowHeight()) {
            return false;
        }
        return true;
    }

    public final float getHorizontalPosition(int i10, boolean z10) {
        return this.multiParagraph.getHorizontalPosition(i10, z10);
    }

    public final float getLastBaseline() {
        return this.lastBaseline;
    }

    @NotNull
    public final TextLayoutInput getLayoutInput() {
        return this.layoutInput;
    }

    public final float getLineBottom(int i10) {
        return this.multiParagraph.getLineBottom(i10);
    }

    public final int getLineCount() {
        return this.multiParagraph.getLineCount();
    }

    public final int getLineEnd(int i10, boolean z10) {
        return this.multiParagraph.getLineEnd(i10, z10);
    }

    public final int getLineForOffset(int i10) {
        return this.multiParagraph.getLineForOffset(i10);
    }

    public final int getLineForVerticalPosition(float f10) {
        return this.multiParagraph.getLineForVerticalPosition(f10);
    }

    public final float getLineLeft(int i10) {
        return this.multiParagraph.getLineLeft(i10);
    }

    public final float getLineRight(int i10) {
        return this.multiParagraph.getLineRight(i10);
    }

    public final int getLineStart(int i10) {
        return this.multiParagraph.getLineStart(i10);
    }

    public final float getLineTop(int i10) {
        return this.multiParagraph.getLineTop(i10);
    }

    @NotNull
    public final MultiParagraph getMultiParagraph() {
        return this.multiParagraph;
    }

    /* renamed from: getOffsetForPosition-k-4lQ0M  reason: not valid java name */
    public final int m3682getOffsetForPositionk4lQ0M(long j10) {
        return this.multiParagraph.m3612getOffsetForPositionk4lQ0M(j10);
    }

    @NotNull
    public final ResolvedTextDirection getParagraphDirection(int i10) {
        return this.multiParagraph.getParagraphDirection(i10);
    }

    @NotNull
    public final Path getPathForRange(int i10, int i11) {
        return this.multiParagraph.getPathForRange(i10, i11);
    }

    @NotNull
    public final List<Rect> getPlaceholderRects() {
        return this.placeholderRects;
    }

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    public final long m3683getSizeYbymL2g() {
        return this.size;
    }

    /* renamed from: getWordBoundary--jx7JFs  reason: not valid java name */
    public final long m3684getWordBoundaryjx7JFs(int i10) {
        return this.multiParagraph.m3613getWordBoundaryjx7JFs(i10);
    }

    public int hashCode() {
        return (((((((((this.layoutInput.hashCode() * 31) + this.multiParagraph.hashCode()) * 31) + IntSize.m4210hashCodeimpl(this.size)) * 31) + Float.hashCode(this.firstBaseline)) * 31) + Float.hashCode(this.lastBaseline)) * 31) + this.placeholderRects.hashCode();
    }

    public final boolean isLineEllipsized(int i10) {
        return this.multiParagraph.isLineEllipsized(i10);
    }

    @NotNull
    public String toString() {
        return "TextLayoutResult(layoutInput=" + this.layoutInput + ", multiParagraph=" + this.multiParagraph + ", size=" + ((Object) IntSize.m4212toStringimpl(this.size)) + ", firstBaseline=" + this.firstBaseline + ", lastBaseline=" + this.lastBaseline + ", placeholderRects=" + this.placeholderRects + ')';
    }

    private TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j10) {
        this.layoutInput = textLayoutInput;
        this.multiParagraph = multiParagraph;
        this.size = j10;
        this.firstBaseline = multiParagraph.getFirstBaseline();
        this.lastBaseline = multiParagraph.getLastBaseline();
        this.placeholderRects = multiParagraph.getPlaceholderRects();
    }
}
