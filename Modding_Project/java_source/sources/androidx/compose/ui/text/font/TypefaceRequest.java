package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FontFamilyResolver.kt */
@Metadata
/* loaded from: classes.dex */
public final class TypefaceRequest {
    @Nullable
    private final FontFamily fontFamily;
    private final int fontStyle;
    private final int fontSynthesis;
    @NotNull
    private final FontWeight fontWeight;
    @Nullable
    private final Object resourceLoaderCacheKey;

    public /* synthetic */ TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(fontFamily, fontWeight, i10, i11, obj);
    }

    /* renamed from: copy-e1PVR60$default  reason: not valid java name */
    public static /* synthetic */ TypefaceRequest m3811copye1PVR60$default(TypefaceRequest typefaceRequest, FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, Object obj, int i12, Object obj2) {
        if ((i12 & 1) != 0) {
            fontFamily = typefaceRequest.fontFamily;
        }
        if ((i12 & 2) != 0) {
            fontWeight = typefaceRequest.fontWeight;
        }
        FontWeight fontWeight2 = fontWeight;
        if ((i12 & 4) != 0) {
            i10 = typefaceRequest.fontStyle;
        }
        int i13 = i10;
        if ((i12 & 8) != 0) {
            i11 = typefaceRequest.fontSynthesis;
        }
        int i14 = i11;
        if ((i12 & 16) != 0) {
            obj = typefaceRequest.resourceLoaderCacheKey;
        }
        return typefaceRequest.m3814copye1PVR60(fontFamily, fontWeight2, i13, i14, obj);
    }

    @Nullable
    public final FontFamily component1() {
        return this.fontFamily;
    }

    @NotNull
    public final FontWeight component2() {
        return this.fontWeight;
    }

    /* renamed from: component3-_-LCdwA  reason: not valid java name */
    public final int m3812component3_LCdwA() {
        return this.fontStyle;
    }

    /* renamed from: component4-GVVA2EU  reason: not valid java name */
    public final int m3813component4GVVA2EU() {
        return this.fontSynthesis;
    }

    @Nullable
    public final Object component5() {
        return this.resourceLoaderCacheKey;
    }

    @NotNull
    /* renamed from: copy-e1PVR60  reason: not valid java name */
    public final TypefaceRequest m3814copye1PVR60(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return new TypefaceRequest(fontFamily, fontWeight, i10, i11, obj, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypefaceRequest)) {
            return false;
        }
        TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
        if (Intrinsics.areEqual(this.fontFamily, typefaceRequest.fontFamily) && Intrinsics.areEqual(this.fontWeight, typefaceRequest.fontWeight) && FontStyle.m3775equalsimpl0(this.fontStyle, typefaceRequest.fontStyle) && FontSynthesis.m3784equalsimpl0(this.fontSynthesis, typefaceRequest.fontSynthesis) && Intrinsics.areEqual(this.resourceLoaderCacheKey, typefaceRequest.resourceLoaderCacheKey)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    /* renamed from: getFontStyle-_-LCdwA  reason: not valid java name */
    public final int m3815getFontStyle_LCdwA() {
        return this.fontStyle;
    }

    /* renamed from: getFontSynthesis-GVVA2EU  reason: not valid java name */
    public final int m3816getFontSynthesisGVVA2EU() {
        return this.fontSynthesis;
    }

    @NotNull
    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    @Nullable
    public final Object getResourceLoaderCacheKey() {
        return this.resourceLoaderCacheKey;
    }

    public int hashCode() {
        int hashCode;
        FontFamily fontFamily = this.fontFamily;
        int i10 = 0;
        if (fontFamily == null) {
            hashCode = 0;
        } else {
            hashCode = fontFamily.hashCode();
        }
        int hashCode2 = ((((((hashCode * 31) + this.fontWeight.hashCode()) * 31) + FontStyle.m3776hashCodeimpl(this.fontStyle)) * 31) + FontSynthesis.m3785hashCodeimpl(this.fontSynthesis)) * 31;
        Object obj = this.resourceLoaderCacheKey;
        if (obj != null) {
            i10 = obj.hashCode();
        }
        return hashCode2 + i10;
    }

    @NotNull
    public String toString() {
        return "TypefaceRequest(fontFamily=" + this.fontFamily + ", fontWeight=" + this.fontWeight + ", fontStyle=" + ((Object) FontStyle.m3777toStringimpl(this.fontStyle)) + ", fontSynthesis=" + ((Object) FontSynthesis.m3788toStringimpl(this.fontSynthesis)) + ", resourceLoaderCacheKey=" + this.resourceLoaderCacheKey + ')';
    }

    private TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, Object obj) {
        this.fontFamily = fontFamily;
        this.fontWeight = fontWeight;
        this.fontStyle = i10;
        this.fontSynthesis = i11;
        this.resourceLoaderCacheKey = obj;
    }
}
