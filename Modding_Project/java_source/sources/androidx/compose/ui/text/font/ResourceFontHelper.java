package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFontLoader.android.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
final class ResourceFontHelper {
    @NotNull
    public static final ResourceFontHelper INSTANCE = new ResourceFontHelper();

    private ResourceFontHelper() {
    }

    @DoNotInline
    @NotNull
    public final android.graphics.Typeface load(@NotNull Context context, @NotNull ResourceFont font) {
        android.graphics.Typeface font2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(font, "font");
        font2 = context.getResources().getFont(font.getResId());
        Intrinsics.checkNotNullExpressionValue(font2, "context.resources.getFont(font.resId)");
        return font2;
    }
}
