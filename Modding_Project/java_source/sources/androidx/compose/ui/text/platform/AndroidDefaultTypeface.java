package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceHelperMethodsApi28;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidDefaultTypeface.android.kt */
@c
@Metadata
/* loaded from: classes.dex */
public final class AndroidDefaultTypeface implements AndroidTypeface {
    @NotNull
    private final FontFamily fontFamily = FontFamily.Companion.getDefault();

    @Override // androidx.compose.ui.text.font.Typeface
    @NotNull
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    /* renamed from: getNativeTypeface-PYhJU0U  reason: not valid java name */
    public Typeface mo3878getNativeTypefacePYhJU0U(@NotNull FontWeight fontWeight, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        if (Build.VERSION.SDK_INT < 28) {
            Typeface defaultFromStyle = Typeface.defaultFromStyle(AndroidFontUtils_androidKt.m3733getAndroidTypefaceStyleFO1MlWM(fontWeight, i10));
            Intrinsics.checkNotNullExpressionValue(defaultFromStyle, "{\n            Typeface.d…)\n            )\n        }");
            return defaultFromStyle;
        }
        TypefaceHelperMethodsApi28 typefaceHelperMethodsApi28 = TypefaceHelperMethodsApi28.INSTANCE;
        Typeface DEFAULT = Typeface.DEFAULT;
        Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
        return typefaceHelperMethodsApi28.create(DEFAULT, fontWeight.getWeight(), FontStyle.m3775equalsimpl0(i10, FontStyle.Companion.m3779getItalic_LCdwA()));
    }
}
