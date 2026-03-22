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
public final class LinearGradient extends ShaderBrush {
    @NotNull
    private final List<Color> colors;
    private final long end;
    private final long start;
    @Nullable
    private final List<Float> stops;
    private final int tileMode;

    public /* synthetic */ LinearGradient(List list, List list2, long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, j10, j11, i10);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    @NotNull
    /* renamed from: createShader-uvyYCjk */
    public Shader mo1811createShaderuvyYCjk(long j10) {
        float m1606getXimpl;
        float m1607getYimpl;
        float m1606getXimpl2;
        float m1607getYimpl2;
        if (Offset.m1606getXimpl(this.start) == Float.POSITIVE_INFINITY) {
            m1606getXimpl = Size.m1675getWidthimpl(j10);
        } else {
            m1606getXimpl = Offset.m1606getXimpl(this.start);
        }
        if (Offset.m1607getYimpl(this.start) == Float.POSITIVE_INFINITY) {
            m1607getYimpl = Size.m1672getHeightimpl(j10);
        } else {
            m1607getYimpl = Offset.m1607getYimpl(this.start);
        }
        if (Offset.m1606getXimpl(this.end) == Float.POSITIVE_INFINITY) {
            m1606getXimpl2 = Size.m1675getWidthimpl(j10);
        } else {
            m1606getXimpl2 = Offset.m1606getXimpl(this.end);
        }
        if (Offset.m1607getYimpl(this.end) == Float.POSITIVE_INFINITY) {
            m1607getYimpl2 = Size.m1672getHeightimpl(j10);
        } else {
            m1607getYimpl2 = Offset.m1607getYimpl(this.end);
        }
        return ShaderKt.m2116LinearGradientShaderVjE6UOU(OffsetKt.Offset(m1606getXimpl, m1607getYimpl), OffsetKt.Offset(m1606getXimpl2, m1607getYimpl2), this.colors, this.stops, this.tileMode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearGradient)) {
            return false;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        if (Intrinsics.areEqual(this.colors, linearGradient.colors) && Intrinsics.areEqual(this.stops, linearGradient.stops) && Offset.m1603equalsimpl0(this.start, linearGradient.start) && Offset.m1603equalsimpl0(this.end, linearGradient.end) && TileMode.m2162equalsimpl0(this.tileMode, linearGradient.tileMode)) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo1790getIntrinsicSizeNHjbRc() {
        float f10;
        float m1607getYimpl;
        float m1607getYimpl2;
        float m1606getXimpl = Offset.m1606getXimpl(this.start);
        float f11 = Float.NaN;
        if (!Float.isInfinite(m1606getXimpl) && !Float.isNaN(m1606getXimpl)) {
            float m1606getXimpl2 = Offset.m1606getXimpl(this.end);
            if (!Float.isInfinite(m1606getXimpl2) && !Float.isNaN(m1606getXimpl2)) {
                f10 = Math.abs(Offset.m1606getXimpl(this.start) - Offset.m1606getXimpl(this.end));
                m1607getYimpl = Offset.m1607getYimpl(this.start);
                if (!Float.isInfinite(m1607getYimpl) && !Float.isNaN(m1607getYimpl)) {
                    m1607getYimpl2 = Offset.m1607getYimpl(this.end);
                    if (!Float.isInfinite(m1607getYimpl2) && !Float.isNaN(m1607getYimpl2)) {
                        f11 = Math.abs(Offset.m1607getYimpl(this.start) - Offset.m1607getYimpl(this.end));
                    }
                }
                return SizeKt.Size(f10, f11);
            }
        }
        f10 = Float.NaN;
        m1607getYimpl = Offset.m1607getYimpl(this.start);
        if (!Float.isInfinite(m1607getYimpl)) {
            m1607getYimpl2 = Offset.m1607getYimpl(this.end);
            if (!Float.isInfinite(m1607getYimpl2)) {
                f11 = Math.abs(Offset.m1607getYimpl(this.start) - Offset.m1607getYimpl(this.end));
            }
        }
        return SizeKt.Size(f10, f11);
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
        return ((((((hashCode + i10) * 31) + Offset.m1608hashCodeimpl(this.start)) * 31) + Offset.m1608hashCodeimpl(this.end)) * 31) + TileMode.m2163hashCodeimpl(this.tileMode);
    }

    @NotNull
    public String toString() {
        String str;
        String str2 = "";
        if (!OffsetKt.m1623isFinitek4lQ0M(this.start)) {
            str = "";
        } else {
            str = "start=" + ((Object) Offset.m1614toStringimpl(this.start)) + ", ";
        }
        if (OffsetKt.m1623isFinitek4lQ0M(this.end)) {
            str2 = "end=" + ((Object) Offset.m1614toStringimpl(this.end)) + ", ";
        }
        return "LinearGradient(colors=" + this.colors + ", stops=" + this.stops + ", " + str + str2 + "tileMode=" + ((Object) TileMode.m2164toStringimpl(this.tileMode)) + ')';
    }

    public /* synthetic */ LinearGradient(List list, List list2, long j10, long j11, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? null : list2, j10, j11, (i11 & 16) != 0 ? TileMode.Companion.m2166getClamp3opZhB0() : i10, null);
    }

    private LinearGradient(List<Color> list, List<Float> list2, long j10, long j11, int i10) {
        this.colors = list;
        this.stops = list2;
        this.start = j10;
        this.end = j11;
        this.tileMode = i10;
    }
}
