package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Paragraph.kt */
@Metadata
/* loaded from: classes.dex */
public interface Paragraph {

    /* compiled from: Paragraph.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @ExperimentalTextApi
        @Deprecated
        public static void paint(@NotNull Paragraph paragraph, @NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(brush, "brush");
            Paragraph.super.paint(canvas, brush, shadow, textDecoration);
        }
    }

    static /* synthetic */ int getLineEnd$default(Paragraph paragraph, int i10, boolean z10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            return paragraph.getLineEnd(i10, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLineEnd");
    }

    static /* synthetic */ void paint$default(Paragraph paragraph, Canvas canvas, Brush brush, Shadow shadow, TextDecoration textDecoration, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                shadow = null;
            }
            if ((i10 & 8) != 0) {
                textDecoration = null;
            }
            paragraph.paint(canvas, brush, shadow, textDecoration);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: paint");
    }

    /* renamed from: paint-RPmYEkk$default  reason: not valid java name */
    static /* synthetic */ void m3615paintRPmYEkk$default(Paragraph paragraph, Canvas canvas, long j10, Shadow shadow, TextDecoration textDecoration, int i10, Object obj) {
        Shadow shadow2;
        TextDecoration textDecoration2;
        if (obj == null) {
            if ((i10 & 2) != 0) {
                j10 = Color.Companion.m1878getUnspecified0d7_KjU();
            }
            long j11 = j10;
            if ((i10 & 4) != 0) {
                shadow2 = null;
            } else {
                shadow2 = shadow;
            }
            if ((i10 & 8) != 0) {
                textDecoration2 = null;
            } else {
                textDecoration2 = textDecoration;
            }
            paragraph.mo3618paintRPmYEkk(canvas, j11, shadow2, textDecoration2);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: paint-RPmYEkk");
    }

    @NotNull
    ResolvedTextDirection getBidiRunDirection(int i10);

    @NotNull
    Rect getBoundingBox(int i10);

    @NotNull
    Rect getCursorRect(int i10);

    boolean getDidExceedMaxLines();

    float getFirstBaseline();

    float getHeight();

    float getHorizontalPosition(int i10, boolean z10);

    float getLastBaseline();

    float getLineBottom(int i10);

    int getLineCount();

    int getLineEnd(int i10, boolean z10);

    int getLineForOffset(int i10);

    int getLineForVerticalPosition(float f10);

    float getLineHeight(int i10);

    float getLineLeft(int i10);

    float getLineRight(int i10);

    int getLineStart(int i10);

    float getLineTop(int i10);

    float getLineWidth(int i10);

    float getMaxIntrinsicWidth();

    float getMinIntrinsicWidth();

    /* renamed from: getOffsetForPosition-k-4lQ0M  reason: not valid java name */
    int mo3616getOffsetForPositionk4lQ0M(long j10);

    @NotNull
    ResolvedTextDirection getParagraphDirection(int i10);

    @NotNull
    Path getPathForRange(int i10, int i11);

    @NotNull
    List<Rect> getPlaceholderRects();

    float getWidth();

    /* renamed from: getWordBoundary--jx7JFs  reason: not valid java name */
    long mo3617getWordBoundaryjx7JFs(int i10);

    boolean isLineEllipsized(int i10);

    @ExperimentalTextApi
    default void paint(@NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(brush, "brush");
        throw new UnsupportedOperationException("Using brush for painting the paragraph is a separate functionality that is not supported on this platform");
    }

    /* renamed from: paint-RPmYEkk  reason: not valid java name */
    void mo3618paintRPmYEkk(@NotNull Canvas canvas, long j10, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration);
}
