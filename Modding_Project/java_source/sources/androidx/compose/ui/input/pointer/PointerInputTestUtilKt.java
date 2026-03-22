package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import at.n;
import com.google.android.material.internal.ViewUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInputTestUtil.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInputTestUtilKt {
    @NotNull
    public static final PointerInputChange down(long j10, long j11, float f10, float f11) {
        return new PointerInputChange(PointerId.m3193constructorimpl(j10), j11, OffsetKt.Offset(f10, f11), true, j11, OffsetKt.Offset(f10, f11), false, false, 0, 0L, (int) ViewUtils.EDGE_TO_EDGE_FLAGS, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ PointerInputChange down$default(long j10, long j11, float f10, float f11, int i10, Object obj) {
        float f12;
        float f13;
        if ((i10 & 2) != 0) {
            j11 = 0;
        }
        long j12 = j11;
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        } else {
            f12 = f10;
        }
        if ((i10 & 8) != 0) {
            f13 = 0.0f;
        } else {
            f13 = f11;
        }
        return down(j10, j12, f12, f13);
    }

    /* renamed from: invokeOverAllPasses-H0pRuoY  reason: not valid java name */
    public static final void m3258invokeOverAllPassesH0pRuoY(@NotNull n<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverAllPasses, @NotNull PointerEvent pointerEvent, long j10) {
        Intrinsics.checkNotNullParameter(invokeOverAllPasses, "$this$invokeOverAllPasses");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        m3262invokeOverPasseshUlJWOE(invokeOverAllPasses, pointerEvent, CollectionsKt.q(PointerEventPass.Initial, PointerEventPass.Main, PointerEventPass.Final), j10);
    }

    /* renamed from: invokeOverAllPasses-H0pRuoY$default  reason: not valid java name */
    public static /* synthetic */ void m3259invokeOverAllPassesH0pRuoY$default(n nVar, PointerEvent pointerEvent, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m3258invokeOverAllPassesH0pRuoY(nVar, pointerEvent, j10);
    }

    /* renamed from: invokeOverPass-hUlJWOE  reason: not valid java name */
    public static final void m3260invokeOverPasshUlJWOE(@NotNull n<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverPass, @NotNull PointerEvent pointerEvent, @NotNull PointerEventPass pointerEventPass, long j10) {
        Intrinsics.checkNotNullParameter(invokeOverPass, "$this$invokeOverPass");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pointerEventPass, "pointerEventPass");
        m3262invokeOverPasseshUlJWOE(invokeOverPass, pointerEvent, CollectionsKt.e(pointerEventPass), j10);
    }

    /* renamed from: invokeOverPass-hUlJWOE$default  reason: not valid java name */
    public static /* synthetic */ void m3261invokeOverPasshUlJWOE$default(n nVar, PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m3260invokeOverPasshUlJWOE(nVar, pointerEvent, pointerEventPass, j10);
    }

    /* renamed from: invokeOverPasses-hUlJWOE  reason: not valid java name */
    public static final void m3263invokeOverPasseshUlJWOE(@NotNull n<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverPasses, @NotNull PointerEvent pointerEvent, @NotNull PointerEventPass[] pointerEventPasses, long j10) {
        Intrinsics.checkNotNullParameter(invokeOverPasses, "$this$invokeOverPasses");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pointerEventPasses, "pointerEventPasses");
        m3262invokeOverPasseshUlJWOE(invokeOverPasses, pointerEvent, kotlin.collections.n.x1(pointerEventPasses), j10);
    }

    /* renamed from: invokeOverPasses-hUlJWOE$default  reason: not valid java name */
    public static /* synthetic */ void m3265invokeOverPasseshUlJWOE$default(n nVar, PointerEvent pointerEvent, PointerEventPass[] pointerEventPassArr, long j10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m3263invokeOverPasseshUlJWOE(nVar, pointerEvent, pointerEventPassArr, j10);
    }

    @NotNull
    public static final PointerInputChange moveBy(@NotNull PointerInputChange pointerInputChange, long j10, float f10, float f11) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        long m3207getIdJ3iCeTQ = pointerInputChange.m3207getIdJ3iCeTQ();
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        return new PointerInputChange(m3207getIdJ3iCeTQ, pointerInputChange.getUptimeMillis() + j10, OffsetKt.Offset(Offset.m1606getXimpl(pointerInputChange.m3208getPositionF1C5BW0()) + f10, Offset.m1607getYimpl(pointerInputChange.m3208getPositionF1C5BW0()) + f11), true, uptimeMillis, pointerInputChange.m3208getPositionF1C5BW0(), pressed, false, 0, 0L, (int) ViewUtils.EDGE_TO_EDGE_FLAGS, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ PointerInputChange moveBy$default(PointerInputChange pointerInputChange, long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        return moveBy(pointerInputChange, j10, f10, f11);
    }

    @NotNull
    public static final PointerInputChange moveTo(@NotNull PointerInputChange pointerInputChange, long j10, float f10, float f11) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        long m3207getIdJ3iCeTQ = pointerInputChange.m3207getIdJ3iCeTQ();
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        return new PointerInputChange(m3207getIdJ3iCeTQ, j10, OffsetKt.Offset(f10, f11), true, uptimeMillis, pointerInputChange.m3208getPositionF1C5BW0(), pressed, false, 0, 0L, (int) ViewUtils.EDGE_TO_EDGE_FLAGS, (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ PointerInputChange moveTo$default(PointerInputChange pointerInputChange, long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f11 = 0.0f;
        }
        return moveTo(pointerInputChange, j10, f10, f11);
    }

    @NotNull
    public static final PointerInputChange up(@NotNull PointerInputChange pointerInputChange, long j10) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        long m3207getIdJ3iCeTQ = pointerInputChange.m3207getIdJ3iCeTQ();
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        return new PointerInputChange(m3207getIdJ3iCeTQ, j10, pointerInputChange.m3208getPositionF1C5BW0(), false, uptimeMillis, pointerInputChange.m3208getPositionF1C5BW0(), pressed, false, 0, 0L, (int) ViewUtils.EDGE_TO_EDGE_FLAGS, (DefaultConstructorMarker) null);
    }

    /* renamed from: invokeOverPasses-hUlJWOE  reason: not valid java name */
    public static final void m3262invokeOverPasseshUlJWOE(@NotNull n<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverPasses, @NotNull PointerEvent pointerEvent, @NotNull List<? extends PointerEventPass> pointerEventPasses, long j10) {
        Intrinsics.checkNotNullParameter(invokeOverPasses, "$this$invokeOverPasses");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pointerEventPasses, "pointerEventPasses");
        if (!pointerEvent.getChanges().isEmpty()) {
            if (!pointerEventPasses.isEmpty()) {
                int size = pointerEventPasses.size();
                for (int i10 = 0; i10 < size; i10++) {
                    invokeOverPasses.invoke(pointerEvent, pointerEventPasses.get(i10), IntSize.m4201boximpl(j10));
                }
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    /* renamed from: invokeOverPasses-hUlJWOE$default  reason: not valid java name */
    public static /* synthetic */ void m3264invokeOverPasseshUlJWOE$default(n nVar, PointerEvent pointerEvent, List list, long j10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m3262invokeOverPasseshUlJWOE(nVar, pointerEvent, list, j10);
    }
}
