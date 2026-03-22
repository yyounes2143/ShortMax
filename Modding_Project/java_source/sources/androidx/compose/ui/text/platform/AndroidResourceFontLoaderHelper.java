package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFontListTypeface.android.kt */
@c
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
final class AndroidResourceFontLoaderHelper {
    @NotNull
    public static final AndroidResourceFontLoaderHelper INSTANCE = new AndroidResourceFontLoaderHelper();

    private AndroidResourceFontLoaderHelper() {
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
