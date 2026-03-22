package com.unity3d.ads.adplayer;

import android.util.Base64;
import androidx.annotation.CallSuper;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.adplayer.model.OnActivityDestroyedEvent;
import com.unity3d.ads.adplayer.model.OnAllowedPiiChangeEvent;
import com.unity3d.ads.adplayer.model.OnBroadcastEvent;
import com.unity3d.ads.adplayer.model.OnFocusChangeEvent;
import com.unity3d.ads.adplayer.model.OnGmaEvent;
import com.unity3d.ads.adplayer.model.OnMuteChangeEvent;
import com.unity3d.ads.adplayer.model.OnOfferwallEvent;
import com.unity3d.ads.adplayer.model.OnPrivacyFsmChangeEvent;
import com.unity3d.ads.adplayer.model.OnScarBannerEvent;
import com.unity3d.ads.adplayer.model.OnStorageEvent;
import com.unity3d.ads.adplayer.model.OnUserConsentChangeEvent;
import com.unity3d.ads.adplayer.model.OnVisibilityChangeEvent;
import com.unity3d.ads.adplayer.model.OnVolumeChangeEvent;
import com.unity3d.ads.adplayer.model.WebViewEvent;
import com.unity3d.ads.core.data.model.OfferwallShowEvent;
import com.unity3d.ads.core.data.model.ScarEvent;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.services.ads.offerwall.OfferwallEvent;
import com.unity3d.services.banners.bridge.BannerBridge;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageEventInfo;
import gt.c0;
import gt.d0;
import gt.f0;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.i;
import kt.d;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* compiled from: WebViewAdPlayer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebViewAdPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,277:1\n49#2,4:278\n20#3:282\n22#3:286\n47#3:287\n49#3:291\n20#3:292\n22#3:296\n47#3:297\n49#3:301\n20#3:302\n22#3:306\n47#3:307\n49#3:311\n20#3:312\n22#3:316\n47#3:317\n49#3:321\n20#3:322\n22#3:326\n47#3:327\n49#3:331\n50#4:283\n55#4:285\n50#4:288\n55#4:290\n50#4:293\n55#4:295\n50#4:298\n55#4:300\n50#4:303\n55#4:305\n50#4:308\n55#4:310\n50#4:313\n55#4:315\n50#4:318\n55#4:320\n50#4:323\n55#4:325\n50#4:328\n55#4:330\n106#5:284\n106#5:289\n106#5:294\n106#5:299\n106#5:304\n106#5:309\n106#5:314\n106#5:319\n106#5:324\n106#5:329\n515#6:332\n500#6,6:333\n*S KotlinDebug\n*F\n+ 1 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n75#1:278,4\n82#1:282\n82#1:286\n83#1:287\n83#1:291\n92#1:292\n92#1:296\n93#1:297\n93#1:301\n102#1:302\n102#1:306\n103#1:307\n103#1:311\n135#1:312\n135#1:316\n136#1:317\n136#1:321\n152#1:322\n152#1:326\n153#1:327\n153#1:331\n82#1:283\n82#1:285\n83#1:288\n83#1:290\n92#1:293\n92#1:295\n93#1:298\n93#1:300\n102#1:303\n102#1:305\n103#1:308\n103#1:310\n135#1:313\n135#1:315\n136#1:318\n136#1:320\n152#1:323\n152#1:325\n153#1:328\n153#1:330\n82#1:284\n83#1:289\n92#1:294\n93#1:299\n102#1:304\n103#1:309\n135#1:314\n136#1:319\n152#1:324\n153#1:329\n184#1:332\n184#1:333,6\n*E\n"})
/* loaded from: classes7.dex */
public final class WebViewAdPlayer implements AdPlayer {
    @NotNull
    private final WebViewBridge bridge;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final c0 dispatcher;
    @NotNull
    private final e<Boolean> isCompletedManually;
    @NotNull
    private final kt.b<String> onBroadcastEvents;
    @NotNull
    private final kt.b<LoadEvent> onLoadEvent;
    @NotNull
    private final kt.b<OfferwallShowEvent.Show> onOfferwallEvent;
    @NotNull
    private final kt.b<ScarEvent.Show> onScarEvent;
    @NotNull
    private final kt.b<ShowEvent> onShowEvent;
    @NotNull
    private final g0 scope;
    @NotNull
    private final d0 scopeCancellationHandler;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final Function1<StorageEventInfo, Unit> storageEventCallback;
    @NotNull
    private final WebViewContainer webViewContainer;

