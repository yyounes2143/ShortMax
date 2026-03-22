package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nRewardedCountDownTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 8 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 9 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,185:1\n155#2:186\n155#2:187\n155#2:240\n76#3:188\n76#3:253\n473#4,4:189\n477#4,2:197\n481#4:203\n25#5:193\n460#5,13:265\n473#5,3:291\n1057#6,3:194\n1060#6,3:200\n1057#6,6:204\n1057#6,6:210\n1057#6,6:216\n1057#6,6:222\n1057#6,6:228\n1057#6,6:234\n1057#6,6:241\n1057#6,6:279\n1057#6,6:285\n473#7:199\n68#8,5:247\n73#8:278\n77#8:295\n75#9:252\n76#9,11:254\n89#9:294\n76#10:296\n102#10,2:297\n76#10:299\n102#10,2:300\n62#11,5:302\n*S KotlinDebug\n*F\n+ 1 RewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerKt\n*L\n59#1:186\n60#1:187\n138#1:240\n62#1:188\n134#1:253\n63#1:189,4\n63#1:197,2\n63#1:203\n63#1:193\n134#1:265,13\n134#1:291,3\n63#1:194,3\n63#1:200,3\n67#1:204,6\n71#1:210,6\n76#1:216,6\n79#1:222,6\n100#1:228,6\n106#1:234,6\n140#1:241,6\n147#1:279,6\n176#1:285,6\n63#1:199\n134#1:247,5\n134#1:278\n134#1:295\n134#1:252\n134#1:254,11\n134#1:294\n67#1:296\n67#1:297,2\n71#1:299\n71#1:300,2\n128#1:302,5\n*E\n"})
/* loaded from: classes6.dex */
public final class c {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerKt$RewardedCountDownTimer$1$1", f = "RewardedCountDownTimer.kt", l = {80, 84, 96}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34879h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Animatable<Float, AnimationVector1D> f34880i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ float f34881j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ int f34882k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ MutableState<Boolean> f34883l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Animatable<Float, AnimationVector1D> animatable, float f10, int i10, MutableState<Boolean> mutableState, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34880i = animatable;
            this.f34881j = f10;
            this.f34882k = i10;
            this.f34883l = mutableState;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34880i, this.f34881j, this.f34882k, this.f34883l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34879h;
            try {
            } catch (CancellationException unused) {
                Unit unit = Unit.f60915a;
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            kotlin.f.b(obj);
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
                Animatable<Float, AnimationVector1D> animatable = this.f34880i;
                Float c10 = kotlin.coroutines.jvm.internal.a.c(this.f34881j);
                this.f34879h = 1;
                if (animatable.snapTo(c10, this) == f10) {
                    return f10;
                }
            }
            if (c.j(this.f34883l) && this.f34880i.getValue().floatValue() > 0.0f) {
                long b10 = ms.n.b(this.f34882k * 1000) & 4294967295L;
                Animatable<Float, AnimationVector1D> animatable2 = this.f34880i;
                Float c11 = kotlin.coroutines.jvm.internal.a.c(0.0f);
                TweenSpec tween$default = AnimationSpecKt.tween$default((int) b10, 0, EasingKt.getLinearEasing(), 2, null);
                this.f34879h = 2;
                if (Animatable.animateTo$default(animatable2, c11, tween$default, null, null, this, 12, null) == f10) {
                    return f10;
                }
                return Unit.f60915a;
            }
            Animatable<Float, AnimationVector1D> animatable3 = this.f34880i;
            this.f34879h = 3;
            if (animatable3.stop(this) == f10) {
                return f10;
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerKt$RewardedCountDownTimer$2$1", f = "RewardedCountDownTimer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34884h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ int f34885i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f34886j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, Function0<Unit> function0, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34885i = i10;
            this.f34886j = function0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34885i, this.f34886j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34884h == 0) {
                kotlin.f.b(obj);
                if (this.f34885i == 0) {
                    this.f34886j.invoke();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerKt$RewardedCountDownTimer$3$1$observer$1$1", f = "RewardedCountDownTimer.kt", l = {112}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0546c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34887h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Animatable<Float, AnimationVector1D> f34888i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0546c(Animatable<Float, AnimationVector1D> animatable, rs.c<? super C0546c> cVar) {
            super(2, cVar);
            this.f34888i = animatable;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0546c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0546c(this.f34888i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34887h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                Animatable<Float, AnimationVector1D> animatable = this.f34888i;
                this.f34887h = 1;
                if (animatable.stop(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 RewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerKt\n*L\n1#1,483:1\n129#2,2:484\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d implements DisposableEffectResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ LifecycleOwner f34889a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ LifecycleEventObserver f34890b;

        public d(LifecycleOwner lifecycleOwner, LifecycleEventObserver lifecycleEventObserver) {
            this.f34889a = lifecycleOwner;
            this.f34890b = lifecycleEventObserver;
        }

        @Override // androidx.compose.runtime.DisposableEffectResult
        public void dispose() {
            this.f34889a.getLifecycle().removeObserver(this.f34890b);
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f34891a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f34891a = iArr;
        }
    }

    public static final DisposableEffectResult a(LifecycleOwner lifecycleOwner, final g0 g0Var, final Animatable animatable, final MutableState mutableState, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.x
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                c.i(g0.this, animatable, mutableState, lifecycleOwner2, event);
            }
        };
        lifecycleOwner.getLifecycle().addObserver(lifecycleEventObserver);
        return new d(lifecycleOwner, lifecycleEventObserver);
    }

    public static final MutableState b() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(1.0f), null, 2, null);
        return mutableStateOf$default;
    }

