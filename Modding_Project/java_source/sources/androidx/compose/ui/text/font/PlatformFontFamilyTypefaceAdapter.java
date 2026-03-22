package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.text.platform.AndroidTypeface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlatformFontFamilyTypefaceAdapter.android.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class PlatformFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {
    @NotNull
    private final PlatformTypefaces platformTypefaceResolver = PlatformTypefacesKt.PlatformTypefaces();

    @Override // androidx.compose.ui.text.font.FontFamilyTypefaceAdapter
    @Nullable
    public TypefaceResult resolve(@NotNull TypefaceRequest typefaceRequest, @NotNull PlatformFontLoader platformFontLoader, @NotNull Function1<? super TypefaceResult.Immutable, Unit> onAsyncCompletion, @NotNull Function1<? super TypefaceRequest, ? extends Object> createDefaultTypeface) {
        boolean z10;
        android.graphics.Typeface mo3878getNativeTypefacePYhJU0U;
        Intrinsics.checkNotNullParameter(typefaceRequest, "typefaceRequest");
        Intrinsics.checkNotNullParameter(platformFontLoader, "platformFontLoader");
        Intrinsics.checkNotNullParameter(onAsyncCompletion, "onAsyncCompletion");
        Intrinsics.checkNotNullParameter(createDefaultTypeface, "createDefaultTypeface");
        FontFamily fontFamily = typefaceRequest.getFontFamily();
        if (fontFamily == null) {
            z10 = true;
        } else {
            z10 = fontFamily instanceof DefaultFontFamily;
        }
        if (z10) {
            mo3878getNativeTypefacePYhJU0U = this.platformTypefaceResolver.mo3797createDefaultFO1MlWM(typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA());
        } else if (fontFamily instanceof GenericFontFamily) {
            mo3878getNativeTypefacePYhJU0U = this.platformTypefaceResolver.mo3798createNamedRetOiIg((GenericFontFamily) typefaceRequest.getFontFamily(), typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA());
        } else if (!(fontFamily instanceof LoadedFontFamily)) {
            return null;
        } else {
            mo3878getNativeTypefacePYhJU0U = ((AndroidTypeface) ((LoadedFontFamily) typefaceRequest.getFontFamily()).getTypeface()).mo3878getNativeTypefacePYhJU0U(typefaceRequest.getFontWeight(), typefaceRequest.m3815getFontStyle_LCdwA(), typefaceRequest.m3816getFontSynthesisGVVA2EU());
        }
        return new TypefaceResult.Immutable(mo3878getNativeTypefacePYhJU0U, false, 2, null);
    }
}
