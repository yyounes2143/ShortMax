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
public final class SweepGradient extends ShaderBrush {
    private final long center;
    @NotNull
    private final List<Color> colors;
    @Nullable
    private final List<Float> stops;

    public /* synthetic */ SweepGradient(long j10, List list, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, list, list2);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    @NotNull
    /* renamed from: createShader-uvyYCjk */
    public Shader mo1811createShaderuvyYCjk(long j10) {
        float m1606getXimpl;
        float m1607getYimpl;
        long Offset;
        if (OffsetKt.m1627isUnspecifiedk4lQ0M(this.center)) {
            Offset = SizeKt.m1685getCenteruvyYCjk(j10);
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
            Offset = OffsetKt.Offset(m1606getXimpl, m1607getYimpl);
        }
        return ShaderKt.m2120SweepGradientShader9KIMszo(Offset, this.colors, this.stops);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SweepGradient)) {
            return false;
        }
        SweepGradient sweepGradient = (SweepGradient) obj;
        if (Offset.m1603equalsimpl0(this.center, sweepGradient.center) && Intrinsics.areEqual(this.colors, sweepGradient.colors) && Intrinsics.areEqual(this.stops, sweepGradient.stops)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int m1608hashCodeimpl = ((Offset.m1608hashCodeimpl(this.center) * 31) + this.colors.hashCode()) * 31;
        List<Float> list = this.stops;
        if (list != null) {
            i10 = list.hashCode();
        } else {
            i10 = 0;
        }
        return m1608hashCodeimpl + i10;
    }

    @NotNull
    public String toString() {
        String str;
        if (OffsetKt.m1625isSpecifiedk4lQ0M(this.center)) {
            str = "center=" + ((Object) Offset.m1614toStringimpl(this.center)) + ", ";
        } else {
            str = "";
        }
        return "SweepGradient(" + str + "colors=" + this.colors + ", stops=" + this.stops + ')';
    }

    public /* synthetic */ SweepGradient(long j10, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, list, (i10 & 4) != 0 ? null : list2, null);
    }

    private SweepGradient(long j10, List<Color> list, List<Float> list2) {
        this.center = j10;
        this.colors = list;
        this.stops = list2;
    }
}