    /* compiled from: WebViewAdPlayer.kt */
    @Metadata
    /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function2<String, c<? super Unit>, Object> {
        AnonymousClass1(Object obj) {
            super(2, obj, d.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull String str, @NotNull c<? super Unit> cVar) {
            return ((d) this.receiver).emit(str, cVar);
        }
    }

    /* compiled from: WebViewAdPlayer.kt */
    @Metadata
    /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<String, c<? super Unit>, Object> {
        AnonymousClass2(Object obj) {
            super(2, obj, WebViewAdPlayer.class, "onBroadcastEvent", "onBroadcastEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull String str, @NotNull c<? super Unit> cVar) {
            return ((WebViewAdPlayer) this.receiver).onBroadcastEvent(str, cVar);
        }
    }

    public WebViewAdPlayer(@NotNull WebViewBridge bridge, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull SessionRepository sessionRepository, @NotNull c0 dispatcher, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull WebViewContainer webViewContainer, @NotNull g0 adPlayerScope) {
        Intrinsics.checkNotNullParameter(bridge, "bridge");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        this.bridge = bridge;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.dispatcher = dispatcher;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.webViewContainer = webViewContainer;
        e<Boolean> a10 = o.a(Boolean.FALSE);
        this.isCompletedManually = a10;
        Function1<StorageEventInfo, Unit> function1 = new Function1<StorageEventInfo, Unit>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$storageEventCallback$1

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: WebViewAdPlayer.kt */
            @Metadata
            @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$storageEventCallback$1$1", f = "WebViewAdPlayer.kt", l = {67}, m = "invokeSuspend")
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$storageEventCallback$1$1  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ StorageEventInfo $it;
                int label;
                final /* synthetic */ WebViewAdPlayer this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(WebViewAdPlayer webViewAdPlayer, StorageEventInfo storageEventInfo, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.this$0 = webViewAdPlayer;
                    this.$it = storageEventInfo;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass1(this.this$0, this.$it, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    WebViewBridge webViewBridge;
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        webViewBridge = this.this$0.bridge;
                        OnStorageEvent onStorageEvent = new OnStorageEvent(this.$it.getEventType(), this.$it.getStorageType(), this.$it.getValue());
                        this.label = 1;
                        if (webViewBridge.sendEvent(onStorageEvent, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(StorageEventInfo storageEventInfo) {
                invoke2(storageEventInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull StorageEventInfo it) {
                Intrinsics.checkNotNullParameter(it, "it");
                g.d(WebViewAdPlayer.this.getScope(), null, null, new AnonymousClass1(WebViewAdPlayer.this, it, null), 3, null);
            }
        };
        this.storageEventCallback = function1;
        WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1 webViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1 = new WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1(d0.D8, this);
        this.scopeCancellationHandler = webViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1;
        this.scope = i.i(i.i(i.i(adPlayerScope, dispatcher), new f0("WebViewAdPlayer")), webViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1);
        final kt.f<Invocation> onInvocation = bridge.getOnInvocation();
        final kt.b<Invocation> bVar = new kt.b<Invocation>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n82#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1$2", f = "WebViewAdPlayer.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r7)
                        goto L52
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.f.b(r7)
                        kt.c r7 = r5.$this_unsafeFlow
                        r2 = r6
                        com.unity3d.ads.adplayer.Invocation r2 = (com.unity3d.ads.adplayer.Invocation) r2
                        java.lang.String r4 = "com.unity3d.services.ads.api.AdViewer.showScarAd"
                        java.lang.String[] r4 = new java.lang.String[]{r4}
                        java.lang.String r2 = r2.getLocation()
                        boolean r2 = kotlin.collections.n.f0(r4, r2)
                        if (r2 == 0) goto L52
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L52
                        return r1
                    L52:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Invocation> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.onScarEvent = new kt.b<ScarEvent.Show>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n48#2:223\n84#3,4:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1$2", f = "WebViewAdPlayer.kt", l = {224, 223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull rs.c r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        r5 = 0
                        if (r2 == 0) goto L41
                        if (r2 == r4) goto L35
                        if (r2 != r3) goto L2d
                        kotlin.f.b(r8)
                        goto L70
                    L2d:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L35:
                        java.lang.Object r7 = r0.L$1
                        com.unity3d.ads.adplayer.Invocation r7 = (com.unity3d.ads.adplayer.Invocation) r7
                        java.lang.Object r2 = r0.L$0
                        kt.c r2 = (kt.c) r2
                        kotlin.f.b(r8)
                        goto L55
                    L41:
                        kotlin.f.b(r8)
                        kt.c r2 = r6.$this_unsafeFlow
                        com.unity3d.ads.adplayer.Invocation r7 = (com.unity3d.ads.adplayer.Invocation) r7
                        r0.L$0 = r2
                        r0.L$1 = r7
                        r0.label = r4
                        java.lang.Object r8 = com.unity3d.ads.adplayer.Invocation.handle$default(r7, r5, r0, r4, r5)
                        if (r8 != r1) goto L55
                        return r1
                    L55:
                        java.lang.String r8 = r7.getLocation()
                        java.lang.String r4 = "com.unity3d.services.ads.api.AdViewer.showScarAd"
                        boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r4)
                        if (r8 == 0) goto L73
                        com.unity3d.ads.core.data.model.ScarEvent$Show r7 = com.unity3d.ads.core.data.model.ScarEvent.Show.INSTANCE
                        r0.L$0 = r5
                        r0.L$1 = r5
                        r0.label = r3
                        java.lang.Object r7 = r2.emit(r7, r0)
                        if (r7 != r1) goto L70
                        return r1
                    L70:
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    L73:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r0.<init>()
                        java.lang.String r1 = "Unexpected location: "
                        r0.append(r1)
                        java.lang.String r7 = r7.getLocation()
                        r0.append(r7)
                        java.lang.String r7 = r0.toString()
                        java.lang.String r7 = r7.toString()
                        r8.<init>(r7)
                        throw r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super ScarEvent.Show> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        final kt.f<Invocation> onInvocation2 = bridge.getOnInvocation();
        final kt.b<Invocation> bVar2 = new kt.b<Invocation>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n92#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2$2", f = "WebViewAdPlayer.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r7)
                        goto L52
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.f.b(r7)
                        kt.c r7 = r5.$this_unsafeFlow
                        r2 = r6
                        com.unity3d.ads.adplayer.Invocation r2 = (com.unity3d.ads.adplayer.Invocation) r2
                        java.lang.String r4 = "com.unity3d.services.ads.api.AdViewer.showOfferwallAd"
                        java.lang.String[] r4 = new java.lang.String[]{r4}
                        java.lang.String r2 = r2.getLocation()
                        boolean r2 = kotlin.collections.n.f0(r4, r2)
                        if (r2 == 0) goto L52
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L52
                        return r1
                    L52:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$2.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Invocation> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.onOfferwallEvent = new kt.b<OfferwallShowEvent.Show>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n48#2:223\n94#3,4:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2$2", f = "WebViewAdPlayer.kt", l = {224, 223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull rs.c r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        r5 = 0
                        if (r2 == 0) goto L41
                        if (r2 == r4) goto L35
                        if (r2 != r3) goto L2d
                        kotlin.f.b(r8)
                        goto L70
                    L2d:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L35:
                        java.lang.Object r7 = r0.L$1
                        com.unity3d.ads.adplayer.Invocation r7 = (com.unity3d.ads.adplayer.Invocation) r7
                        java.lang.Object r2 = r0.L$0
                        kt.c r2 = (kt.c) r2
                        kotlin.f.b(r8)
                        goto L55
                    L41:
                        kotlin.f.b(r8)
                        kt.c r2 = r6.$this_unsafeFlow
                        com.unity3d.ads.adplayer.Invocation r7 = (com.unity3d.ads.adplayer.Invocation) r7
                        r0.L$0 = r2
                        r0.L$1 = r7
                        r0.label = r4
                        java.lang.Object r8 = com.unity3d.ads.adplayer.Invocation.handle$default(r7, r5, r0, r4, r5)
                        if (r8 != r1) goto L55
                        return r1
                    L55:
                        java.lang.String r8 = r7.getLocation()
                        java.lang.String r4 = "com.unity3d.services.ads.api.AdViewer.showOfferwallAd"
                        boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r4)
                        if (r8 == 0) goto L73
                        com.unity3d.ads.core.data.model.OfferwallShowEvent$Show r7 = com.unity3d.ads.core.data.model.OfferwallShowEvent.Show.INSTANCE
                        r0.L$0 = r5
                        r0.L$1 = r5
                        r0.label = r3
                        java.lang.Object r7 = r2.emit(r7, r0)
                        if (r7 != r1) goto L70
                        return r1
                    L70:
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    L73:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r0.<init>()
                        java.lang.String r1 = "Unexpected location: "
                        r0.append(r1)
                        java.lang.String r7 = r7.getLocation()
                        r0.append(r7)
                        java.lang.String r7 = r0.toString()
                        java.lang.String r7 = r7.toString()
                        r8.<init>(r7)
                        throw r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super OfferwallShowEvent.Show> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        final kt.f<Invocation> onInvocation3 = bridge.getOnInvocation();
        final kt.b<Invocation> bVar3 = new kt.b<Invocation>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n102#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3$2", f = "WebViewAdPlayer.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r7)
                        goto L50
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.f.b(r7)
                        kt.c r7 = r5.$this_unsafeFlow
                        r2 = r6
                        com.unity3d.ads.adplayer.Invocation r2 = (com.unity3d.ads.adplayer.Invocation) r2
                        java.lang.String[] r4 = com.unity3d.ads.adplayer.WebViewAdPlayerKt.access$getSHOW_EVENTS$p()
                        java.lang.String r2 = r2.getLocation()
                        boolean r2 = kotlin.collections.n.f0(r4, r2)
                        if (r2 == 0) goto L50
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L50
                        return r1
                    L50:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$3.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Invocation> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.onShowEvent = kotlinx.coroutines.flow.c.G(new kt.b<ShowEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$3

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n48#2:223\n104#3,22:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$3$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$3$2", f = "WebViewAdPlayer.kt", l = {244, 223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$3$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
                /* JADX WARN: Removed duplicated region for block: B:51:0x00fd A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:52:0x00fe  */
                /* JADX WARN: Removed duplicated region for block: B:55:0x010b A[RETURN] */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r13, @org.jetbrains.annotations.NotNull rs.c r14) {
                    /*
                        Method dump skipped, instructions count: 324
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super ShowEvent> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, a10, new WebViewAdPlayer$onShowEvent$3(null));
        final kt.f<Invocation> onInvocation4 = bridge.getOnInvocation();
        final kt.b<Invocation> bVar4 = new kt.b<Invocation>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n135#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4$2", f = "WebViewAdPlayer.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r7)
                        goto L50
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.f.b(r7)
                        kt.c r7 = r5.$this_unsafeFlow
                        r2 = r6
                        com.unity3d.ads.adplayer.Invocation r2 = (com.unity3d.ads.adplayer.Invocation) r2
                        java.lang.String[] r4 = com.unity3d.ads.adplayer.WebViewAdPlayerKt.access$getLOAD_EVENTS$p()
                        java.lang.String r2 = r2.getLocation()
                        boolean r2 = kotlin.collections.n.f0(r4, r2)
                        if (r2 == 0) goto L50
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L50
                        return r1
                    L50:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$4.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Invocation> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.onLoadEvent = kotlinx.coroutines.flow.c.U(kotlinx.coroutines.flow.c.R(new kt.b<LoadEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n48#2:223\n137#3,9:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4$2", f = "WebViewAdPlayer.kt", l = {224, 223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
                /* JADX WARN: Removed duplicated region for block: B:25:0x0095 A[RETURN] */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, @org.jetbrains.annotations.NotNull rs.c r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        r5 = 0
                        if (r2 == 0) goto L41
                        if (r2 == r4) goto L35
                        if (r2 != r3) goto L2d
                        kotlin.f.b(r9)
                        goto L96
                    L2d:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L35:
                        java.lang.Object r8 = r0.L$1
                        com.unity3d.ads.adplayer.Invocation r8 = (com.unity3d.ads.adplayer.Invocation) r8
                        java.lang.Object r2 = r0.L$0
                        kt.c r2 = (kt.c) r2
                        kotlin.f.b(r9)
                        goto L55
                    L41:
                        kotlin.f.b(r9)
                        kt.c r2 = r7.$this_unsafeFlow
                        com.unity3d.ads.adplayer.Invocation r8 = (com.unity3d.ads.adplayer.Invocation) r8
                        r0.L$0 = r2
                        r0.L$1 = r8
                        r0.label = r4
                        java.lang.Object r9 = com.unity3d.ads.adplayer.Invocation.handle$default(r8, r5, r0, r4, r5)
                        if (r9 != r1) goto L55
                        return r1
                    L55:
                        java.lang.String r9 = r8.getLocation()
                        java.lang.String r4 = "com.unity3d.services.ads.api.AdViewer.loadError"
                        boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r4)
                        if (r9 == 0) goto L87
                        java.lang.Object[] r8 = r8.getParameters()
                        java.lang.Object r8 = kotlin.collections.n.k0(r8)
                        java.lang.String r9 = "null cannot be cast to non-null type org.json.JSONObject"
                        kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r9)
                        org.json.JSONObject r8 = (org.json.JSONObject) r8
                        java.lang.String r9 = "code"
                        int r9 = r8.optInt(r9)
                        java.lang.String r4 = "message"
                        java.lang.String r8 = r8.optString(r4)
                        com.unity3d.ads.adplayer.model.LoadEvent$Error r4 = new com.unity3d.ads.adplayer.model.LoadEvent$Error
                        java.lang.String r6 = "errorMessage"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r6)
                        r4.<init>(r8, r9)
                        goto L89
                    L87:
                        com.unity3d.ads.adplayer.model.LoadEvent$Completed r4 = com.unity3d.ads.adplayer.model.LoadEvent.Completed.INSTANCE
                    L89:
                        r0.L$0 = r5
                        r0.L$1 = r5
                        r0.label = r3
                        java.lang.Object r8 = r2.emit(r4, r0)
                        if (r8 != r1) goto L96
                        return r1
                    L96:
                        kotlin.Unit r8 = kotlin.Unit.f60915a
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$4.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super LoadEvent> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, getScope(), m.f61804a.c(), 1), 1);
        final kt.f<Invocation> onInvocation5 = bridge.getOnInvocation();
        final kt.b<Invocation> bVar5 = new kt.b<Invocation>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n152#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5$2", f = "WebViewAdPlayer.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r7)
                        goto L4e
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.f.b(r7)
                        kt.c r7 = r5.$this_unsafeFlow
                        r2 = r6
                        com.unity3d.ads.adplayer.Invocation r2 = (com.unity3d.ads.adplayer.Invocation) r2
                        java.lang.String r2 = r2.getLocation()
                        java.lang.String r4 = "com.unity3d.services.ads.api.AdViewer.broadcastEvent"
                        boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
                        if (r2 == 0) goto L4e
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L4e
                        return r1
                    L4e:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$filter$5.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Invocation> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        kt.b<String> bVar6 = new kt.b<String>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,222:1\n48#2:223\n154#3,2:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5$2", f = "WebViewAdPlayer.kt", l = {224, 223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x006d A[RETURN] */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull rs.c r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5$2$1 r0 = (com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5$2$1 r0 = new com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        r5 = 0
                        if (r2 == 0) goto L41
                        if (r2 == r4) goto L35
                        if (r2 != r3) goto L2d
                        kotlin.f.b(r8)
                        goto L6e
                    L2d:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L35:
                        java.lang.Object r7 = r0.L$1
                        com.unity3d.ads.adplayer.Invocation r7 = (com.unity3d.ads.adplayer.Invocation) r7
                        java.lang.Object r2 = r0.L$0
                        kt.c r2 = (kt.c) r2
                        kotlin.f.b(r8)
                        goto L55
                    L41:
                        kotlin.f.b(r8)
                        kt.c r2 = r6.$this_unsafeFlow
                        com.unity3d.ads.adplayer.Invocation r7 = (com.unity3d.ads.adplayer.Invocation) r7
                        r0.L$0 = r2
                        r0.L$1 = r7
                        r0.label = r4
                        java.lang.Object r8 = com.unity3d.ads.adplayer.Invocation.handle$default(r7, r5, r0, r4, r5)
                        if (r8 != r1) goto L55
                        return r1
                    L55:
                        java.lang.Object[] r7 = r7.getParameters()
                        java.lang.Object r7 = kotlin.collections.n.k0(r7)
                        java.lang.String r7 = r7.toString()
                        r0.L$0 = r5
                        r0.L$1 = r5
                        r0.label = r3
                        java.lang.Object r7 = r2.emit(r7, r0)
                        if (r7 != r1) goto L6e
                        return r1
                    L6e:
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer$special$$inlined$map$5.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super String> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
        this.onBroadcastEvents = bVar6;
        Storage.Companion.addStorageEventCallback(function1);
        AdPlayer.Companion companion = AdPlayer.Companion;
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(bVar6, new AnonymousClass1(companion.getBroadcastEventChannel())), getScope());
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(companion.getBroadcastEventChannel(), new AnonymousClass2(this)), getScope());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object sendEvent(kotlin.jvm.functions.Function0<? extends com.unity3d.ads.adplayer.model.WebViewEvent> r18, rs.c<? super kotlin.Unit> r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r19
            boolean r2 = r1 instanceof com.unity3d.ads.adplayer.WebViewAdPlayer$sendEvent$1
            if (r2 == 0) goto L17
            r2 = r1
            com.unity3d.ads.adplayer.WebViewAdPlayer$sendEvent$1 r2 = (com.unity3d.ads.adplayer.WebViewAdPlayer$sendEvent$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            com.unity3d.ads.adplayer.WebViewAdPlayer$sendEvent$1 r2 = new com.unity3d.ads.adplayer.WebViewAdPlayer$sendEvent$1
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r2.label
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L45
            if (r4 == r6) goto L39
            if (r4 != r5) goto L31
            kotlin.f.b(r1)
            goto Lb4
        L31:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L39:
            java.lang.Object r4 = r2.L$1
            kotlin.jvm.functions.Function0 r4 = (kotlin.jvm.functions.Function0) r4
            java.lang.Object r6 = r2.L$0
            com.unity3d.ads.adplayer.WebViewAdPlayer r6 = (com.unity3d.ads.adplayer.WebViewAdPlayer) r6
            kotlin.f.b(r1)
            goto L5c
        L45:
            kotlin.f.b(r1)
            kt.b r1 = r17.getOnLoadEvent()
            r2.L$0 = r0
            r4 = r18
            r2.L$1 = r4
            r2.label = r6
            java.lang.Object r1 = kotlinx.coroutines.flow.c.S(r1, r2)
            if (r1 != r3) goto L5b
            return r3
        L5b:
            r6 = r0
        L5c:
            com.unity3d.ads.adplayer.model.LoadEvent r1 = (com.unity3d.ads.adplayer.model.LoadEvent) r1
            boolean r7 = r1 instanceof com.unity3d.ads.adplayer.model.LoadEvent.Error
            if (r7 == 0) goto L9e
            com.unity3d.ads.core.domain.SendDiagnosticEvent r8 = r6.sendDiagnosticEvent
            java.lang.String r2 = "reason"
            java.lang.String r3 = "adviewer"
            kotlin.Pair r2 = ms.k.a(r2, r3)
            com.unity3d.ads.adplayer.model.LoadEvent$Error r1 = (com.unity3d.ads.adplayer.model.LoadEvent.Error) r1
            java.lang.String r3 = r1.getMessage()
            java.lang.String r4 = "reason_debug"
            kotlin.Pair r3 = ms.k.a(r4, r3)
            int r1 = r1.getErrorCode()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r4 = "reason_code"
            kotlin.Pair r1 = ms.k.a(r4, r1)
            kotlin.Pair[] r1 = new kotlin.Pair[]{r2, r3, r1}
            java.util.Map r11 = kotlin.collections.p0.m(r1)
            r15 = 58
            r16 = 0
            java.lang.String r9 = "bridge_send_event_failed"
            r10 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r8, r9, r10, r11, r12, r13, r14, r15, r16)
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        L9e:
            java.lang.Object r1 = r4.invoke()
            com.unity3d.ads.adplayer.model.WebViewEvent r1 = (com.unity3d.ads.adplayer.model.WebViewEvent) r1
            com.unity3d.ads.adplayer.WebViewBridge r4 = r6.bridge
            r6 = 0
            r2.L$0 = r6
            r2.L$1 = r6
            r2.label = r5
            java.lang.Object r1 = r4.sendEvent(r1, r2)
            if (r1 != r3) goto Lb4
            return r3
        Lb4:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer.sendEvent(kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @CallSuper
    @Nullable
    public Object destroy(@NotNull c<? super Unit> cVar) {
        return AdPlayer.DefaultImpls.destroy(this, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public void dispatchShowCompleted() {
        this.isCompletedManually.setValue(Boolean.TRUE);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<LoadEvent> getOnLoadEvent() {
        return this.onLoadEvent;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<OfferwallShowEvent.Show> getOnOfferwallEvent() {
        return this.onOfferwallEvent;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<ScarEvent.Show> getOnScarEvent() {
        return this.onScarEvent;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<ShowEvent> getOnShowEvent() {
        return this.onShowEvent;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public g0 getScope() {
        return this.scope;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public WebViewContainer getWebViewContainer() {
        return this.webViewContainer;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object onAllowedPiiChange(@NotNull final byte[] bArr, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$onAllowedPiiChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                String encodeToString = Base64.encodeToString(bArr, 2);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(value, Base64.NO_WRAP)");
                return new OnAllowedPiiChangeEvent(encodeToString);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object onBroadcastEvent(@NotNull final String str, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$onBroadcastEvent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                JSONObject jSONObject = new JSONObject(str);
                String eventType = jSONObject.getString("eventType");
                String optString = jSONObject.optString("data");
                Intrinsics.checkNotNullExpressionValue(eventType, "eventType");
                return new OnBroadcastEvent(eventType, optString);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0185 A[RETURN] */
    @Override // com.unity3d.ads.adplayer.AdPlayer
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object requestShow(@org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, ? extends java.lang.Object> r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.WebViewAdPlayer.requestShow(java.util.Map, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendActivityDestroyed(@NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendActivityDestroyed$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnActivityDestroyedEvent();
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendFocusChange(final boolean z10, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendFocusChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnFocusChangeEvent(z10);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendGmaEvent(@NotNull final GMAEvent gMAEvent, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendGmaEvent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnGmaEvent(GMAEvent.this);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendMuteChange(final boolean z10, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendMuteChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnMuteChangeEvent(z10);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendOfferwallEvent(@NotNull final OfferwallEvent offerwallEvent, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendOfferwallEvent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnOfferwallEvent(OfferwallEvent.this);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendPrivacyFsmChange(@NotNull final byte[] bArr, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendPrivacyFsmChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                String encodeToString = Base64.encodeToString(bArr, 2);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(value, Base64.NO_WRAP)");
                return new OnPrivacyFsmChangeEvent(encodeToString);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendScarBannerEvent(@NotNull final BannerBridge.BannerEvent bannerEvent, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendScarBannerEvent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnScarBannerEvent(BannerBridge.BannerEvent.this);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendUserConsentChange(@NotNull final byte[] bArr, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendUserConsentChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                String encodeToString = Base64.encodeToString(bArr, 2);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(value, Base64.NO_WRAP)");
                return new OnUserConsentChangeEvent(encodeToString);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendVisibilityChange(final boolean z10, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendVisibilityChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnVisibilityChangeEvent(z10);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendVolumeChange(final double d10, @NotNull c<? super Unit> cVar) {
        Object sendEvent = sendEvent(new Function0<WebViewEvent>() { // from class: com.unity3d.ads.adplayer.WebViewAdPlayer$sendVolumeChange$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final WebViewEvent invoke() {
                return new OnVolumeChangeEvent(d10);
            }
        }, cVar);
        if (sendEvent == kotlin.coroutines.intrinsics.a.f()) {
            return sendEvent;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public void show(@NotNull ShowOptions showOptions) {
        AdPlayer.DefaultImpls.show(this, showOptions);
    }
}
