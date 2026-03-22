package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextPainter.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextPainter {
    @NotNull
    public static final TextPainter INSTANCE = new TextPainter();

    private TextPainter() {
    }

    public final void paint(@NotNull Canvas canvas, @NotNull TextLayoutResult textLayoutResult) {
        boolean z10;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        if (textLayoutResult.getHasVisualOverflow() && TextOverflow.m3983equalsimpl0(textLayoutResult.getLayoutInput().m3679getOverflowgIe3tQ8(), TextOverflow.Companion.m3990getClipgIe3tQ8())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            Rect m1646Recttz77jQw = RectKt.m1646Recttz77jQw(Offset.Companion.m1622getZeroF1C5BW0(), SizeKt.Size(IntSize.m4209getWidthimpl(textLayoutResult.m3683getSizeYbymL2g()), IntSize.m4208getHeightimpl(textLayoutResult.m3683getSizeYbymL2g())));
            canvas.save();
            Canvas.m1815clipRectmtrdDE$default(canvas, m1646Recttz77jQw, 0, 2, null);
        }
        try {
            Brush brush = textLayoutResult.getLayoutInput().getStyle().getBrush();
            if (brush != null) {
                textLayoutResult.getMultiParagraph().paint(canvas, brush, textLayoutResult.getLayoutInput().getStyle().getShadow(), textLayoutResult.getLayoutInput().getStyle().getTextDecoration());
            } else {
                textLayoutResult.getMultiParagraph().m3614paintRPmYEkk(canvas, textLayoutResult.getLayoutInput().getStyle().m3713getColor0d7_KjU(), textLayoutResult.getLayoutInput().getStyle().getShadow(), textLayoutResult.getLayoutInput().getStyle().getTextDecoration());
            }
            if (z10) {
                canvas.restore();
            }
        } catch (Throwable th2) {
            if (z10) {
                canvas.restore();
            }
            throw th2;
        }
    }
}
