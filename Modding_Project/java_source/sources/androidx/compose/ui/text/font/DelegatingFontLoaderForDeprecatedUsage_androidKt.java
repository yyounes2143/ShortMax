package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DelegatingFontLoaderForDeprecatedUsage.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class DelegatingFontLoaderForDeprecatedUsage_androidKt {
    @ms.c
    @NotNull
    public static final FontFamily.Resolver createFontFamilyResolver(@NotNull Font.ResourceLoader fontResourceLoader, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(fontResourceLoader, "fontResourceLoader");
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        return new FontFamilyResolverImpl(new DelegatingFontLoaderForBridgeUsage(fontResourceLoader, applicationContext), null, null, null, null, 30, null);
    }

    @ms.c
    @NotNull
    public static final FontFamily.Resolver createFontFamilyResolver(@NotNull Font.ResourceLoader fontResourceLoader) {
        Intrinsics.checkNotNullParameter(fontResourceLoader, "fontResourceLoader");
        return new FontFamilyResolverImpl(new DelegatingFontLoaderForDeprecatedUsage(fontResourceLoader), null, null, null, null, 30, null);
    }
}