    public static final Unit c(long j10, float f10, Animatable animatable, long j11, DrawScope Canvas) {
        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
        long Size = SizeKt.Size(Size.m1675getWidthimpl(Canvas.mo2336getSizeNHjbRc()), Size.m1672getHeightimpl(Canvas.mo2336getSizeNHjbRc()));
        float mo342toPx0680j_4 = Canvas.mo342toPx0680j_4(f10);
        StrokeCap.Companion companion = StrokeCap.Companion;
        DrawScope.m2316drawArcyD3GUKo$default(Canvas, j10, 360.0f, 360.0f, false, 0L, Size, 0.0f, new Stroke(mo342toPx0680j_4, 0.0f, companion.m2147getRoundKaPHkGw(), 0, null, 26, null), null, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_LIST, null);
        if (((Number) animatable.getValue()).floatValue() > 0.0f) {
            DrawScope.m2316drawArcyD3GUKo$default(Canvas, j11, 270.0f, kotlin.ranges.e.d(((Number) animatable.getValue()).floatValue(), 0.0f) * (-360.0f), false, 0L, SizeKt.Size(Size.m1675getWidthimpl(Canvas.mo2336getSizeNHjbRc()), Size.m1672getHeightimpl(Canvas.mo2336getSizeNHjbRc())), 0.0f, new Stroke(Canvas.mo342toPx0680j_4(f10), 0.0f, companion.m2147getRoundKaPHkGw(), 0, null, 26, null), null, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_LIST, null);
        }
        return Unit.f60915a;
    }

    public static final Unit d(long j10, long j11, Modifier modifier, float f10, float f11, Function0 function0, LifecycleOwner lifecycleOwner, g0 g0Var, int i10, int i11, int i12, int i13, Composer composer, int i14) {
        f(j10, j11, modifier, f10, f11, function0, lifecycleOwner, g0Var, i10, i11, composer, i12 | 1, i13);
        return Unit.f60915a;
    }

    public static final Unit e(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:213:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x010b  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void f(final long r40, final long r42, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r44, float r45, float r46, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r47, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r48, @org.jetbrains.annotations.Nullable gt.g0 r49, final int r50, final int r51, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r52, final int r53, final int r54) {
        /*
            Method dump skipped, instructions count: 1484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.c.f(long, long, androidx.compose.ui.Modifier, float, float, kotlin.jvm.functions.Function0, androidx.lifecycle.LifecycleOwner, gt.g0, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void g(MutableState<Float> mutableState, float f10) {
        mutableState.setValue(Float.valueOf(f10));
    }

    public static final void h(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    public static final void i(g0 g0Var, Animatable animatable, MutableState mutableState, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        int i10 = e.f34891a[event.ordinal()];
        if (i10 != 1) {
            if (i10 == 2 && ((Number) animatable.getValue()).floatValue() > 0.0f) {
                h(mutableState, true);
                return;
            }
            return;
        }
        h(mutableState, false);
        gt.g.d(g0Var, null, null, new C0546c(animatable, null), 3, null);
    }

    public static final boolean j(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    public static final float k(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    public static final Unit l(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }
}
