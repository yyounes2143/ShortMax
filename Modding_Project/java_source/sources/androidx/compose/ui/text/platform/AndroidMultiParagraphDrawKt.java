package androidx.compose.ui.text.platform;

import android.graphics.Matrix;
import android.graphics.Shader;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.style.TextDecoration;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidMultiParagraphDraw.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidMultiParagraphDrawKt {
    public static final void drawMultiParagraph(@NotNull MultiParagraph multiParagraph, @NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(multiParagraph, "<this>");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(brush, "brush");
        canvas.save();
        if (multiParagraph.getParagraphInfoList$ui_text_release().size() <= 1) {
            drawParagraphs(multiParagraph, canvas, brush, shadow, textDecoration);
        } else if (brush instanceof SolidColor) {
            drawParagraphs(multiParagraph, canvas, brush, shadow, textDecoration);
        } else if (brush instanceof ShaderBrush) {
            List<ParagraphInfo> paragraphInfoList$ui_text_release = multiParagraph.getParagraphInfoList$ui_text_release();
            int size = paragraphInfoList$ui_text_release.size();
            float f10 = 0.0f;
            float f11 = 0.0f;
            for (int i10 = 0; i10 < size; i10++) {
                ParagraphInfo paragraphInfo = paragraphInfoList$ui_text_release.get(i10);
                f11 += paragraphInfo.getParagraph().getHeight();
                f10 = Math.max(f10, paragraphInfo.getParagraph().getWidth());
            }
            Shader mo1811createShaderuvyYCjk = ((ShaderBrush) brush).mo1811createShaderuvyYCjk(SizeKt.Size(f10, f11));
            Matrix matrix = new Matrix();
            mo1811createShaderuvyYCjk.getLocalMatrix(matrix);
            List<ParagraphInfo> paragraphInfoList$ui_text_release2 = multiParagraph.getParagraphInfoList$ui_text_release();
            int size2 = paragraphInfoList$ui_text_release2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ParagraphInfo paragraphInfo2 = paragraphInfoList$ui_text_release2.get(i11);
                paragraphInfo2.getParagraph().paint(canvas, BrushKt.ShaderBrush(mo1811createShaderuvyYCjk), shadow, textDecoration);
                canvas.translate(0.0f, paragraphInfo2.getParagraph().getHeight());
                matrix.setTranslate(0.0f, -paragraphInfo2.getParagraph().getHeight());
                mo1811createShaderuvyYCjk.setLocalMatrix(matrix);
            }
        }
        canvas.restore();
    }

    public static /* synthetic */ void drawMultiParagraph$default(MultiParagraph multiParagraph, Canvas canvas, Brush brush, Shadow shadow, TextDecoration textDecoration, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            shadow = null;
        }
        if ((i10 & 8) != 0) {
            textDecoration = null;
        }
        drawMultiParagraph(multiParagraph, canvas, brush, shadow, textDecoration);
    }

    private static final void drawParagraphs(MultiParagraph multiParagraph, Canvas canvas, Brush brush, Shadow shadow, TextDecoration textDecoration) {
        List<ParagraphInfo> paragraphInfoList$ui_text_release = multiParagraph.getParagraphInfoList$ui_text_release();
        int size = paragraphInfoList$ui_text_release.size();
        for (int i10 = 0; i10 < size; i10++) {
            ParagraphInfo paragraphInfo = paragraphInfoList$ui_text_release.get(i10);
            paragraphInfo.getParagraph().paint(canvas, brush, shadow, textDecoration);
            canvas.translate(0.0f, paragraphInfo.getParagraph().getHeight());
        }
    }
}
