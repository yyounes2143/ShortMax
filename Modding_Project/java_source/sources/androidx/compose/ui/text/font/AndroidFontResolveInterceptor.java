package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidFontResolveInterceptor.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidFontResolveInterceptor implements PlatformResolveInterceptor {
    private final int fontWeightAdjustment;

    public AndroidFontResolveInterceptor(int i10) {
        this.fontWeightAdjustment = i10;
    }

    private final int component1() {
        return this.fontWeightAdjustment;
    }

    public static /* synthetic */ AndroidFontResolveInterceptor copy$default(AndroidFontResolveInterceptor androidFontResolveInterceptor, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = androidFontResolveInterceptor.fontWeightAdjustment;
        }
        return androidFontResolveInterceptor.copy(i10);
    }

    @NotNull
    public final AndroidFontResolveInterceptor copy(int i10) {
        return new AndroidFontResolveInterceptor(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AndroidFontResolveInterceptor) && this.fontWeightAdjustment == ((AndroidFontResolveInterceptor) obj).fontWeightAdjustment) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Integer.hashCode(this.fontWeightAdjustment);
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    @NotNull
    public FontWeight interceptFontWeight(@NotNull FontWeight fontWeight) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        int i10 = this.fontWeightAdjustment;
        if (i10 != 0 && i10 != Integer.MAX_VALUE) {
            return new FontWeight(e.n(fontWeight.getWeight() + this.fontWeightAdjustment, 1, 1000));
        }
        return fontWeight;
    }

    @NotNull
    public String toString() {
        return "AndroidFontResolveInterceptor(fontWeightAdjustment=" + this.fontWeightAdjustment + ')';
    }
}
