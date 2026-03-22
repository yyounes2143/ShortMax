package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nVastIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastIconKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,45:1\n1057#2,6:46\n155#3:52\n*S KotlinDebug\n*F\n+ 1 VastIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastIconKt\n*L\n20#1:46,6\n44#1:52\n*E\n"})
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final float f35926a = Dp.m4049constructorimpl(48);

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastIconKt$VastIcon$1$1", f = "VastIcon.kt", l = {21}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35927h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f35928i;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastIconKt$VastIcon$1$1$1", f = "VastIcon.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0575a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f35929h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f35930i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0575a(Function0<Unit> function0, rs.c<? super C0575a> cVar) {
                super(2, cVar);
                this.f35930i = function0;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0575a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0575a(this.f35930i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f35929h == 0) {
                    kotlin.f.b(obj);
                    this.f35930i.invoke();
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Function0<Unit> function0, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f35928i = function0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f35928i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35927h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext main = com.moloco.sdk.internal.scheduling.c.a().getMain();
                C0575a c0575a = new C0575a(this.f35928i, null);
                this.f35927h = 1;
                if (gt.e.g(main, c0575a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public static final Unit a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j jVar, Function0 function0, Function0 function02, Modifier modifier, int i10, int i11, Composer composer, int i12) {
        b(jVar, function0, function02, modifier, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(@org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j r21, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r22, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r23, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r24, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.l.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }
}
