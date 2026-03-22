package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawTransform.kt */
@DrawScopeMarker
@Metadata
/* loaded from: classes.dex */
public interface DrawTransform {

    /* compiled from: DrawTransform.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
        public static long m2392getCenterF1C5BW0(@NotNull DrawTransform drawTransform) {
            return DrawTransform.super.mo2265getCenterF1C5BW0();
        }
    }

    /* renamed from: clipPath-mtrdD-E$default  reason: not valid java name */
    static /* synthetic */ void m2386clipPathmtrdDE$default(DrawTransform drawTransform, Path path, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
            }
            drawTransform.mo2263clipPathmtrdDE(path, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
    }

    /* renamed from: clipRect-N_I0leg$default  reason: not valid java name */
    static /* synthetic */ void m2387clipRectN_I0leg$default(DrawTransform drawTransform, float f10, float f11, float f12, float f13, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                f10 = 0.0f;
            }
            if ((i11 & 2) != 0) {
                f11 = 0.0f;
            }
            if ((i11 & 4) != 0) {
                f12 = Size.m1675getWidthimpl(drawTransform.mo2266getSizeNHjbRc());
            }
            if ((i11 & 8) != 0) {
                f13 = Size.m1672getHeightimpl(drawTransform.mo2266getSizeNHjbRc());
            }
            if ((i11 & 16) != 0) {
                i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
            }
            drawTransform.mo2264clipRectN_I0leg(f10, f11, f12, f13, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
    }

    /* renamed from: rotate-Uv8p0NA$default  reason: not valid java name */
    static /* synthetic */ void m2388rotateUv8p0NA$default(DrawTransform drawTransform, float f10, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                j10 = drawTransform.mo2265getCenterF1C5BW0();
            }
            drawTransform.mo2267rotateUv8p0NA(f10, j10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rotate-Uv8p0NA");
    }

    /* renamed from: scale-0AR0LA0$default  reason: not valid java name */
    static /* synthetic */ void m2389scale0AR0LA0$default(DrawTransform drawTransform, float f10, float f11, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                j10 = drawTransform.mo2265getCenterF1C5BW0();
            }
            drawTransform.mo2268scale0AR0LA0(f10, f11, j10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scale-0AR0LA0");
    }

    static /* synthetic */ void translate$default(DrawTransform drawTransform, float f10, float f11, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                f10 = 0.0f;
            }
            if ((i10 & 2) != 0) {
                f11 = 0.0f;
            }
            drawTransform.translate(f10, f11);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: translate");
    }

    /* renamed from: clipPath-mtrdD-E */
    void mo2263clipPathmtrdDE(@NotNull Path path, int i10);

    /* renamed from: clipRect-N_I0leg */
    void mo2264clipRectN_I0leg(float f10, float f11, float f12, float f13, int i10);

    /* renamed from: getCenter-F1C5BW0 */
    default long mo2265getCenterF1C5BW0() {
        float f10 = 2;
        return OffsetKt.Offset(Size.m1675getWidthimpl(mo2266getSizeNHjbRc()) / f10, Size.m1672getHeightimpl(mo2266getSizeNHjbRc()) / f10);
    }

    /* renamed from: getSize-NH-jbRc */
    long mo2266getSizeNHjbRc();

    void inset(float f10, float f11, float f12, float f13);

    /* renamed from: rotate-Uv8p0NA */
    void mo2267rotateUv8p0NA(float f10, long j10);

    /* renamed from: scale-0AR0LA0 */
    void mo2268scale0AR0LA0(float f10, float f11, long j10);

    /* renamed from: transform-58bKbWc */
    void mo2269transform58bKbWc(@NotNull float[] fArr);

    void translate(float f10, float f11);
}
