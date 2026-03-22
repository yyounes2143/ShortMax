package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.font.Font;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DelegatingFontLoaderForDeprecatedUsage.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class DelegatingFontLoaderForBridgeUsage implements PlatformFontLoader {
    @NotNull
    private final Object cacheKey;
    @NotNull
    private final Context context;
    @NotNull
    private final Font.ResourceLoader loader;

    public DelegatingFontLoaderForBridgeUsage(@NotNull Font.ResourceLoader loader, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(loader, "loader");
        Intrinsics.checkNotNullParameter(context, "context");
        this.loader = loader;
        this.context = context;
        this.cacheKey = new Object();
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object awaitLoad(@NotNull Font font, @NotNull rs.c<Object> cVar) {
        if (font instanceof AndroidFont) {
            AndroidFont androidFont = (AndroidFont) font;
            return androidFont.getTypefaceLoader().awaitLoad(this.context, androidFont, cVar);
        }
        return this.loader.load(font);
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @NotNull
    public Object getCacheKey() {
        return this.cacheKey;
    }

    @NotNull
    public final Font.ResourceLoader getLoader$ui_text_release() {
        return this.loader;
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object loadBlocking(@NotNull Font font) {
        Intrinsics.checkNotNullParameter(font, "font");
        if (font instanceof AndroidFont) {
            AndroidFont androidFont = (AndroidFont) font;
            return androidFont.getTypefaceLoader().loadBlocking(this.context, androidFont);
        }
        return this.loader.load(font);
    }
}
