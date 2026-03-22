package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceFontFamilyNameFont.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
final class DeviceFontFamilyNameFont extends AndroidFont {
    @NotNull
    private final String familyName;
    @Nullable
    private final android.graphics.Typeface resolvedTypeface;
    private final int style;
    @NotNull
    private final FontWeight weight;

    public /* synthetic */ DeviceFontFamilyNameFont(String str, FontWeight fontWeight, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, fontWeight, i10);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(DeviceFontFamilyNameFont.class, cls)) {
            return false;
        }
        if (obj != null) {
            DeviceFontFamilyNameFont deviceFontFamilyNameFont = (DeviceFontFamilyNameFont) obj;
            if (DeviceFontFamilyName.m3746equalsimpl0(this.familyName, deviceFontFamilyNameFont.familyName) && Intrinsics.areEqual(getWeight(), deviceFontFamilyNameFont.getWeight()) && FontStyle.m3775equalsimpl0(mo3723getStyle_LCdwA(), deviceFontFamilyNameFont.mo3723getStyle_LCdwA())) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.text.font.DeviceFontFamilyNameFont");
    }

    @Nullable
    public final android.graphics.Typeface getResolvedTypeface() {
        return this.resolvedTypeface;
    }

    @Override // androidx.compose.ui.text.font.Font
    /* renamed from: getStyle-_-LCdwA */
    public int mo3723getStyle_LCdwA() {
        return this.style;
    }

    @Override // androidx.compose.ui.text.font.Font
    @NotNull
    public FontWeight getWeight() {
        return this.weight;
    }

    public int hashCode() {
        return (((DeviceFontFamilyName.m3747hashCodeimpl(this.familyName) * 31) + getWeight().hashCode()) * 31) + FontStyle.m3776hashCodeimpl(mo3723getStyle_LCdwA());
    }

    @NotNull
    public String toString() {
        return "Font(familyName=\"" + ((Object) DeviceFontFamilyName.m3748toStringimpl(this.familyName)) + "\", weight=" + getWeight() + ", style=" + ((Object) FontStyle.m3777toStringimpl(mo3723getStyle_LCdwA())) + ')';
    }

    private DeviceFontFamilyNameFont(String str, FontWeight fontWeight, int i10) {
        super(FontLoadingStrategy.Companion.m3768getOptionalLocalPKNRLFQ(), NamedFontLoader.INSTANCE, null);
        this.familyName = str;
        this.weight = fontWeight;
        this.style = i10;
        this.resolvedTypeface = PlatformTypefacesKt.PlatformTypefaces().mo3799optionalOnDeviceFontFamilyByNameRetOiIg(str, getWeight(), mo3723getStyle_LCdwA());
    }
}
