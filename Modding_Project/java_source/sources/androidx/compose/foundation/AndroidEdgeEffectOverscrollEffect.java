package androidx.compose.foundation;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.Velocity;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidOverscroll.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    @NotNull
    private final List<EdgeEffect> allEffects;
    @NotNull
    private final EdgeEffect bottomEffect;
    @NotNull
    private final EdgeEffect bottomEffectNegation;
    private long containerSize;
    @NotNull
    private final Modifier effectModifier;
    private boolean invalidationEnabled;
    private boolean isEnabled;
    @NotNull
    private final MutableState<Boolean> isEnabledState;
    @NotNull
    private final EdgeEffect leftEffect;
    @NotNull
    private final EdgeEffect leftEffectNegation;
    @NotNull
    private final Function1<IntSize, Unit> onNewSize;
    @NotNull
    private final OverscrollConfiguration overscrollConfig;
    @NotNull
    private final MutableState<Unit> redrawSignal;
    @NotNull
    private final EdgeEffect rightEffect;
    @NotNull
    private final EdgeEffect rightEffectNegation;
    private boolean scrollCycleInProgress;
    @NotNull
    private final EdgeEffect topEffect;
    @NotNull
    private final EdgeEffect topEffectNegation;

    public AndroidEdgeEffectOverscrollEffect(@NotNull Context context, @NotNull OverscrollConfiguration overscrollConfig) {
        MutableState<Boolean> mutableStateOf$default;
        Modifier modifier;
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(overscrollConfig, "overscrollConfig");
        this.overscrollConfig = overscrollConfig;
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        EdgeEffect create = edgeEffectCompat.create(context, null);
        this.topEffect = create;
        EdgeEffect create2 = edgeEffectCompat.create(context, null);
        this.bottomEffect = create2;
        EdgeEffect create3 = edgeEffectCompat.create(context, null);
        this.leftEffect = create3;
        EdgeEffect create4 = edgeEffectCompat.create(context, null);
        this.rightEffect = create4;
        List<EdgeEffect> q10 = CollectionsKt.q(create3, create, create4, create2);
        this.allEffects = q10;
        this.topEffectNegation = edgeEffectCompat.create(context, null);
        this.bottomEffectNegation = edgeEffectCompat.create(context, null);
        this.leftEffectNegation = edgeEffectCompat.create(context, null);
        this.rightEffectNegation = edgeEffectCompat.create(context, null);
        int size = q10.size();
        for (int i10 = 0; i10 < size; i10++) {
            q10.get(i10).setColor(ColorKt.m1897toArgb8_81llA(this.overscrollConfig.m269getGlowColor0d7_KjU()));
        }
        this.redrawSignal = SnapshotStateKt.mutableStateOf(Unit.f60915a, SnapshotStateKt.neverEqualPolicy());
        this.invalidationEnabled = true;
        this.containerSize = Size.Companion.m1684getZeroNHjbRc();
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isEnabledState = mutableStateOf$default;
        Function1<IntSize, Unit> function1 = new Function1<IntSize, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$onNewSize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                m196invokeozmzZPI(intSize.m4213unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-ozmzZPI  reason: not valid java name */
            public final void m196invokeozmzZPI(long j10) {
                long j11;
                EdgeEffect edgeEffect;
                EdgeEffect edgeEffect2;
                EdgeEffect edgeEffect3;
                EdgeEffect edgeEffect4;
                EdgeEffect edgeEffect5;
                EdgeEffect edgeEffect6;
                EdgeEffect edgeEffect7;
                EdgeEffect edgeEffect8;
                long m4219toSizeozmzZPI = IntSizeKt.m4219toSizeozmzZPI(j10);
                j11 = AndroidEdgeEffectOverscrollEffect.this.containerSize;
                boolean m1671equalsimpl0 = Size.m1671equalsimpl0(m4219toSizeozmzZPI, j11);
                AndroidEdgeEffectOverscrollEffect.this.containerSize = IntSizeKt.m4219toSizeozmzZPI(j10);
                if (!m1671equalsimpl0) {
                    edgeEffect = AndroidEdgeEffectOverscrollEffect.this.topEffect;
                    edgeEffect.setSize(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10));
                    edgeEffect2 = AndroidEdgeEffectOverscrollEffect.this.bottomEffect;
                    edgeEffect2.setSize(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10));
                    edgeEffect3 = AndroidEdgeEffectOverscrollEffect.this.leftEffect;
                    edgeEffect3.setSize(IntSize.m4208getHeightimpl(j10), IntSize.m4209getWidthimpl(j10));
                    edgeEffect4 = AndroidEdgeEffectOverscrollEffect.this.rightEffect;
                    edgeEffect4.setSize(IntSize.m4208getHeightimpl(j10), IntSize.m4209getWidthimpl(j10));
                    edgeEffect5 = AndroidEdgeEffectOverscrollEffect.this.topEffectNegation;
                    edgeEffect5.setSize(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10));
                    edgeEffect6 = AndroidEdgeEffectOverscrollEffect.this.bottomEffectNegation;
                    edgeEffect6.setSize(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10));
                    edgeEffect7 = AndroidEdgeEffectOverscrollEffect.this.leftEffectNegation;
                    edgeEffect7.setSize(IntSize.m4208getHeightimpl(j10), IntSize.m4209getWidthimpl(j10));
                    edgeEffect8 = AndroidEdgeEffectOverscrollEffect.this.rightEffectNegation;
                    edgeEffect8.setSize(IntSize.m4208getHeightimpl(j10), IntSize.m4209getWidthimpl(j10));
                }
                if (!m1671equalsimpl0) {
                    AndroidEdgeEffectOverscrollEffect.this.invalidateOverscroll();
                    AndroidEdgeEffectOverscrollEffect.this.animateToRelease();
                }
            }
        };
        this.onNewSize = function1;
        Modifier.Companion companion = Modifier.Companion;
        modifier = AndroidOverscrollKt.StretchOverscrollNonClippingLayer;
        Modifier onSizeChanged = OnRemeasuredModifierKt.onSizeChanged(companion.then(modifier), function1);
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("overscroll");
                    inspectorInfo.setValue(AndroidEdgeEffectOverscrollEffect.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        this.effectModifier = onSizeChanged.then(new DrawOverscrollModifier(this, noInspectorInfo));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void animateToRelease() {
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            EdgeEffect edgeEffect = list.get(i10);
            edgeEffect.onRelease();
            if (!edgeEffect.isFinished() && !z10) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        if (z10) {
            invalidateOverscroll();
        }
    }

    private final boolean drawBottom(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(180.0f);
        canvas.translate(-Size.m1675getWidthimpl(this.containerSize), (-Size.m1672getHeightimpl(this.containerSize)) + drawScope.mo342toPx0680j_4(this.overscrollConfig.getDrawPadding().mo427calculateBottomPaddingD9Ej5fM()));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    private final boolean drawLeft(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(270.0f);
        canvas.translate(-Size.m1672getHeightimpl(this.containerSize), drawScope.mo342toPx0680j_4(this.overscrollConfig.getDrawPadding().mo428calculateLeftPaddingu2uoSUM(drawScope.getLayoutDirection())));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    private final boolean drawRight(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        int c10 = bt.a.c(Size.m1675getWidthimpl(this.containerSize));
        float mo429calculateRightPaddingu2uoSUM = this.overscrollConfig.getDrawPadding().mo429calculateRightPaddingu2uoSUM(drawScope.getLayoutDirection());
        canvas.rotate(90.0f);
        canvas.translate(0.0f, (-c10) + drawScope.mo342toPx0680j_4(mo429calculateRightPaddingu2uoSUM));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    private final boolean drawTop(DrawScope drawScope, EdgeEffect edgeEffect, Canvas canvas) {
        int save = canvas.save();
        canvas.translate(0.0f, drawScope.mo342toPx0680j_4(this.overscrollConfig.getDrawPadding().mo430calculateTopPaddingD9Ej5fM()));
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateOverscroll() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(Unit.f60915a);
        }
    }

    /* renamed from: pullBottom-0a9Yr6o  reason: not valid java name */
    private final float m187pullBottom0a9Yr6o(long j10, long j11) {
        float m1606getXimpl = Offset.m1606getXimpl(j11) / Size.m1675getWidthimpl(this.containerSize);
        return (-EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.bottomEffect, -(Offset.m1607getYimpl(j10) / Size.m1672getHeightimpl(this.containerSize)), 1 - m1606getXimpl)) * Size.m1672getHeightimpl(this.containerSize);
    }

    /* renamed from: pullLeft-0a9Yr6o  reason: not valid java name */
    private final float m188pullLeft0a9Yr6o(long j10, long j11) {
        float m1607getYimpl = Offset.m1607getYimpl(j11) / Size.m1672getHeightimpl(this.containerSize);
        return EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.leftEffect, Offset.m1606getXimpl(j10) / Size.m1675getWidthimpl(this.containerSize), 1 - m1607getYimpl) * Size.m1675getWidthimpl(this.containerSize);
    }

    /* renamed from: pullRight-0a9Yr6o  reason: not valid java name */
    private final float m189pullRight0a9Yr6o(long j10, long j11) {
        return (-EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.rightEffect, -(Offset.m1606getXimpl(j10) / Size.m1675getWidthimpl(this.containerSize)), Offset.m1607getYimpl(j11) / Size.m1672getHeightimpl(this.containerSize))) * Size.m1675getWidthimpl(this.containerSize);
    }

    /* renamed from: pullTop-0a9Yr6o  reason: not valid java name */
    private final float m190pullTop0a9Yr6o(long j10, long j11) {
        float m1606getXimpl = Offset.m1606getXimpl(j11) / Size.m1675getWidthimpl(this.containerSize);
        return EdgeEffectCompat.INSTANCE.onPullDistanceCompat(this.topEffect, Offset.m1607getYimpl(j10) / Size.m1672getHeightimpl(this.containerSize), m1606getXimpl) * Size.m1672getHeightimpl(this.containerSize);
    }

    /* renamed from: releaseOppositeOverscroll-k-4lQ0M  reason: not valid java name */
    private final boolean m191releaseOppositeOverscrollk4lQ0M(long j10) {
        boolean z10;
        boolean z11 = false;
        if (!this.leftEffect.isFinished() && Offset.m1606getXimpl(j10) < 0.0f) {
            this.leftEffect.onRelease();
            z10 = this.leftEffect.isFinished();
        } else {
            z10 = false;
        }
        if (!this.rightEffect.isFinished() && Offset.m1606getXimpl(j10) > 0.0f) {
            this.rightEffect.onRelease();
            if (!z10 && !this.rightEffect.isFinished()) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        if (!this.topEffect.isFinished() && Offset.m1607getYimpl(j10) < 0.0f) {
            this.topEffect.onRelease();
            if (!z10 && !this.topEffect.isFinished()) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        if (!this.bottomEffect.isFinished() && Offset.m1607getYimpl(j10) > 0.0f) {
            this.bottomEffect.onRelease();
            if (z10 || this.bottomEffect.isFinished()) {
                z11 = true;
            }
            return z11;
        }
        return z10;
    }

    private final boolean stopOverscrollAnimation() {
        boolean z10;
        long m1685getCenteruvyYCjk = SizeKt.m1685getCenteruvyYCjk(this.containerSize);
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        if (edgeEffectCompat.getDistanceCompat(this.leftEffect) == 0.0f) {
            z10 = false;
        } else {
            m188pullLeft0a9Yr6o(Offset.Companion.m1622getZeroF1C5BW0(), m1685getCenteruvyYCjk);
            z10 = true;
        }
        if (edgeEffectCompat.getDistanceCompat(this.rightEffect) != 0.0f) {
            m189pullRight0a9Yr6o(Offset.Companion.m1622getZeroF1C5BW0(), m1685getCenteruvyYCjk);
            z10 = true;
        }
        if (edgeEffectCompat.getDistanceCompat(this.topEffect) != 0.0f) {
            m190pullTop0a9Yr6o(Offset.Companion.m1622getZeroF1C5BW0(), m1685getCenteruvyYCjk);
            z10 = true;
        }
        if (edgeEffectCompat.getDistanceCompat(this.bottomEffect) == 0.0f) {
            return z10;
        }
        m187pullBottom0a9Yr6o(Offset.Companion.m1622getZeroF1C5BW0(), m1685getCenteruvyYCjk);
        return true;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    @Nullable
    /* renamed from: consumePostFling-sF-c-tU  reason: not valid java name */
    public Object mo192consumePostFlingsFctU(long j10, @NotNull c<? super Unit> cVar) {
        this.scrollCycleInProgress = false;
        if (Velocity.m4274getXimpl(j10) > 0.0f) {
            EdgeEffectCompat.INSTANCE.onAbsorbCompat(this.leftEffect, bt.a.c(Velocity.m4274getXimpl(j10)));
        } else if (Velocity.m4274getXimpl(j10) < 0.0f) {
            EdgeEffectCompat.INSTANCE.onAbsorbCompat(this.rightEffect, -bt.a.c(Velocity.m4274getXimpl(j10)));
        }
        if (Velocity.m4275getYimpl(j10) > 0.0f) {
            EdgeEffectCompat.INSTANCE.onAbsorbCompat(this.topEffect, bt.a.c(Velocity.m4275getYimpl(j10)));
        } else if (Velocity.m4275getYimpl(j10) < 0.0f) {
            EdgeEffectCompat.INSTANCE.onAbsorbCompat(this.bottomEffect, -bt.a.c(Velocity.m4275getYimpl(j10)));
        }
        if (!Velocity.m4273equalsimpl0(j10, Velocity.Companion.m4285getZero9UxMQ8M())) {
            invalidateOverscroll();
        }
        animateToRelease();
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: consumePostScroll-l7mfB5k  reason: not valid java name */
    public void mo193consumePostScrolll7mfB5k(long j10, long j11, @Nullable Offset offset, int i10) {
        boolean z10;
        long m1685getCenteruvyYCjk;
        if (NestedScrollSource.m3104equalsimpl0(i10, NestedScrollSource.Companion.m3109getDragWNlRxjI())) {
            if (offset != null) {
                m1685getCenteruvyYCjk = offset.m1616unboximpl();
            } else {
                m1685getCenteruvyYCjk = SizeKt.m1685getCenteruvyYCjk(this.containerSize);
            }
            if (Offset.m1606getXimpl(j11) > 0.0f) {
                m188pullLeft0a9Yr6o(j11, m1685getCenteruvyYCjk);
            } else if (Offset.m1606getXimpl(j11) < 0.0f) {
                m189pullRight0a9Yr6o(j11, m1685getCenteruvyYCjk);
            }
            if (Offset.m1607getYimpl(j11) > 0.0f) {
                m190pullTop0a9Yr6o(j11, m1685getCenteruvyYCjk);
            } else if (Offset.m1607getYimpl(j11) < 0.0f) {
                m187pullBottom0a9Yr6o(j11, m1685getCenteruvyYCjk);
            }
            z10 = !Offset.m1603equalsimpl0(j11, Offset.Companion.m1622getZeroF1C5BW0());
        } else {
            z10 = false;
        }
        if (m191releaseOppositeOverscrollk4lQ0M(j10) || z10) {
            invalidateOverscroll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    @Override // androidx.compose.foundation.OverscrollEffect
    @org.jetbrains.annotations.Nullable
    /* renamed from: consumePreFling-QWom1Mo  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo194consumePreFlingQWom1Mo(long r4, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.unit.Velocity> r6) {
        /*
            r3 = this;
            float r6 = androidx.compose.ui.unit.Velocity.m4274getXimpl(r4)
            r0 = 0
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 <= 0) goto L28
            androidx.compose.foundation.EdgeEffectCompat r6 = androidx.compose.foundation.EdgeEffectCompat.INSTANCE
            android.widget.EdgeEffect r1 = r3.leftEffect
            float r1 = r6.getDistanceCompat(r1)
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r1 != 0) goto L16
            goto L28
        L16:
            android.widget.EdgeEffect r1 = r3.leftEffect
            float r2 = androidx.compose.ui.unit.Velocity.m4274getXimpl(r4)
            int r2 = bt.a.c(r2)
            r6.onAbsorbCompat(r1, r2)
            float r6 = androidx.compose.ui.unit.Velocity.m4274getXimpl(r4)
            goto L51
        L28:
            float r6 = androidx.compose.ui.unit.Velocity.m4274getXimpl(r4)
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 >= 0) goto L50
            androidx.compose.foundation.EdgeEffectCompat r6 = androidx.compose.foundation.EdgeEffectCompat.INSTANCE
            android.widget.EdgeEffect r1 = r3.rightEffect
            float r1 = r6.getDistanceCompat(r1)
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r1 != 0) goto L3d
            goto L50
        L3d:
            android.widget.EdgeEffect r1 = r3.rightEffect
            float r2 = androidx.compose.ui.unit.Velocity.m4274getXimpl(r4)
            int r2 = bt.a.c(r2)
            int r2 = -r2
            r6.onAbsorbCompat(r1, r2)
            float r6 = androidx.compose.ui.unit.Velocity.m4274getXimpl(r4)
            goto L51
        L50:
            r6 = r0
        L51:
            float r1 = androidx.compose.ui.unit.Velocity.m4275getYimpl(r4)
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r1 <= 0) goto L78
            androidx.compose.foundation.EdgeEffectCompat r1 = androidx.compose.foundation.EdgeEffectCompat.INSTANCE
            android.widget.EdgeEffect r2 = r3.topEffect
            float r2 = r1.getDistanceCompat(r2)
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 != 0) goto L66
            goto L78
        L66:
            android.widget.EdgeEffect r0 = r3.topEffect
            float r2 = androidx.compose.ui.unit.Velocity.m4275getYimpl(r4)
            int r2 = bt.a.c(r2)
            r1.onAbsorbCompat(r0, r2)
            float r0 = androidx.compose.ui.unit.Velocity.m4275getYimpl(r4)
            goto L9f
        L78:
            float r1 = androidx.compose.ui.unit.Velocity.m4275getYimpl(r4)
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r1 >= 0) goto L9f
            androidx.compose.foundation.EdgeEffectCompat r1 = androidx.compose.foundation.EdgeEffectCompat.INSTANCE
            android.widget.EdgeEffect r2 = r3.bottomEffect
            float r2 = r1.getDistanceCompat(r2)
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 != 0) goto L8d
            goto L9f
        L8d:
            android.widget.EdgeEffect r0 = r3.bottomEffect
            float r2 = androidx.compose.ui.unit.Velocity.m4275getYimpl(r4)
            int r2 = bt.a.c(r2)
            int r2 = -r2
            r1.onAbsorbCompat(r0, r2)
            float r0 = androidx.compose.ui.unit.Velocity.m4275getYimpl(r4)
        L9f:
            long r4 = androidx.compose.ui.unit.VelocityKt.Velocity(r6, r0)
            androidx.compose.ui.unit.Velocity$Companion r6 = androidx.compose.ui.unit.Velocity.Companion
            long r0 = r6.m4285getZero9UxMQ8M()
            boolean r6 = androidx.compose.ui.unit.Velocity.m4273equalsimpl0(r4, r0)
            if (r6 != 0) goto Lb2
            r3.invalidateOverscroll()
        Lb2:
            androidx.compose.ui.unit.Velocity r4 = androidx.compose.ui.unit.Velocity.m4265boximpl(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo194consumePreFlingQWom1Mo(long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: consumePreScroll-A0NYTsA  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo195consumePreScrollA0NYTsA(long r5, @org.jetbrains.annotations.Nullable androidx.compose.ui.geometry.Offset r7, int r8) {
        /*
            r4 = this;
            boolean r8 = r4.scrollCycleInProgress
            if (r8 != 0) goto La
            r4.stopOverscrollAnimation()
            r8 = 1
            r4.scrollCycleInProgress = r8
        La:
            if (r7 == 0) goto L11
            long r7 = r7.m1616unboximpl()
            goto L17
        L11:
            long r7 = r4.containerSize
            long r7 = androidx.compose.ui.geometry.SizeKt.m1685getCenteruvyYCjk(r7)
        L17:
            float r0 = androidx.compose.ui.geometry.Offset.m1607getYimpl(r5)
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L22
        L20:
            r2 = r1
            goto L60
        L22:
            androidx.compose.foundation.EdgeEffectCompat r0 = androidx.compose.foundation.EdgeEffectCompat.INSTANCE
            android.widget.EdgeEffect r2 = r4.topEffect
            float r2 = r0.getDistanceCompat(r2)
            int r2 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r2 != 0) goto L4d
            android.widget.EdgeEffect r2 = r4.bottomEffect
            float r2 = r0.getDistanceCompat(r2)
            int r2 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r2 != 0) goto L39
            goto L20
        L39:
            float r2 = r4.m187pullBottom0a9Yr6o(r5, r7)
            android.widget.EdgeEffect r3 = r4.bottomEffect
            float r0 = r0.getDistanceCompat(r3)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L60
            android.widget.EdgeEffect r0 = r4.bottomEffect
            r0.onRelease()
            goto L60
        L4d:
            float r2 = r4.m190pullTop0a9Yr6o(r5, r7)
            android.widget.EdgeEffect r3 = r4.topEffect
            float r0 = r0.getDistanceCompat(r3)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L60
            android.widget.EdgeEffect r0 = r4.topEffect
            r0.onRelease()
        L60:
            float r0 = androidx.compose.ui.geometry.Offset.m1606getXimpl(r5)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L69
            goto La9
        L69:
            androidx.compose.foundation.EdgeEffectCompat r0 = androidx.compose.foundation.EdgeEffectCompat.INSTANCE
            android.widget.EdgeEffect r3 = r4.leftEffect
            float r3 = r0.getDistanceCompat(r3)
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r3 != 0) goto L95
            android.widget.EdgeEffect r3 = r4.rightEffect
            float r3 = r0.getDistanceCompat(r3)
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r3 != 0) goto L80
            goto La9
        L80:
            float r5 = r4.m189pullRight0a9Yr6o(r5, r7)
            android.widget.EdgeEffect r6 = r4.rightEffect
            float r6 = r0.getDistanceCompat(r6)
            int r6 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r6 != 0) goto L93
            android.widget.EdgeEffect r6 = r4.rightEffect
            r6.onRelease()
        L93:
            r1 = r5
            goto La9
        L95:
            float r5 = r4.m188pullLeft0a9Yr6o(r5, r7)
            android.widget.EdgeEffect r6 = r4.leftEffect
            float r6 = r0.getDistanceCompat(r6)
            int r6 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r6 != 0) goto L93
            android.widget.EdgeEffect r6 = r4.leftEffect
            r6.onRelease()
            goto L93
        La9:
            long r5 = androidx.compose.ui.geometry.OffsetKt.Offset(r1, r2)
            androidx.compose.ui.geometry.Offset$Companion r7 = androidx.compose.ui.geometry.Offset.Companion
            long r7 = r7.m1622getZeroF1C5BW0()
            boolean r7 = androidx.compose.ui.geometry.Offset.m1603equalsimpl0(r5, r7)
            if (r7 != 0) goto Lbc
            r4.invalidateOverscroll()
        Lbc:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo195consumePreScrollA0NYTsA(long, androidx.compose.ui.geometry.Offset, int):long");
    }

    public final void drawOverscroll(@NotNull DrawScope drawScope) {
        boolean z10;
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        androidx.compose.ui.graphics.Canvas canvas = drawScope.getDrawContext().getCanvas();
        this.redrawSignal.getValue();
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        if (edgeEffectCompat.getDistanceCompat(this.leftEffectNegation) != 0.0f) {
            drawRight(drawScope, this.leftEffectNegation, nativeCanvas);
            this.leftEffectNegation.finish();
        }
        boolean z11 = false;
        if (!this.leftEffect.isFinished()) {
            z10 = drawLeft(drawScope, this.leftEffect, nativeCanvas);
            edgeEffectCompat.onPullDistanceCompat(this.leftEffectNegation, edgeEffectCompat.getDistanceCompat(this.leftEffect), 0.0f);
        } else {
            z10 = false;
        }
        if (edgeEffectCompat.getDistanceCompat(this.topEffectNegation) != 0.0f) {
            drawBottom(drawScope, this.topEffectNegation, nativeCanvas);
            this.topEffectNegation.finish();
        }
        if (!this.topEffect.isFinished()) {
            if (!drawTop(drawScope, this.topEffect, nativeCanvas) && !z10) {
                z10 = false;
            } else {
                z10 = true;
            }
            edgeEffectCompat.onPullDistanceCompat(this.topEffectNegation, edgeEffectCompat.getDistanceCompat(this.topEffect), 0.0f);
        }
        if (edgeEffectCompat.getDistanceCompat(this.rightEffectNegation) != 0.0f) {
            drawLeft(drawScope, this.rightEffectNegation, nativeCanvas);
            this.rightEffectNegation.finish();
        }
        if (!this.rightEffect.isFinished()) {
            if (!drawRight(drawScope, this.rightEffect, nativeCanvas) && !z10) {
                z10 = false;
            } else {
                z10 = true;
            }
            edgeEffectCompat.onPullDistanceCompat(this.rightEffectNegation, edgeEffectCompat.getDistanceCompat(this.rightEffect), 0.0f);
        }
        if (edgeEffectCompat.getDistanceCompat(this.bottomEffectNegation) != 0.0f) {
            drawTop(drawScope, this.bottomEffectNegation, nativeCanvas);
            this.bottomEffectNegation.finish();
        }
        if (!this.bottomEffect.isFinished()) {
            if (drawBottom(drawScope, this.bottomEffect, nativeCanvas) || z10) {
                z11 = true;
            }
            edgeEffectCompat.onPullDistanceCompat(this.bottomEffectNegation, edgeEffectCompat.getDistanceCompat(this.bottomEffect), 0.0f);
            z10 = z11;
        }
        if (z10) {
            invalidateOverscroll();
        }
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    @NotNull
    public Modifier getEffectModifier() {
        return this.effectModifier;
    }

    public final boolean getInvalidationEnabled$foundation_release() {
        return this.invalidationEnabled;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isEnabled() {
        return this.isEnabledState.getValue().booleanValue();
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        boolean z10;
        List<EdgeEffect> list = this.allEffects;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (EdgeEffectCompat.INSTANCE.getDistanceCompat(list.get(i10)) == 0.0f) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public void setEnabled(boolean z10) {
        boolean z11;
        if (this.isEnabled != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.isEnabledState.setValue(Boolean.valueOf(z10));
        this.isEnabled = z10;
        if (z11) {
            this.scrollCycleInProgress = false;
            animateToRelease();
        }
    }

    public final void setInvalidationEnabled$foundation_release(boolean z10) {
        this.invalidationEnabled = z10;
    }

    @VisibleForTesting
    public static /* synthetic */ void getInvalidationEnabled$foundation_release$annotations() {
    }
}
