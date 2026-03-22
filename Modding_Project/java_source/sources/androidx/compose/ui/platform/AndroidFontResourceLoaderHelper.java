package androidx.compose.ui.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFontResourceLoader.android.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
final class AndroidFontResourceLoaderHelper {
    @NotNull
    public static final AndroidFontResourceLoaderHelper INSTANCE = new AndroidFontResourceLoaderHelper();

    private AndroidFontResourceLoaderHelper() {
    }

    @DoNotInline
    @RequiresApi(26)
    @NotNull
    public final Typeface create(@NotNull Context context, int i10) {
        Typeface font;
        Intrinsics.checkNotNullParameter(context, "context");
        font = context.getResources().getFont(i10);
        Intrinsics.checkNotNullExpressionValue(font, "context.resources.getFont(resourceId)");
        return font;
    }
}
