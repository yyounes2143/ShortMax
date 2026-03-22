package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.font.AndroidFont;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceFontFamilyNameFont.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
final class NamedFontLoader implements AndroidFont.TypefaceLoader {
    @NotNull
    public static final NamedFontLoader INSTANCE = new NamedFontLoader();

    private NamedFontLoader() {
    }

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    @Nullable
    public Object awaitLoad(@NotNull Context context, @NotNull AndroidFont androidFont, @NotNull rs.c<? super android.graphics.Typeface> cVar) {
        throw new UnsupportedOperationException("All preloaded fonts are optional local.");
    }

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    @Nullable
    public android.graphics.Typeface loadBlocking(@NotNull Context context, @NotNull AndroidFont font) {
        DeviceFontFamilyNameFont deviceFontFamilyNameFont;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(font, "font");
        if (font instanceof DeviceFontFamilyNameFont) {
            deviceFontFamilyNameFont = (DeviceFontFamilyNameFont) font;
        } else {
            deviceFontFamilyNameFont = null;
        }
        if (deviceFontFamilyNameFont == null) {
            return null;
        }
        return deviceFontFamilyNameFont.getResolvedTypeface();
    }
}
