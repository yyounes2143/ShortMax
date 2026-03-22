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
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntSize;
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
@SourceDebugExtension({"SMAP\nRewardedCountDownTimerCustom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedCountDownTimerCustom.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerCustomKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 8 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 9 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 10 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 11 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 12 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,199:1\n155#2:200\n155#2:201\n155#2:260\n155#2:296\n76#3:202\n76#3:264\n76#3:315\n473#4,4:203\n477#4,2:211\n481#4:217\n25#5:207\n460#5,13:276\n460#5,13:327\n473#5,3:347\n473#5,3:352\n1057#6,3:208\n1060#6,3:214\n1057#6,6:218\n1057#6,6:224\n1057#6,6:230\n1057#6,6:236\n1057#6,6:242\n1057#6,6:248\n1057#6,6:254\n1057#6,6:290\n1057#6,6:297\n1057#6,6:303\n1057#6,6:341\n473#7:213\n79#8,2:261\n81#8:289\n85#8:356\n75#9:263\n76#9,11:265\n75#9:314\n76#9,11:316\n89#9:350\n89#9:355\n68#10,5:309\n73#10:340\n77#10:351\n76#11:357\n102#11,2:358\n76#11:360\n102#11,2:361\n76#11:363\n102#11,2:364\n62#12,5:366\n*S KotlinDebug\n*F\n+ 1 RewardedCountDownTimerCustom.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerCustomKt\n*L\n64#1:200\n65#1:201\n141#1:260\n164#1:296\n68#1:202\n139#1:264\n160#1:315\n69#1:203,4\n69#1:211,2\n69#1:217\n69#1:207\n139#1:276,13\n160#1:327,13\n160#1:347,3\n139#1:352,3\n69#1:208,3\n69#1:214,3\n74#1:218,6\n76#1:224,6\n80#1:230,6\n85#1:236,6\n88#1:242,6\n106#1:248,6\n112#1:254,6\n151#1:290,6\n165#1:297,6\n169#1:303,6\n176#1:341,6\n69#1:213\n139#1:261,2\n139#1:289\n139#1:356\n139#1:263\n139#1:265,11\n160#1:314\n160#1:316,11\n160#1:350\n139#1:355\n160#1:309,5\n160#1:340\n160#1:351\n74#1:357\n74#1:358,2\n76#1:360\n76#1:361,2\n80#1:363\n80#1:364,2\n134#1:366,5\n*E\n"})
/* loaded from: classes6.dex */
public final class b {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerCustomKt$RewardedCountDownTimerCustom$1$1", f = "RewardedCountDownTimerCustom.kt", l = {92}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34867h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Animatable<Float, AnimationVector1D> f34868i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ int f34869j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ MutableState<Boolean> f34870k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Animatable<Float, AnimationVector1D> animatable, int i10, MutableState<Boolean> mutableState, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34868i = animatable;
            this.f34869j = i10;
            this.f34870k = mutableState;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34868i, this.f34869j, this.f34870k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34867h;
            try {
            } catch (CancellationException unused) {
                Unit unit = Unit.f60915a;
            }
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                if (b.n(this.f34870k) && this.f34868i.getValue().floatValue() > 0.0f) {
                    long b10 = ms.n.b(this.f34869j * 1000) & 4294967295L;
                    Animatable<Float, AnimationVector1D> animatable = this.f34868i;
                    Float c10 = kotlin.coroutines.jvm.internal.a.c(0.0f);
                    TweenSpec tween$default = AnimationSpecKt.tween$default((int) b10, 0, EasingKt.getLinearEasing(), 2, null);
                    this.f34867h = 1;
                    if (Animatable.animateTo$default(animatable, c10, tween$default, null, null, this, 12, null) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerCustomKt$RewardedCountDownTimerCustom$2$1", f = "RewardedCountDownTimerCustom.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0545b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34871h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ int f34872i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f34873j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0545b(int i10, Function0<Unit> function0, rs.c<? super C0545b> cVar) {
            super(2, cVar);
            this.f34872i = i10;
            this.f34873j = function0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0545b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0545b(this.f34872i, this.f34873j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34871h == 0) {
                kotlin.f.b(obj);
                if (this.f34872i == 0) {
                    this.f34873j.invoke();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerCustomKt$RewardedCountDownTimerCustom$3$1$observer$1$1", f = "RewardedCountDownTimerCustom.kt", l = {118}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34874h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Animatable<Float, AnimationVector1D> f34875i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Animatable<Float, AnimationVector1D> animatable, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f34875i = animatable;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f34875i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34874h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                Animatable<Float, AnimationVector1D> animatable = this.f34875i;
                this.f34874h = 1;
                if (animatable.stop(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 RewardedCountDownTimerCustom.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerCustomKt\n*L\n1#1,483:1\n135#2,2:484\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d implements DisposableEffectResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ LifecycleOwner f34876a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ LifecycleEventObserver f34877b;

        public d(LifecycleOwner lifecycleOwner, LifecycleEventObserver lifecycleEventObserver) {
            this.f34876a = lifecycleOwner;
            this.f34877b = lifecycleEventObserver;
        }

        @Override // androidx.compose.runtime.DisposableEffectResult
        public void dispose() {
            this.f34876a.getLifecycle().removeObserver(this.f34877b);
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f34878a;

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
            f34878a = iArr;
        }
    }

    public static final long a(MutableState<IntSize> mutableState) {
        return mutableState.getValue().m4213unboximpl();
    }

    public static final DisposableEffectResult b(LifecycleOwner lifecycleOwner, final g0 g0Var, final Animatable animatable, final MutableState mutableState, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.p
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                b.l(g0.this, animatable, mutableState, lifecycleOwner2, event);
            }
        };
        lifecycleOwner.getLifecycle().addObserver(lifecycleEventObserver);
        return new d(lifecycleOwner, lifecycleEventObserver);
    }

    public static final MutableState c() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(1.0f), null, 2, null);
        return mutableStateOf$default;
    }

    public static final Unit d(long j10, float f10, Animatable animatable, long j11, MutableState mutableState, DrawScope Canvas) {
        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
        long Size = SizeKt.Size(IntSize.m4209getWidthimpl(a(mutableState)), IntSize.m4208getHeightimpl(a(mutableState)));
        float mo342toPx0680j_4 = Canvas.mo342toPx0680j_4(f10);
        StrokeCap.Companion companion = StrokeCap.Companion;
        DrawScope.m2316drawArcyD3GUKo$default(Canvas, j10, 360.0f, 360.0f, false, 0L, Size, 0.0f, new Stroke(mo342toPx0680j_4, 0.0f, companion.m2147getRoundKaPHkGw(), 0, null, 26, null), null, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_LIST, null);
        if (((Number) animatable.getValue()).floatValue() > 0.0f) {
            DrawScope.m2316drawArcyD3GUKo$default(Canvas, j11, 270.0f, kotlin.ranges.e.d(((Number) animatable.getValue()).floatValue(), 0.0f) * (-360.0f), false, 0L, SizeKt.Size(IntSize.m4209getWidthimpl(a(mutableState)), IntSize.m4208getHeightimpl(a(mutableState))), 0.0f, new Stroke(Canvas.mo342toPx0680j_4(f10), 0.0f, companion.m2147getRoundKaPHkGw(), 0, null, 26, null), null, 0, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_LIST, null);
        }
        return Unit.f60915a;
    }

    public static final Unit e(long j10, long j11, Modifier modifier, float f10, float f11, Function0 function0, String str, LifecycleOwner lifecycleOwner, g0 g0Var, int i10, int i11, int i12, int i13, int i14, Composer composer, int i15) {
        h(j10, j11, modifier, f10, f11, function0, str, lifecycleOwner, g0Var, i10, i11, composer, i12 | 1, i13, i14);
        return Unit.f60915a;
    }

    public static final Unit f(MutableState mutableState, IntSize intSize) {
        j(mutableState, intSize.m4213unboximpl());
        return Unit.f60915a;
    }

    public static final Unit g(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0627  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:239:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0129  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void h(final long r43, final long r45, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r47, float r48, float r49, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r50, @org.jetbrains.annotations.NotNull final java.lang.String r51, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r52, @org.jetbrains.annotations.Nullable gt.g0 r53, final int r54, final int r55, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r56, final int r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 1712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.b.h(long, long, androidx.compose.ui.Modifier, float, float, kotlin.jvm.functions.Function0, java.lang.String, androidx.lifecycle.LifecycleOwner, gt.g0, int, int, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final void i(MutableState<Float> mutableState, float f10) {
        mutableState.setValue(Float.valueOf(f10));
    }

    public static final void j(MutableState<IntSize> mutableState, long j10) {
        mutableState.setValue(IntSize.m4201boximpl(j10));
    }

    public static final void k(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    public static final void l(g0 g0Var, Animatable animatable, MutableState mutableState, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        int i10 = e.f34878a[event.ordinal()];
        if (i10 != 1) {
            if (i10 == 2 && ((Number) animatable.getValue()).floatValue() > 0.0f) {
                k(mutableState, true);
                return;
            }
            return;
        }
        k(mutableState, false);
        gt.g.d(g0Var, null, null, new c(animatable, null), 3, null);
    }

    public static final Unit m(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }

    public static final boolean n(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    public static final float o(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }
}
