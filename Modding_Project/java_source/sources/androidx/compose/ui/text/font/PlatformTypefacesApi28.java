package androidx.compose.ui.text.font;

import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlatformTypefaces.kt */
@RequiresApi(28)
@Metadata
@VisibleForTesting
/* loaded from: classes.dex */
public final class PlatformTypefacesApi28 implements PlatformTypefaces {
    /* renamed from: createAndroidTypefaceApi28-RetOiIg  reason: not valid java name */
    private final android.graphics.Typeface m3803createAndroidTypefaceApi28RetOiIg(String str, FontWeight fontWeight, int i10) {
        android.graphics.Typeface create;
        android.graphics.Typeface create2;
        FontStyle.Companion companion = FontStyle.Companion;
        if (FontStyle.m3775equalsimpl0(i10, companion.m3780getNormal_LCdwA()) && Intrinsics.areEqual(fontWeight, FontWeight.Companion.getNormal()) && (str == null || str.length() == 0)) {
            android.graphics.Typeface DEFAULT = android.graphics.Typeface.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            return DEFAULT;
        }
        if (str == null) {
            create = android.graphics.Typeface.DEFAULT;
        } else {
            create = android.graphics.Typeface.create(str, 0);
        }
        create2 = android.graphics.Typeface.create(create, fontWeight.getWeight(), FontStyle.m3775equalsimpl0(i10, companion.m3779getItalic_LCdwA()));
        Intrinsics.checkNotNullExpressionValue(create2, "create(\n            fami…ontStyle.Italic\n        )");
        return create2;
    }

    /* renamed from: createAndroidTypefaceApi28-RetOiIg$default  reason: not valid java name */
    static /* synthetic */ android.graphics.Typeface m3804createAndroidTypefaceApi28RetOiIg$default(PlatformTypefacesApi28 platformTypefacesApi28, String str, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        return platformTypefacesApi28.m3803createAndroidTypefaceApi28RetOiIg(str, fontWeight, i10);
    }

    /* renamed from: loadNamedFromTypefaceCacheOrNull-RetOiIg  reason: not valid java name */
    private final android.graphics.Typeface m3805loadNamedFromTypefaceCacheOrNullRetOiIg(String str, FontWeight fontWeight, int i10) {
        if (str.length() == 0) {
            return null;
        }
        android.graphics.Typeface m3803createAndroidTypefaceApi28RetOiIg = m3803createAndroidTypefaceApi28RetOiIg(str, fontWeight, i10);
        boolean m3775equalsimpl0 = FontStyle.m3775equalsimpl0(i10, FontStyle.Companion.m3779getItalic_LCdwA());
        TypefaceHelperMethodsApi28 typefaceHelperMethodsApi28 = TypefaceHelperMethodsApi28.INSTANCE;
        android.graphics.Typeface DEFAULT = android.graphics.Typeface.DEFAULT;
        Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
        if (Intrinsics.areEqual(m3803createAndroidTypefaceApi28RetOiIg, typefaceHelperMethodsApi28.create(DEFAULT, fontWeight.getWeight(), m3775equalsimpl0)) || Intrinsics.areEqual(m3803createAndroidTypefaceApi28RetOiIg, m3803createAndroidTypefaceApi28RetOiIg(null, fontWeight, i10))) {
            return null;
        }
        return m3803createAndroidTypefaceApi28RetOiIg;
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @NotNull
    /* renamed from: createDefault-FO1MlWM */
    public android.graphics.Typeface mo3797createDefaultFO1MlWM(@NotNull FontWeight fontWeight, int i10) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return m3803createAndroidTypefaceApi28RetOiIg(null, fontWeight, i10);
    }

    @Override // androidx.compose.ui.text.font.PlatformTypefaces
    @NotNull
    /* renamed from: createNamed-RetOiIg */
    public android.graphics.Typeface mo3798createNamedRetOiIg(@NotNull GenericFontFamily name, @NotNull FontWeight fontWeight, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return m3803createAndroidTypefaceApi28RetOiIg(name.getName(), fontWeight, i10);
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
        return m3805loadNamedFromTypefaceCacheOrNullRetOiIg(familyName, weight, i10);
    }
}
