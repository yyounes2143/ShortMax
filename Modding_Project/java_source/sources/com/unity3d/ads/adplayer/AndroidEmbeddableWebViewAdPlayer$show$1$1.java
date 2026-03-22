package com.unity3d.ads.adplayer;

import com.unity3d.ads.core.data.model.ScarEvent;
import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.services.banners.bridge.BannerBridge;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {75, 79}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidEmbeddableWebViewAdPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidEmbeddableWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidEmbeddableWebViewAdPlayer$show$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,132:1\n54#2:133\n57#2:137\n50#3:134\n55#3:136\n106#4:135\n*S KotlinDebug\n*F\n+ 1 AndroidEmbeddableWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidEmbeddableWebViewAdPlayer$show$1$1\n*L\n78#1:133\n78#1:137\n78#1:134\n78#1:136\n78#1:135\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidEmbeddableWebViewAdPlayer$show$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ f<GmaEventData> $scarEvents;
    final /* synthetic */ ShowOptions $showOptions;
    int label;
    final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$1", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {73}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<kt.c<? super ScarEvent>, c<? super Unit>, Object> {
        final /* synthetic */ ShowOptions $showOptions;
        int label;
        final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, ShowOptions showOptions, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = androidEmbeddableWebViewAdPlayer;
            this.$showOptions = showOptions;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.this$0, this.$showOptions, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                WebViewAdPlayer webViewAdPlayer = this.this$0.webViewAdPlayer;
                Map<String, Object> unityAdsShowOptions = ((AndroidShowOptions) this.$showOptions).getUnityAdsShowOptions();
                this.label = 1;
                if (webViewAdPlayer.requestShow(unityAdsShowOptions, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull kt.c<? super ScarEvent> cVar, @Nullable c<? super Unit> cVar2) {
            return ((AnonymousClass1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$2", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<ScarEvent, c<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(c<? super AnonymousClass2> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(cVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull ScarEvent scarEvent, @Nullable c<? super Boolean> cVar) {
            return ((AnonymousClass2) create(scarEvent, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                kotlin.f.b(obj);
                return kotlin.coroutines.jvm.internal.a.a(Intrinsics.areEqual((ScarEvent) this.L$0, ScarEvent.Show.INSTANCE));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
    @Metadata
    /* renamed from: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$4  reason: invalid class name */
    /* loaded from: classes7.dex */
    public /* synthetic */ class AnonymousClass4 implements kt.c, FunctionAdapter {
        final /* synthetic */ WebViewAdPlayer $tmp0;

        AnonymousClass4(WebViewAdPlayer webViewAdPlayer) {
            this.$tmp0 = webViewAdPlayer;
        }

        @Nullable
        public final Object emit(@NotNull BannerBridge.BannerEvent bannerEvent, @NotNull c<? super Unit> cVar) {
            Object sendScarBannerEvent = this.$tmp0.sendScarBannerEvent(bannerEvent, cVar);
            return sendScarBannerEvent == kotlin.coroutines.intrinsics.a.f() ? sendScarBannerEvent : Unit.f60915a;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof kt.c) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(2, this.$tmp0, WebViewAdPlayer.class, "sendScarBannerEvent", "sendScarBannerEvent(Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // kt.c
        public /* bridge */ /* synthetic */ Object emit(Object obj, c cVar) {
            return emit((BannerBridge.BannerEvent) obj, (c<? super Unit>) cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidEmbeddableWebViewAdPlayer$show$1$1(AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, f<GmaEventData> fVar, ShowOptions showOptions, c<? super AndroidEmbeddableWebViewAdPlayer$show$1$1> cVar) {
        super(2, cVar);
        this.this$0 = androidEmbeddableWebViewAdPlayer;
        this.$scarEvents = fVar;
        this.$showOptions = showOptions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidEmbeddableWebViewAdPlayer$show$1$1(this.this$0, this.$scarEvents, this.$showOptions, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidEmbeddableWebViewAdPlayer$show$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            kt.b P = kotlinx.coroutines.flow.c.P(this.this$0.getOnScarEvent(), new AnonymousClass1(this.this$0, this.$showOptions, null));
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
            this.label = 1;
            if (kotlinx.coroutines.flow.c.x(P, anonymousClass2, this) == f10) {
                return f10;
            }
        }
        final f<GmaEventData> fVar = this.$scarEvents;
        kt.b<BannerBridge.BannerEvent> bVar = new kt.b<BannerBridge.BannerEvent>() { // from class: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidEmbeddableWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidEmbeddableWebViewAdPlayer$show$1$1\n*L\n1#1,222:1\n55#2:223\n56#2:225\n78#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {225}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar) {
                    this.$this_unsafeFlow = cVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, @org.jetbrains.annotations.NotNull rs.c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1 r0 = (com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1 r0 = new com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r6)
                        goto L47
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.f.b(r6)
                        kt.c r6 = r4.$this_unsafeFlow
                        com.unity3d.ads.core.domain.scar.GmaEventData r5 = (com.unity3d.ads.core.domain.scar.GmaEventData) r5
                        com.unity3d.services.banners.bridge.BannerBridge$BannerEvent r5 = r5.getBannerEvent()
                        if (r5 == 0) goto L47
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$1$1$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super BannerBridge.BannerEvent> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.this$0.webViewAdPlayer);
        this.label = 2;
        if (bVar.collect(anonymousClass4, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
