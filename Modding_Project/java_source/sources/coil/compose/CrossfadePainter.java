package coil.compose;

import android.os.SystemClock;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ScaleFactorKt;
import kotlin.Metadata;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CrossfadePainter.kt */
@Stable
@Metadata
/* loaded from: classes2.dex */
public final class CrossfadePainter extends Painter {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Painter f3861a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Painter f3862b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ContentScale f3863c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3864d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f3865e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f3866f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final MutableState f3867g;

    /* renamed from: h  reason: collision with root package name */
    private long f3868h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f3869i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final MutableState f3870j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final MutableState f3871k;

    public CrossfadePainter(@Nullable Painter painter, @Nullable Painter painter2, @NotNull ContentScale contentScale, int i10, boolean z10, boolean z11) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        this.f3861a = painter;
        this.f3862b = painter2;
        this.f3863c = contentScale;
        this.f3864d = i10;
        this.f3865e = z10;
        this.f3866f = z11;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
        this.f3867g = mutableStateOf$default;
        this.f3868h = -1L;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(1.0f), null, 2, null);
        this.f3870j = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.f3871k = mutableStateOf$default3;
    }

    private final long a(long j10, long j11) {
        Size.Companion companion = Size.Companion;
        if (j10 == companion.m1683getUnspecifiedNHjbRc() || Size.m1677isEmptyimpl(j10)) {
            return j11;
        }
        if (j11 == companion.m1683getUnspecifiedNHjbRc() || Size.m1677isEmptyimpl(j11)) {
            return j11;
        }
        return ScaleFactorKt.m3411timesUQTWf7w(j10, this.f3863c.mo3326computeScaleFactorH7hwNQA(j10, j11));
    }

    private final long b() {
        long m1684getZeroNHjbRc;
        long m1684getZeroNHjbRc2;
        boolean z10;
        Painter painter = this.f3861a;
        if (painter != null) {
            m1684getZeroNHjbRc = painter.mo2405getIntrinsicSizeNHjbRc();
        } else {
            m1684getZeroNHjbRc = Size.Companion.m1684getZeroNHjbRc();
        }
        Painter painter2 = this.f3862b;
        if (painter2 != null) {
            m1684getZeroNHjbRc2 = painter2.mo2405getIntrinsicSizeNHjbRc();
        } else {
            m1684getZeroNHjbRc2 = Size.Companion.m1684getZeroNHjbRc();
        }
        Size.Companion companion = Size.Companion;
        boolean z11 = false;
        if (m1684getZeroNHjbRc != companion.m1683getUnspecifiedNHjbRc()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (m1684getZeroNHjbRc2 != companion.m1683getUnspecifiedNHjbRc()) {
            z11 = true;
        }
        if (z10 && z11) {
            return SizeKt.Size(Math.max(Size.m1675getWidthimpl(m1684getZeroNHjbRc), Size.m1675getWidthimpl(m1684getZeroNHjbRc2)), Math.max(Size.m1672getHeightimpl(m1684getZeroNHjbRc), Size.m1672getHeightimpl(m1684getZeroNHjbRc2)));
        }
        if (this.f3866f) {
            if (z10) {
                return m1684getZeroNHjbRc;
            }
            if (z11) {
                return m1684getZeroNHjbRc2;
            }
        }
        return companion.m1683getUnspecifiedNHjbRc();
    }

    private final void c(DrawScope drawScope, Painter painter, float f10) {
        if (painter != null && f10 > 0.0f) {
            long mo2336getSizeNHjbRc = drawScope.mo2336getSizeNHjbRc();
            long a10 = a(painter.mo2405getIntrinsicSizeNHjbRc(), mo2336getSizeNHjbRc);
            if (mo2336getSizeNHjbRc == Size.Companion.m1683getUnspecifiedNHjbRc() || Size.m1677isEmptyimpl(mo2336getSizeNHjbRc)) {
                painter.m2411drawx_KDEd0(drawScope, a10, f10, d());
                return;
            }
            float f11 = 2;
            float m1675getWidthimpl = (Size.m1675getWidthimpl(mo2336getSizeNHjbRc) - Size.m1675getWidthimpl(a10)) / f11;
            float m1672getHeightimpl = (Size.m1672getHeightimpl(mo2336getSizeNHjbRc) - Size.m1672getHeightimpl(a10)) / f11;
            drawScope.getDrawContext().getTransform().inset(m1675getWidthimpl, m1672getHeightimpl, m1675getWidthimpl, m1672getHeightimpl);
            painter.m2411drawx_KDEd0(drawScope, a10, f10, d());
            float f12 = -m1675getWidthimpl;
            float f13 = -m1672getHeightimpl;
            drawScope.getDrawContext().getTransform().inset(f12, f13, f12, f13);
        }
    }

    private final ColorFilter d() {
        return (ColorFilter) this.f3871k.getValue();
    }

    private final int e() {
        return ((Number) this.f3867g.getValue()).intValue();
    }

    private final float f() {
        return ((Number) this.f3870j.getValue()).floatValue();
    }

    private final void g(ColorFilter colorFilter) {
        this.f3871k.setValue(colorFilter);
    }

    private final void h(int i10) {
        this.f3867g.setValue(Integer.valueOf(i10));
    }

    private final void i(float f10) {
        this.f3870j.setValue(Float.valueOf(f10));
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f10) {
        i(f10);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        g(colorFilter);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo2405getIntrinsicSizeNHjbRc() {
        return b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        float f10;
        boolean z10;
        if (this.f3869i) {
            c(drawScope, this.f3862b, f());
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f3868h == -1) {
            this.f3868h = uptimeMillis;
        }
        float f11 = ((float) (uptimeMillis - this.f3868h)) / this.f3864d;
        float m10 = e.m(f11, 0.0f, 1.0f) * f();
        if (this.f3865e) {
            f10 = f() - m10;
        } else {
            f10 = f();
        }
        if (f11 >= 1.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f3869i = z10;
        c(drawScope, this.f3861a, f10);
        c(drawScope, this.f3862b, m10);
        if (this.f3869i) {
            this.f3861a = null;
        } else {
            h(e() + 1);
        }
    }
}
