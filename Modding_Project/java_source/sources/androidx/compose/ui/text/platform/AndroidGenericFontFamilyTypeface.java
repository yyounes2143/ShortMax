package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.TypefaceHelperMethodsApi28;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGenericFontFamilyTypeface.android.kt */
@c
@Metadata
/* loaded from: classes.dex */
public final class AndroidGenericFontFamilyTypeface implements AndroidTypeface {
    @NotNull
    private final FontFamily fontFamily;
    @NotNull
    private final Typeface nativeTypeface;

    public AndroidGenericFontFamilyTypeface(@NotNull GenericFontFamily fontFamily) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        this.fontFamily = fontFamily;
        Typeface create = Typeface.create(fontFamily.getName(), 0);
        Intrinsics.checkNotNull(create);
        this.nativeTypeface = create;
    }

    /* renamed from: buildStyledTypeface-FO1MlWM  reason: not valid java name */
    private final Typeface m3879buildStyledTypefaceFO1MlWM(FontWeight fontWeight, int i10) {
        if (Build.VERSION.SDK_INT < 28) {
            return Typeface.create(this.nativeTypeface, AndroidFontUtils_androidKt.m3733getAndroidTypefaceStyleFO1MlWM(fontWeight, i10));
        }
        return TypefaceHelperMethodsApi28.INSTANCE.create(this.nativeTypeface, fontWeight.getWeight(), FontStyle.m3775equalsimpl0(i10, FontStyle.Companion.m3779getItalic_LCdwA()));
    }

    @Override // androidx.compose.ui.text.font.Typeface
    @NotNull
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    /* renamed from: getNativeTypeface-PYhJU0U */
    public Typeface mo3878getNativeTypefacePYhJU0U(@NotNull FontWeight fontWeight, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        Typeface m3879buildStyledTypefaceFO1MlWM = m3879buildStyledTypefaceFO1MlWM(fontWeight, i10);
        Intrinsics.checkNotNullExpressionValue(m3879buildStyledTypefaceFO1MlWM, "buildStyledTypeface(fontWeight, fontStyle)");
        return m3879buildStyledTypefaceFO1MlWM;
    }
}
