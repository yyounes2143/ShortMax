package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Font.kt */
@Metadata
/* loaded from: classes.dex */
public final class ResourceFont implements Font {
    private final int loadingStrategy;
    private final int resId;
    private final int style;
    @NotNull
    private final FontWeight weight;

    public /* synthetic */ ResourceFont(int i10, FontWeight fontWeight, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, fontWeight, i11, i12);
    }

    /* renamed from: copy-RetOiIg$default  reason: not valid java name */
    public static /* synthetic */ ResourceFont m3806copyRetOiIg$default(ResourceFont resourceFont, int i10, FontWeight fontWeight, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = resourceFont.resId;
        }
        if ((i12 & 2) != 0) {
            fontWeight = resourceFont.getWeight();
        }
        if ((i12 & 4) != 0) {
            i11 = resourceFont.mo3723getStyle_LCdwA();
        }
        return resourceFont.m3809copyRetOiIg(i10, fontWeight, i11);
    }

    /* renamed from: copy-YpTlLL0$default  reason: not valid java name */
    public static /* synthetic */ ResourceFont m3807copyYpTlLL0$default(ResourceFont resourceFont, int i10, FontWeight fontWeight, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = resourceFont.resId;
        }
        if ((i13 & 2) != 0) {
            fontWeight = resourceFont.getWeight();
        }
        if ((i13 & 4) != 0) {
            i11 = resourceFont.mo3723getStyle_LCdwA();
        }
        if ((i13 & 8) != 0) {
            i12 = resourceFont.mo3724getLoadingStrategyPKNRLFQ();
        }
        return resourceFont.m3810copyYpTlLL0(i10, fontWeight, i11, i12);
    }

    @NotNull
    /* renamed from: copy-RetOiIg  reason: not valid java name */
    public final ResourceFont m3809copyRetOiIg(int i10, @NotNull FontWeight weight, int i11) {
        Intrinsics.checkNotNullParameter(weight, "weight");
        return m3810copyYpTlLL0(i10, weight, i11, mo3724getLoadingStrategyPKNRLFQ());
    }

    @ExperimentalTextApi
    @NotNull
    /* renamed from: copy-YpTlLL0  reason: not valid java name */
    public final ResourceFont m3810copyYpTlLL0(int i10, @NotNull FontWeight weight, int i11, int i12) {
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new ResourceFont(i10, weight, i11, i12, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceFont)) {
            return false;
        }
        ResourceFont resourceFont = (ResourceFont) obj;
        if (this.resId == resourceFont.resId && Intrinsics.areEqual(getWeight(), resourceFont.getWeight()) && FontStyle.m3775equalsimpl0(mo3723getStyle_LCdwA(), resourceFont.mo3723getStyle_LCdwA()) && FontLoadingStrategy.m3762equalsimpl0(mo3724getLoadingStrategyPKNRLFQ(), resourceFont.mo3724getLoadingStrategyPKNRLFQ())) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.text.font.Font
    @ExperimentalTextApi
    /* renamed from: getLoadingStrategy-PKNRLFQ */
    public int mo3724getLoadingStrategyPKNRLFQ() {
        return this.loadingStrategy;
    }

    public final int getResId() {
        return this.resId;
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
        return (((((this.resId * 31) + getWeight().hashCode()) * 31) + FontStyle.m3776hashCodeimpl(mo3723getStyle_LCdwA())) * 31) + FontLoadingStrategy.m3763hashCodeimpl(mo3724getLoadingStrategyPKNRLFQ());
    }

    @NotNull
    public String toString() {
        return "ResourceFont(resId=" + this.resId + ", weight=" + getWeight() + ", style=" + ((Object) FontStyle.m3777toStringimpl(mo3723getStyle_LCdwA())) + ", loadingStrategy=" + ((Object) FontLoadingStrategy.m3764toStringimpl(mo3724getLoadingStrategyPKNRLFQ())) + ')';
    }

    private ResourceFont(int i10, FontWeight fontWeight, int i11, int i12) {
        this.resId = i10;
        this.weight = fontWeight;
        this.style = i11;
        this.loadingStrategy = i12;
    }

    public /* synthetic */ ResourceFont(int i10, FontWeight fontWeight, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i13 & 2) != 0 ? FontWeight.Companion.getNormal() : fontWeight, (i13 & 4) != 0 ? FontStyle.Companion.m3780getNormal_LCdwA() : i11, (i13 & 8) != 0 ? FontLoadingStrategy.Companion.m3766getAsyncPKNRLFQ() : i12, null);
    }

    @ExperimentalTextApi
    /* renamed from: getLoadingStrategy-PKNRLFQ$annotations  reason: not valid java name */
    public static /* synthetic */ void m3808getLoadingStrategyPKNRLFQ$annotations() {
    }
}
