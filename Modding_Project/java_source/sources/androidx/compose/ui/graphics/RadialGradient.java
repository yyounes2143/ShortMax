package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Brush.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class RadialGradient extends ShaderBrush {
    private final long center;
    @NotNull
    private final List<Color> colors;
    private final float radius;
    @Nullable
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ RadialGradient(List list, List list2, long j10, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, j10, f10, i10);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    @NotNull
    /* renamed from: createShader-uvyYCjk */
    public Shader mo1811createShaderuvyYCjk(long j10) {
        float m1606getXimpl;
        float m1607getYimpl;
        float f10;
        if (OffsetKt.m1627isUnspecifiedk4lQ0M(this.center)) {
            long m1685getCenteruvyYCjk = SizeKt.m1685getCenteruvyYCjk(j10);
            m1606getXimpl = Offset.m1606getXimpl(m1685getCenteruvyYCjk);
            m1607getYimpl = Offset.m1607getYimpl(m1685getCenteruvyYCjk);
        } else {
            if (Offset.m1606getXimpl(this.center) == Float.POSITIVE_INFINITY) {
                m1606getXimpl = Size.m1675getWidthimpl(j10);
            } else {
                m1606getXimpl = Offset.m1606getXimpl(this.center);
            }
            if (Offset.m1607getYimpl(this.center) == Float.POSITIVE_INFINITY) {
                m1607getYimpl = Size.m1672getHeightimpl(j10);
            } else {
                m1607getYimpl = Offset.m1607getYimpl(this.center);
            }
        }
        List<Color> list = this.colors;
        List<Float> list2 = this.stops;
        long Offset = OffsetKt.Offset(m1606getXimpl, m1607getYimpl);
        float f11 = this.radius;
        if (f11 == Float.POSITIVE_INFINITY) {
            f10 = Size.m1674getMinDimensionimpl(j10) / 2;
        } else {
            f10 = f11;
        }
        return ShaderKt.m2118RadialGradientShader8uybcMk(Offset, f10, list, list2, this.tileMode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RadialGradient)) {
            return false;
        }
        RadialGradient radialGradient = (RadialGradient) obj;
        if (Intrinsics.areEqual(this.colors, radialGradient.colors) && Intrinsics.areEqual(this.stops, radialGradient.stops) && Offset.m1603equalsimpl0(this.center, radialGradient.center) && this.radius == radialGradient.radius && TileMode.m2162equalsimpl0(this.tileMode, radialGradient.tileMode)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo1790getIntrinsicSizeNHjbRc() {
        float f10 = this.radius;
        if (!Float.isInfinite(f10) && !Float.isNaN(f10)) {
            float f11 = this.radius;
            float f12 = 2;
            return SizeKt.Size(f11 * f12, f11 * f12);
        }
        return Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    public int hashCode() {
        int i10;
        int hashCode = this.colors.hashCode() * 31;
        List<Float> list = this.stops;
        if (list != null) {
            i10 = list.hashCode();
        } else {
            i10 = 0;
        }
        return ((((((hashCode + i10) * 31) + Offset.m1608hashCodeimpl(this.center)) * 31) + Float.hashCode(this.radius)) * 31) + TileMode.m2163hashCodeimpl(this.tileMode);
    }

    @NotNull
    public String toString() {
        String str;
        String str2 = "";
        if (!OffsetKt.m1625isSpecifiedk4lQ0M(this.center)) {
            str = "";
        } else {
            str = "center=" + ((Object) Offset.m1614toStringimpl(this.center)) + ", ";
        }
        float f10 = this.radius;
        if (!Float.isInfinite(f10) && !Float.isNaN(f10)) {
            str2 = "radius=" + this.radius + ", ";
        }
        return "RadialGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + str2 + "tileMode=" + ((Object) TileMode.m2164toStringimpl(this.tileMode)) + ')';
    }

    public /* synthetic */ RadialGradient(List list, List list2, long j10, float f10, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? null : list2, j10, f10, (i11 & 16) != 0 ? TileMode.Companion.m2166getClamp3opZhB0() : i10, null);
    }

    private RadialGradient(List<Color> list, List<Float> list2, long j10, float f10, int i10) {
        this.colors = list;
        this.stops = list2;
        this.center = j10;
        this.radius = f10;
        this.tileMode = i10;
    }
}
