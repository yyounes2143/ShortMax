package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nVastProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastProgressBar.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastProgressBarKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,110:1\n155#2:111\n155#2:130\n1057#3,6:112\n1057#3,6:118\n1057#3,6:124\n1057#3,6:131\n76#4:137\n102#4,2:138\n*S KotlinDebug\n*F\n+ 1 VastProgressBar.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastProgressBarKt\n*L\n32#1:111\n59#1:130\n34#1:112,6\n39#1:118,6\n42#1:124,6\n60#1:131,6\n34#1:137\n34#1:138,2\n*E\n"})
/* loaded from: classes6.dex */
public final class m {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastProgressBarKt$VastProgressBar$1$1", f = "VastProgressBar.kt", l = {43, 45, 53}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35934h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Animatable<Float, AnimationVector1D> f35935i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ float f35936j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ boolean f35937k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i f35938l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Animatable<Float, AnimationVector1D> animatable, float f10, boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f35935i = animatable;
            this.f35936j = f10;
            this.f35937k = z10;
            this.f35938l = iVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f35935i, this.f35936j, this.f35937k, this.f35938l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35934h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            kotlin.f.b(obj);
                            Unit unit = Unit.f60915a;
                            return Unit.f60915a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                Animatable<Float, AnimationVector1D> animatable = this.f35935i;
                Float c10 = kotlin.coroutines.jvm.internal.a.c(this.f35936j);
                this.f35934h = 1;
                if (animatable.snapTo(c10, this) == f10) {
                    return f10;
                }
            }
            if (this.f35937k && (this.f35938l instanceof i.c)) {
                Animatable<Float, AnimationVector1D> animatable2 = this.f35935i;
                Float c11 = kotlin.coroutines.jvm.internal.a.c(1.0f);
                TweenSpec tween$default = AnimationSpecKt.tween$default(m.i(this.f35938l), 0, EasingKt.getLinearEasing(), 2, null);
                this.f35934h = 2;
                if (Animatable.animateTo$default(animatable2, c11, tween$default, null, null, this, 12, null) == f10) {
                    return f10;
                }
                return Unit.f60915a;
            }
            Animatable<Float, AnimationVector1D> animatable3 = this.f35935i;
            this.f35934h = 3;
            if (animatable3.stop(this) == f10) {
                return f10;
            }
            Unit unit2 = Unit.f60915a;
            return Unit.f60915a;
        }
    }

    public static final float a(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    public static final MutableState c() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(0.0f), null, 2, null);
        return mutableStateOf$default;
    }

    public static final Unit d(Animatable animatable, float f10, long j10, DrawScope drawBehind) {
        Intrinsics.checkNotNullParameter(drawBehind, "$this$drawBehind");
        DrawScope.m2333drawRoundRectuAw5IA$default(drawBehind, j10, 0L, SizeKt.Size(((Number) animatable.getValue()).floatValue() * Size.m1675getWidthimpl(drawBehind.mo2336getSizeNHjbRc()), Size.m1672getHeightimpl(drawBehind.mo2336getSizeNHjbRc())), CornerRadiusKt.CornerRadius(f10, f10), null, 0.0f, null, 0, 242, null);
        return Unit.f60915a;
    }

    public static final Unit e(boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, Modifier modifier, long j10, int i10, int i11, Composer composer, int i12) {
        g(z10, iVar, modifier, j10, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    public static final void f(MutableState<Float> mutableState, float f10) {
        mutableState.setValue(Float.valueOf(f10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a2, code lost:
        if ((r28 & 8) != 0) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void g(final boolean r21, @org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i r22, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r23, long r24, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.m.g(boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, androidx.compose.ui.Modifier, long, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final float h(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar) {
        if (iVar instanceof i.a) {
            return 100.0f;
        }
        if (iVar instanceof i.c) {
            i.c cVar = (i.c) iVar;
            if (cVar.b() != 0) {
                return (float) (cVar.a() / cVar.b());
            }
        } else if (!(iVar instanceof i.d) && !Intrinsics.areEqual(iVar, i.b.f36226a)) {
            throw new NoWhenBranchMatchedException();
        }
        return 0.0f;
    }

    public static final int i(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar) {
        if (iVar instanceof i.a) {
            return 0;
        }
        if (iVar instanceof i.c) {
            i.c cVar = (i.c) iVar;
            if (cVar.b() == 0) {
                return 0;
            }
            return kotlin.ranges.e.e((int) (cVar.b() - cVar.a()), 0);
        } else if ((iVar instanceof i.d) || Intrinsics.areEqual(iVar, i.b.f36226a)) {
            return 0;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
