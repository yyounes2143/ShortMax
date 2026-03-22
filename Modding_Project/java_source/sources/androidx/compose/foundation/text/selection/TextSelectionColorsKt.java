package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextSelectionColors.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextSelectionColorsKt {
    private static final long DefaultSelectionColor;
    @NotNull
    private static final TextSelectionColors DefaultTextSelectionColors;
    @NotNull
    private static final ProvidableCompositionLocal<TextSelectionColors> LocalTextSelectionColors = CompositionLocalKt.compositionLocalOf$default(null, new Function0<TextSelectionColors>() { // from class: androidx.compose.foundation.text.selection.TextSelectionColorsKt$LocalTextSelectionColors$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final TextSelectionColors invoke() {
            TextSelectionColors textSelectionColors;
            textSelectionColors = TextSelectionColorsKt.DefaultTextSelectionColors;
            return textSelectionColors;
        }
    }, 1, null);

    static {
        long Color = ColorKt.Color(4282550004L);
        DefaultSelectionColor = Color;
        DefaultTextSelectionColors = new TextSelectionColors(Color, Color.m1841copywmQWz5c$default(Color, 0.4f, 0.0f, 0.0f, 0.0f, 14, null), null);
    }

    @NotNull
    public static final ProvidableCompositionLocal<TextSelectionColors> getLocalTextSelectionColors() {
        return LocalTextSelectionColors;
    }

    @Stable
    private static /* synthetic */ void getDefaultTextSelectionColors$annotations() {
    }
}
