package com.unity3d.ads.adplayer;

import android.app.Activity;
import android.content.Intent;
import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import com.unity3d.ads.core.data.manager.OfferwallManager;
import com.unity3d.ads.core.data.manager.ScarManager;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.OfferwallShowEvent;
import com.unity3d.ads.core.data.model.ScarEvent;
import com.unity3d.ads.core.data.model.SessionChange;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.unity3d.services.ads.offerwall.OfferwallEvent;
import com.unity3d.services.banners.bridge.BannerBridge;
import gt.g0;
import gt.p;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import kotlinx.coroutines.r;
import kt.d;
import kt.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidFullscreenWebViewAdPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidFullscreenWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,213:1\n20#2:214\n22#2:218\n20#2:219\n22#2:223\n50#3:215\n55#3:217\n50#3:220\n55#3:222\n106#4:216\n106#4:221\n*S KotlinDebug\n*F\n+ 1 AndroidFullscreenWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer\n*L\n83#1:214\n83#1:218\n92#1:219\n92#1:223\n83#1:215\n83#1:217\n92#1:220\n92#1:222\n83#1:216\n92#1:221\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidFullscreenWebViewAdPlayer implements AdPlayer, FullscreenAdPlayer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final d<DisplayMessage> displayMessages = g.b(0, 0, null, 7, null);
    @NotNull
    private final i adObject$delegate;
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final OfferwallManager offerwallManager;
    @NotNull
    private final OpenMeasurementRepository openMeasurementRepository;
    @NotNull
    private final String opportunityId;
    @NotNull
    private final ScarManager scarManager;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final WebViewAdPlayer webViewAdPlayer;
    @NotNull
    private final AndroidWebViewContainer webViewContainer;

    /* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final d<DisplayMessage> getDisplayMessages() {
            return AndroidFullscreenWebViewAdPlayer.displayMessages;
        }

        private Companion() {
        }
    }

    public AndroidFullscreenWebViewAdPlayer(@NotNull WebViewAdPlayer webViewAdPlayer, @NotNull String opportunityId, @NotNull AndroidWebViewContainer webViewContainer, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull SessionRepository sessionRepository, @NotNull OpenMeasurementRepository openMeasurementRepository, @NotNull ScarManager scarManager, @NotNull OfferwallManager offerwallManager, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull AdRepository adRepository) {
        Intrinsics.checkNotNullParameter(webViewAdPlayer, "webViewAdPlayer");
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(openMeasurementRepository, "openMeasurementRepository");
        Intrinsics.checkNotNullParameter(scarManager, "scarManager");
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        this.webViewAdPlayer = webViewAdPlayer;
        this.opportunityId = opportunityId;
        this.webViewContainer = webViewContainer;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sessionRepository = sessionRepository;
        this.openMeasurementRepository = openMeasurementRepository;
        this.scarManager = scarManager;
        this.offerwallManager = offerwallManager;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.adRepository = adRepository;
        this.adObject$delegate = c.b(new Function0<AdObject>() { // from class: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$adObject$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final AdObject invoke() {
                Object d10;
                AdRepository adRepository2;
                String str;
                AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer = AndroidFullscreenWebViewAdPlayer.this;
                try {
                    Result.a aVar = Result.f60901b;
                    adRepository2 = androidFullscreenWebViewAdPlayer.adRepository;
                    str = androidFullscreenWebViewAdPlayer.opportunityId;
                    UUID fromString = UUID.fromString(str);
                    Intrinsics.checkNotNullExpressionValue(fromString, "fromString(opportunityId)");
                    d10 = Result.d(adRepository2.getAd(ProtobufExtensionsKt.toByteString(fromString)));
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(f.a(th2));
                }
                if (Result.i(d10)) {
                    d10 = null;
                }
                return (AdObject) d10;
            }
        });
    }

    private final r displayEventsRouter(DisplayMessage displayMessage) {
        r d10;
        d10 = gt.g.d(getScope(), null, null, new AndroidFullscreenWebViewAdPlayer$displayEventsRouter$1(this, displayMessage, null), 3, null);
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getAdObject() {
        return (AdObject) this.adObject$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleSessionChange(SessionChange sessionChange, rs.c<? super Unit> cVar) {
        if (sessionChange instanceof SessionChange.UserConsentChange) {
            WebViewAdPlayer webViewAdPlayer = this.webViewAdPlayer;
            byte[] byteArray = ((SessionChange.UserConsentChange) sessionChange).getValue().toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "change.value.toByteArray()");
            Object sendUserConsentChange = webViewAdPlayer.sendUserConsentChange(byteArray, cVar);
            if (sendUserConsentChange == kotlin.coroutines.intrinsics.a.f()) {
                return sendUserConsentChange;
            }
            return Unit.f60915a;
        } else if (sessionChange instanceof SessionChange.PrivacyFsmChange) {
            WebViewAdPlayer webViewAdPlayer2 = this.webViewAdPlayer;
            byte[] byteArray2 = ((SessionChange.PrivacyFsmChange) sessionChange).getValue().toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray2, "change.value.toByteArray()");
            Object sendPrivacyFsmChange = webViewAdPlayer2.sendPrivacyFsmChange(byteArray2, cVar);
            if (sendPrivacyFsmChange == kotlin.coroutines.intrinsics.a.f()) {
                return sendPrivacyFsmChange;
            }
            return Unit.f60915a;
        } else {
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleVolumeSettingsChange(VolumeSettingsChange volumeSettingsChange, rs.c<? super Unit> cVar) {
        if (volumeSettingsChange instanceof VolumeSettingsChange.MuteChange) {
            Object sendMuteChange = this.webViewAdPlayer.sendMuteChange(((VolumeSettingsChange.MuteChange) volumeSettingsChange).isMuted(), cVar);
            if (sendMuteChange == kotlin.coroutines.intrinsics.a.f()) {
                return sendMuteChange;
            }
            return Unit.f60915a;
        } else if (volumeSettingsChange instanceof VolumeSettingsChange.VolumeChange) {
            Object sendVolumeChange = this.webViewAdPlayer.sendVolumeChange(((VolumeSettingsChange.VolumeChange) volumeSettingsChange).getVolume(), cVar);
            if (sendVolumeChange == kotlin.coroutines.intrinsics.a.f()) {
                return sendVolumeChange;
            }
            return Unit.f60915a;
        } else {
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object show$displayEventsRouter(AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer, DisplayMessage displayMessage, rs.c cVar) {
        androidFullscreenWebViewAdPlayer.displayEventsRouter(displayMessage);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f A[RETURN] */
    @Override // com.unity3d.ads.adplayer.AdPlayer
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object destroy(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$destroy$1
            if (r0 == 0) goto L13
            r0 = r9
            com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$destroy$1 r0 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$destroy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$destroy$1 r0 = new com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$destroy$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L52
            if (r2 == r6) goto L4a
            if (r2 == r5) goto L42
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            kotlin.f.b(r9)
            goto La0
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer r2 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer) r2
            kotlin.f.b(r9)
            goto L94
        L42:
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer r2 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer) r2
            kotlin.f.b(r9)
            goto L85
        L4a:
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer r2 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer) r2
            kotlin.f.b(r9)
            goto L6a
        L52:
            kotlin.f.b(r9)
            kt.d<com.unity3d.ads.adplayer.DisplayMessage> r9 = com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer.displayMessages
            com.unity3d.ads.adplayer.DisplayMessage$DisplayFinishRequest r2 = new com.unity3d.ads.adplayer.DisplayMessage$DisplayFinishRequest
            java.lang.String r7 = r8.opportunityId
            r2.<init>(r7)
            r0.L$0 = r8
            r0.label = r6
            java.lang.Object r9 = r9.emit(r2, r0)
            if (r9 != r1) goto L69
            return r1
        L69:
            r2 = r8
        L6a:
            com.unity3d.ads.core.data.repository.OpenMeasurementRepository r9 = r2.openMeasurementRepository
            java.lang.String r6 = r2.opportunityId
            com.google.protobuf.ByteString r6 = com.google.protobuf.kotlin.ByteStringsKt.toByteStringUtf8(r6)
            boolean r9 = r9.hasSessionFinished(r6)
            if (r9 == 0) goto L85
            r0.L$0 = r2
            r0.label = r5
            r5 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r5, r0)
            if (r9 != r1) goto L85
            return r1
        L85:
            com.unity3d.ads.adplayer.AndroidWebViewContainer r9 = r2.getWebViewContainer()
            r0.L$0 = r2
            r0.label = r4
            java.lang.Object r9 = r9.destroy(r0)
            if (r9 != r1) goto L94
            return r1
        L94:
            r9 = 0
            r0.L$0 = r9
            r0.label = r3
            java.lang.Object r9 = com.unity3d.ads.adplayer.AdPlayer.DefaultImpls.destroy(r2, r0)
            if (r9 != r1) goto La0
            return r1
        La0:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer.destroy(rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public void dispatchShowCompleted() {
        this.webViewAdPlayer.dispatchShowCompleted();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<LoadEvent> getOnLoadEvent() {
        return this.webViewAdPlayer.getOnLoadEvent();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<OfferwallShowEvent> getOnOfferwallEvent() {
        return this.webViewAdPlayer.getOnOfferwallEvent();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<ScarEvent> getOnScarEvent() {
        return this.webViewAdPlayer.getOnScarEvent();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public kt.b<ShowEvent> getOnShowEvent() {
        return this.webViewAdPlayer.getOnShowEvent();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public g0 getScope() {
        return this.webViewAdPlayer.getScope();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object onAllowedPiiChange(@NotNull byte[] bArr, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.onAllowedPiiChange(bArr, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object onBroadcastEvent(@NotNull String str, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.onBroadcastEvent(str, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object requestShow(@Nullable Map<String, ? extends Object> map, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.requestShow(map, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendActivityDestroyed(@NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendActivityDestroyed(cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendFocusChange(boolean z10, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendFocusChange(z10, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendGmaEvent(@NotNull GMAEvent gMAEvent, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendGmaEvent(gMAEvent, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendMuteChange(boolean z10, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendMuteChange(z10, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendOfferwallEvent(@NotNull OfferwallEvent offerwallEvent, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendOfferwallEvent(offerwallEvent, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendPrivacyFsmChange(@NotNull byte[] bArr, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendPrivacyFsmChange(bArr, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendScarBannerEvent(@NotNull BannerBridge.BannerEvent bannerEvent, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendScarBannerEvent(bannerEvent, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendUserConsentChange(@NotNull byte[] bArr, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendUserConsentChange(bArr, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendVisibilityChange(boolean z10, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendVisibilityChange(z10, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @Nullable
    public Object sendVolumeChange(double d10, @NotNull rs.c<? super Unit> cVar) {
        return this.webViewAdPlayer.sendVolumeChange(d10, cVar);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public void show(@NotNull ShowOptions showOptions) {
        Intrinsics.checkNotNullParameter(showOptions, "showOptions");
        if (showOptions instanceof AndroidShowOptions) {
            AndroidShowOptions androidShowOptions = (AndroidShowOptions) showOptions;
            Activity activity = androidShowOptions.getActivity().get();
            if (activity != null) {
                boolean isScarAd = androidShowOptions.isScarAd();
                boolean isOfferwallAd = androidShowOptions.isOfferwallAd();
                p b10 = gt.r.b(null, 1, null);
                final kt.f Q = kotlinx.coroutines.flow.c.Q(displayMessages, new AndroidFullscreenWebViewAdPlayer$show$1(b10, null));
                kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(new kt.b<DisplayMessage>() { // from class: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1

                    /* compiled from: Emitters.kt */
                    @Metadata
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidFullscreenWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n83#3:224\n*E\n"})
                    /* renamed from: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1$2  reason: invalid class name */
                    /* loaded from: classes7.dex */
                    public static final class AnonymousClass2<T> implements kt.c {
                        final /* synthetic */ kt.c $this_unsafeFlow;
                        final /* synthetic */ AndroidFullscreenWebViewAdPlayer this$0;

                        /* compiled from: Emitters.kt */
                        @Metadata
                        @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1$2", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {223}, m = "emit")
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                        /* renamed from: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1$2$1  reason: invalid class name */
                        /* loaded from: classes7.dex */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            Object L$1;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(rs.c cVar) {
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

                        public AnonymousClass2(kt.c cVar, AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer) {
                            this.$this_unsafeFlow = cVar;
                            this.this$0 = androidFullscreenWebViewAdPlayer;
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
                                boolean r0 = r7 instanceof com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1$2$1
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
                                com.unity3d.ads.adplayer.DisplayMessage r2 = (com.unity3d.ads.adplayer.DisplayMessage) r2
                                java.lang.String r2 = r2.getOpportunityId()
                                com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer r4 = r5.this$0
                                java.lang.String r4 = com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer.access$getOpportunityId$p(r4)
                                boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
                                if (r2 == 0) goto L52
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r6, r0)
                                if (r6 != r1) goto L52
                                return r1
                            L52:
                                kotlin.Unit r6 = kotlin.Unit.f60915a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                        }
                    }

                    @Override // kt.b
                    @Nullable
                    public Object collect(@NotNull kt.c<? super DisplayMessage> cVar, @NotNull rs.c cVar2) {
                        Object collect = kt.b.this.collect(new AnonymousClass2(cVar, this), cVar2);
                        if (collect == kotlin.coroutines.intrinsics.a.f()) {
                            return collect;
                        }
                        return Unit.f60915a;
                    }
                }, new AndroidFullscreenWebViewAdPlayer$show$3(this)), getScope());
                kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.deviceInfoRepository.getVolumeSettingsChange(), new AndroidFullscreenWebViewAdPlayer$show$4(this)), getScope());
                final kt.b<ShowEvent> onShowEvent = this.webViewAdPlayer.getOnShowEvent();
                kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(new kt.b<ShowEvent>() { // from class: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2

                    /* compiled from: Emitters.kt */
                    @Metadata
                    @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidFullscreenWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n92#3:224\n*E\n"})
                    /* renamed from: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2$2  reason: invalid class name */
                    /* loaded from: classes7.dex */
                    public static final class AnonymousClass2<T> implements kt.c {
                        final /* synthetic */ kt.c $this_unsafeFlow;

                        /* compiled from: Emitters.kt */
                        @Metadata
                        @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2$2", f = "AndroidFullscreenWebViewAdPlayer.kt", l = {223}, m = "emit")
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                        /* renamed from: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2$2$1  reason: invalid class name */
                        /* loaded from: classes7.dex */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            Object L$1;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(rs.c cVar) {
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
                                boolean r0 = r7 instanceof com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2$2$1 r0 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2$2$1 r0 = new com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2$2$1
                                r0.<init>(r7)
                            L18:
                                java.lang.Object r7 = r0.result
                                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L31
                                if (r2 != r3) goto L29
                                kotlin.f.b(r7)
                                goto L4a
                            L29:
                                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                r6.<init>(r7)
                                throw r6
                            L31:
                                kotlin.f.b(r7)
                                kt.c r7 = r5.$this_unsafeFlow
                                r2 = r6
                                com.unity3d.ads.core.data.model.ShowEvent r2 = (com.unity3d.ads.core.data.model.ShowEvent) r2
                                boolean r4 = r2 instanceof com.unity3d.ads.core.data.model.ShowEvent.Completed
                                if (r4 != 0) goto L41
                                boolean r2 = r2 instanceof com.unity3d.ads.core.data.model.ShowEvent.Error
                                if (r2 == 0) goto L4a
                            L41:
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r6, r0)
                                if (r6 != r1) goto L4a
                                return r1
                            L4a:
                                kotlin.Unit r6 = kotlin.Unit.f60915a
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$show$$inlined$filter$2.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                        }
                    }

                    @Override // kt.b
                    @Nullable
                    public Object collect(@NotNull kt.c<? super ShowEvent> cVar, @NotNull rs.c cVar2) {
                        Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                        if (collect == kotlin.coroutines.intrinsics.a.f()) {
                            return collect;
                        }
                        return Unit.f60915a;
                    }
                }, new AndroidFullscreenWebViewAdPlayer$show$6(this, null)), getScope());
                kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.sessionRepository.getOnChange(), new AndroidFullscreenWebViewAdPlayer$show$7(this)), getScope());
                if (!isScarAd && !isOfferwallAd) {
                    SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_ad_viewer_fullscreen", null, null, null, getAdObject(), null, 46, null);
                    Intent intent = new Intent(activity, FullScreenWebViewDisplay.class);
                    intent.putExtra("opportunityId", this.opportunityId);
                    Map<String, Object> unityAdsShowOptions = androidShowOptions.getUnityAdsShowOptions();
                    if (unityAdsShowOptions != null) {
                        intent.putExtra("showOptions", new JSONObject(unityAdsShowOptions).toString());
                    }
                    intent.addFlags(268500992);
                    intent.putExtra(AdUnitActivity.EXTRA_ORIENTATION, activity.getRequestedOrientation());
                    gt.g.d(getScope(), null, null, new AndroidFullscreenWebViewAdPlayer$show$8(b10, activity, intent, this, null), 3, null);
                    return;
                } else if (!isScarAd) {
                    gt.g.d(getScope(), null, null, new AndroidFullscreenWebViewAdPlayer$show$10(this, showOptions, null), 3, null);
                    return;
                } else {
                    ScarManager scarManager = this.scarManager;
                    String placementId = androidShowOptions.getPlacementId();
                    String str = "";
                    if (placementId == null) {
                        placementId = "";
                    }
                    String scarQueryId = androidShowOptions.getScarQueryId();
                    if (scarQueryId != null) {
                        str = scarQueryId;
                    }
                    gt.g.d(getScope(), null, null, new AndroidFullscreenWebViewAdPlayer$show$9(this, kotlinx.coroutines.flow.c.R(scarManager.show(placementId, str), getScope(), m.f61804a.c(), 10), showOptions, null), 3, null);
                    return;
                }
            }
            throw new IllegalArgumentException("Required value was null.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    @NotNull
    public AndroidWebViewContainer getWebViewContainer() {
        return this.webViewContainer;
    }
}
