package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nVastVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastVideoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastVideoPlayerKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,169:1\n76#2:170\n76#2:171\n1057#3,6:172\n1057#3,3:181\n1060#3,3:186\n1057#3,6:190\n1057#3,6:196\n1057#3,6:202\n1057#3,6:208\n1057#3,6:214\n1057#3,6:220\n1057#3,6:226\n1057#3,6:232\n475#4,2:178\n477#4,2:184\n481#4:189\n25#5:180\n76#6:238\n76#6:239\n76#6:240\n76#6:241\n62#7,5:242\n*S KotlinDebug\n*F\n+ 1 VastVideoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastVideoPlayerKt\n*L\n49#1:170\n50#1:171\n52#1:172,6\n62#1:181,3\n62#1:186,3\n69#1:190,6\n72#1:196,6\n78#1:202,6\n109#1:208,6\n120#1:214,6\n134#1:220,6\n142#1:226,6\n152#1:232,6\n62#1:178,2\n62#1:184,2\n62#1:189\n62#1:180\n67#1:238\n68#1:239\n75#1:240\n76#1:241\n97#1:242,5\n*E\n"})
/* loaded from: classes6.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CoroutineContext f36043a = com.moloco.sdk.internal.scheduling.c.a().getMain();

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$1$1$jobs$1", f = "VastVideoPlayer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36044h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36045i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ MutableState<Boolean> f36046j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ MutableState<Boolean> f36047k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36048l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ State<Function1<Boolean, Unit>> f36049m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ State<Function1<Boolean, Unit>> f36050n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, State<? extends Function1<? super Boolean, Unit>> state, State<? extends Function1<? super Boolean, Unit>> state2, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f36046j = mutableState;
            this.f36047k = mutableState2;
            this.f36048l = hVar;
            this.f36049m = state;
            this.f36050n = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f36046j, this.f36047k, this.f36048l, this.f36049m, this.f36050n, cVar);
            aVar.f36045i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a aVar, rs.c<? super Unit> cVar) {
            return ((a) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36044h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a aVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a) this.f36045i;
                q.e(this.f36049m).invoke(kotlin.coroutines.jvm.internal.a.a(aVar.b()));
                this.f36046j.setValue(kotlin.coroutines.jvm.internal.a.a(aVar.b()));
                this.f36047k.setValue(kotlin.coroutines.jvm.internal.a.a(aVar.a()));
                q.i(this.f36050n).invoke(kotlin.coroutines.jvm.internal.a.a(aVar.c()));
                View u10 = this.f36048l.u();
                if (u10 != null) {
                    u10.setKeepScreenOn(aVar.a());
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$1$1$jobs$2", f = "VastVideoPlayer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36051h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36052i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ State<Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Unit>> f36053j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(State<? extends Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Unit>> state, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f36053j = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(this.f36053j, cVar);
            bVar.f36052i = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, rs.c<? super Unit> cVar) {
            return ((b) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36051h == 0) {
                kotlin.f.b(obj);
                q.l(this.f36053j).invoke((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i) this.f36052i);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$1$1$jobs$3", f = "VastVideoPlayer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36054h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36055i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ State<Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, Unit>> f36056j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(State<? extends Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, Unit>> state, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f36056j = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(this.f36056j, cVar);
            cVar2.f36055i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l lVar, rs.c<? super Unit> cVar) {
            return ((c) create(lVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36054h == 0) {
                kotlin.f.b(obj);
                q.n(this.f36056j).invoke((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l) this.f36055i);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$2$1", f = "VastVideoPlayer.kt", l = {112, 114}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f36057h;

        /* renamed from: i  reason: collision with root package name */
        public int f36058i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36059j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f36059j = hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f36059j, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r6.f36058i
                r2 = 0
                r3 = 4
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L29
                if (r1 == r5) goto L20
                if (r1 != r4) goto L18
                java.lang.Object r0 = r6.f36057h
                android.view.View r0 = (android.view.View) r0
                kotlin.f.b(r7)
                goto L57
            L18:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L20:
                java.lang.Object r1 = r6.f36057h
                android.view.View r1 = (android.view.View) r1
                kotlin.f.b(r7)
                r7 = r1
                goto L44
            L29:
                kotlin.f.b(r7)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h r7 = r6.f36059j
                android.view.View r7 = r7.u()
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h r1 = r6.f36059j
                if (r7 == 0) goto L39
                r7.setVisibility(r3)
            L39:
                r6.f36057h = r7
                r6.f36058i = r5
                java.lang.Object r1 = r1.a(r6)
                if (r1 != r0) goto L44
                return r0
            L44:
                if (r7 == 0) goto L49
                r7.setVisibility(r2)
            L49:
                r6.f36057h = r7
                r6.f36058i = r4
                r4 = 50
                java.lang.Object r1 = kotlinx.coroutines.DelayKt.b(r4, r6)
                if (r1 != r0) goto L56
                return r0
            L56:
                r0 = r7
            L57:
                if (r0 == 0) goto L5c
                r0.setVisibility(r3)
            L5c:
                if (r0 == 0) goto L61
                r0.setVisibility(r2)
            L61:
                kotlin.Unit r7 = kotlin.Unit.f60915a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.q.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$3$1", f = "VastVideoPlayer.kt", l = {121}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36060h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36061i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f36062j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long> f36063k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> f36064l;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$3$1$1", f = "VastVideoPlayer.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36065h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36066i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ String f36067j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long> f36068k;

            /* renamed from: l  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> f36069l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, String str, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long> pVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar2, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f36066i = hVar;
                this.f36067j = str;
                this.f36068k = pVar;
                this.f36069l = pVar2;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f36066i, this.f36067j, this.f36068k, this.f36069l, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f36065h == 0) {
                    kotlin.f.b(obj);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar = this.f36066i;
                    String str = this.f36067j;
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long> pVar = this.f36068k;
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar2 = this.f36069l;
                    hVar.a(str);
                    hVar.seekTo(pVar.a().longValue());
                    q.j(hVar, pVar2);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, String str, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Long> pVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar2, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f36061i = hVar;
            this.f36062j = str;
            this.f36063k = pVar;
            this.f36064l = pVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new e(this.f36061i, this.f36062j, this.f36063k, this.f36064l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36060h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext coroutineContext = q.f36043a;
                a aVar = new a(this.f36061i, this.f36062j, this.f36063k, this.f36064l, null);
                this.f36060h = 1;
                if (gt.e.g(coroutineContext, aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$4$1", f = "VastVideoPlayer.kt", l = {135}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36070h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36071i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> f36072j;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$4$1$1", f = "VastVideoPlayer.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36073h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36074i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> f36075j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f36074i = hVar;
                this.f36075j = pVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f36074i, this.f36075j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f36073h == 0) {
                    kotlin.f.b(obj);
                    q.j(this.f36074i, this.f36075j);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f36071i = hVar;
            this.f36072j = pVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f36071i, this.f36072j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36070h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext coroutineContext = q.f36043a;
                a aVar = new a(this.f36071i, this.f36072j, null);
                this.f36070h = 1;
                if (gt.e.g(coroutineContext, aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$5$1", f = "VastVideoPlayer.kt", l = {143}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36076h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36077i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ boolean f36078j;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastVideoPlayerKt$VastVideoPlayer$5$1$1", f = "VastVideoPlayer.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36079h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36080i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ boolean f36081j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, boolean z10, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f36080i = hVar;
                this.f36081j = z10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f36080i, this.f36081j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f36079h == 0) {
                    kotlin.f.b(obj);
                    this.f36080i.b(this.f36081j);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, boolean z10, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f36077i = hVar;
            this.f36078j = z10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new g(this.f36077i, this.f36078j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36076h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext coroutineContext = q.f36043a;
                a aVar = new a(this.f36077i, this.f36078j, null);
                this.f36076h = 1;
                if (gt.e.g(coroutineContext, aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 VastVideoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastVideoPlayerKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,483:1\n98#2:484\n99#2,5:487\n2642#3:485\n1#4:486\n*S KotlinDebug\n*F\n+ 1 VastVideoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastVideoPlayerKt\n*L\n98#1:485\n98#1:486\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class h implements DisposableEffectResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ List f36082a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h f36083b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ State f36084c;

        public h(List list, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, State state) {
            this.f36082a = list;
            this.f36083b = hVar;
            this.f36084c = state;
        }

        @Override // androidx.compose.runtime.DisposableEffectResult
        public void dispose() {
            for (kotlinx.coroutines.r rVar : this.f36082a) {
                r.a.b(rVar, null, 1, null);
            }
            this.f36083b.destroy();
            q.e(this.f36084c).invoke(Boolean.FALSE);
        }
    }

    public static final FrameLayout a(View view, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        FrameLayout frameLayout = new FrameLayout(it);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    public static final DisposableEffectResult b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, gt.g0 g0Var, MutableState mutableState, MutableState mutableState2, State state, State state2, State state3, State state4, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        return new h(CollectionsKt.q(kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(hVar.isPlaying(), new a(mutableState, mutableState2, hVar, state, state2, null)), g0Var), kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(hVar.t(), new b(state3, null)), g0Var), kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(kotlinx.coroutines.flow.c.w(hVar.f()), new c(state4, null)), g0Var)), hVar, state);
    }

    public static final Unit c(String str, boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p pVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p pVar2, boolean z11, Function1 function1, Function1 function12, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, Function1 function13, Function1 function14, Modifier modifier, int i10, int i11, int i12, Composer composer, int i13) {
        g(str, z10, pVar, pVar2, z11, function1, function12, a0Var, function13, function14, modifier, composer, i10 | 1, i11, i12);
        return Unit.f60915a;
    }

    public static final CoroutineContext d() {
        return f36043a;
    }

    public static final Function1<Boolean, Unit> e(State<? extends Function1<? super Boolean, Unit>> state) {
        return (Function1) state.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:186:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void g(@org.jetbrains.annotations.NotNull final java.lang.String r35, final boolean r36, @org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<java.lang.Boolean> r37, @org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<java.lang.Long> r38, final boolean r39, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r40, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r41, @org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 r42, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, kotlin.Unit> r43, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, kotlin.Unit> r44, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r45, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r46, final int r47, final int r48, final int r49) {
        /*
            Method dump skipped, instructions count: 1141
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.q.g(java.lang.String, boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p, boolean, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final MutableState h() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        return mutableStateOf$default;
    }

    public static final Function1<Boolean, Unit> i(State<? extends Function1<? super Boolean, Unit>> state) {
        return (Function1) state.getValue();
    }

    public static final void j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h hVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.p<Boolean> pVar) {
        if (pVar.a().booleanValue()) {
            hVar.play();
        } else {
            hVar.pause();
        }
    }

    public static final MutableState k() {
        MutableState mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        return mutableStateOf$default;
    }

    public static final Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Unit> l(State<? extends Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Unit>> state) {
        return (Function1) state.getValue();
    }

    public static final Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, Unit> n(State<? extends Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l, Unit>> state) {
        return (Function1) state.getValue();
    }
}
