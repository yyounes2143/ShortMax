package androidx.compose.ui.text.font;

import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlatformTypefaces.kt */
@Metadata
@VisibleForTesting
/* loaded from: classes.dex */
public final class PlatformTypefacesApi implements PlatformTypefaces {
    /* renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg  reason: not valid java name */
    private final android.graphics.Typeface m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg(String str, FontWeight fontWeight, int i10) {
        if (FontStyle.m3775equalsimpl0(i10, FontStyle.Companion.m3780getNormal_LCdwA()) && Intrinsics.areEqual(fontWeight, FontWeight.Companion.getNormal()) && (str == null || str.length() == 0)) {
            android.graphics.Typeface DEFAULT = android.graphics.Typeface.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            return DEFAULT;
        }
        int m3733getAndroidTypefaceStyleFO1MlWM = AndroidFontUtils_androidKt.m3733getAndroidTypefaceStyleFO1MlWM(fontWeight, i10);
        if (str != null && str.length() != 0) {
            android.graphics.Typeface create = android.graphics.Typeface.create(str, m3733getAndroidTypefaceStyleFO1MlWM);
            Intrinsics.checkNotNullExpressionValue(create, "{\n            Typeface.c…y, targetStyle)\n        }");
            return create;
        }
        android.graphics.Typeface defaultFromStyle = android.graphics.Typeface.defaultFromStyle(m3733getAndroidTypefaceStyleFO1MlWM);
        Intrinsics.checkNotNullExpressionValue(defaultFromStyle, "{\n            Typeface.d…le(targetStyle)\n        }");
        return defaultFromStyle;
    }

    /* renamed from: createAndroidTypefaceUsingTypefaceStyle-RetOiIg$default  reason: not valid java name */
    static /* synthetic */ android.graphics.Typeface m3801createAndroidTypefaceUsingTypefaceStyleRetOiIg$default(PlatformTypefacesApi platformTypefacesApi, String str, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i11 & 4) != 0) {
            i10 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return platformTypefacesApi.m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i10);
    }

    /* renamed from: loadNamedFromTypefaceCacheOrNull-RetOiIg  reason: not valid java name */
    private final android.graphics.Typeface m3802loadNamedFromTypefaceCacheOrNullRetOiIg(String str, FontWeight fontWeight, int i10) {
        if (str.length() == 0) {
            return null;
        }
        android.graphics.Typeface m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg = m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg(str, fontWeight, i10);
        if (Intrinsics.areEqual(m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg, android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, AndroidFontUtils_androidKt.m3733getAndroidTypefaceStyleFO1MlWM(fontWeight, i10))) || Intrinsics.areEqual(m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg, m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i10))) {
            return null;
        }
        return m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @NotNull
    /* renamed from: createDefault-FO1MlWM */
    public android.graphics.Typeface mo3797createDefaultFO1MlWM(@NotNull FontWeight fontWeight, int i10) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg(null, fontWeight, i10);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @NotNull
    /* renamed from: createNamed-RetOiIg */
    public android.graphics.Typeface mo3798createNamedRetOiIg(@NotNull GenericFontFamily name, @NotNull FontWeight fontWeight, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        android.graphics.Typeface m3802loadNamedFromTypefaceCacheOrNullRetOiIg = m3802loadNamedFromTypefaceCacheOrNullRetOiIg(PlatformTypefacesKt.getWeightSuffixForFallbackFamilyName(name.getName(), fontWeight), fontWeight, i10);
        if (m3802loadNamedFromTypefaceCacheOrNullRetOiIg == null) {
            return m3800createAndroidTypefaceUsingTypefaceStyleRetOiIg(name.getName(), fontWeight, i10);
        }
        return m3802loadNamedFromTypefaceCacheOrNullRetOiIg;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @Nullable
    /* renamed from: optionalOnDeviceFontFamilyByName-RetOiIg */
    public android.graphics.Typeface mo3799optionalOnDeviceFontFamilyByNameRetOiIg(@NotNull String familyName, @NotNull FontWeight weight, int i10) {
        Intrinsics.checkNotNullParameter(familyName, "familyName");
        Intrinsics.checkNotNullParameter(weight, "weight");
        FontFamily.Companion companion = FontFamily.Companion;
        if (Intrinsics.areEqual(familyName, companion.getSansSerif().getName())) {
            return mo3798createNamedRetOiIg(companion.getSansSerif(), weight, i10);
        }
        if (Intrinsics.areEqual(familyName, companion.getSerif().getName())) {
            return mo3798createNamedRetOiIg(companion.getSerif(), weight, i10);
        }
        if (Intrinsics.areEqual(familyName, companion.getMonospace().getName())) {
            return mo3798createNamedRetOiIg(companion.getMonospace(), weight, i10);
        }
        if (Intrinsics.areEqual(familyName, companion.getCursive().getName())) {
            return mo3798createNamedRetOiIg(companion.getCursive(), weight, i10);
        }
        return m3802loadNamedFromTypefaceCacheOrNullRetOiIg(familyName, weight, i10);
    }
}
