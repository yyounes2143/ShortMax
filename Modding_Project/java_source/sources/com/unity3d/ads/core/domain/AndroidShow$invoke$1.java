package com.unity3d.ads.core.domain;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import at.n;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.b;
import kt.c;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidShow.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1", f = "AndroidShow.kt", l = {62}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidShow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidShow$invoke$1 extends SuspendLambda implements Function2<c<? super ShowEvent>, rs.c<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ UnityAdsShowOptions $showOptions;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidShow this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidShow.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$2", f = "AndroidShow.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nAndroidShow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1$2\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n1#1,73:1\n17#2:74\n8#2,14:75\n*S KotlinDebug\n*F\n+ 1 AndroidShow.kt\ncom/unity3d/ads/core/domain/AndroidShow$invoke$1$2\n*L\n37#1:74\n37#1:75,14\n*E\n"})
    /* renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<c<? super ShowEvent>, rs.c<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ AdObject $ad;
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        int label;
        final /* synthetic */ AndroidShow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AdObject adObject, AndroidShow androidShow, AdObject adObject2, Activity activity, UnityAdsShowOptions unityAdsShowOptions, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.$ad = adObject;
            this.this$0 = androidShow;
            this.$adObject = adObject2;
            this.$activity = activity;
            this.$showOptions = unityAdsShowOptions;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new AnonymousClass2(this.$ad, this.this$0, this.$adObject, this.$activity, this.$showOptions, cVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
            if (r1 == null) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r15) {
            /*
                r14 = this;
                kotlin.coroutines.intrinsics.a.f()
                int r0 = r14.label
                if (r0 != 0) goto Lc1
                kotlin.f.b(r15)
                com.unity3d.ads.core.data.model.AdObject r15 = r14.$ad
                com.unity3d.ads.core.domain.AndroidShow r0 = r14.this$0
                com.unity3d.ads.core.configuration.GameServerIdReader r0 = com.unity3d.ads.core.domain.AndroidShow.access$getGameServerIdReader$p(r0)
                com.unity3d.services.core.misc.JsonStorage r1 = r0.getJsonStorage()
                java.lang.String r2 = r0.getKey()
                java.lang.Object r1 = r1.get(r2)
                java.lang.String r2 = "get(key)"
                r3 = 0
                if (r1 == 0) goto L2e
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                boolean r4 = r1 instanceof java.lang.String
                if (r4 == 0) goto L2b
                goto L2c
            L2b:
                r1 = r3
            L2c:
                if (r1 != 0) goto L2f
            L2e:
                r1 = r3
            L2f:
                com.unity3d.services.core.misc.JsonStorage r4 = r0.getJsonStorage()
                java.lang.String r5 = r0.getKey()
                java.lang.Object r4 = r4.get(r5)
                if (r4 == 0) goto L4b
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r2)
                com.unity3d.services.core.misc.JsonStorage r2 = r0.getJsonStorage()
                java.lang.String r0 = r0.getKey()
                r2.delete(r0)
            L4b:
                java.lang.String r1 = (java.lang.String) r1
                r15.setPlayerServerId(r1)
                com.unity3d.ads.core.data.model.AdObject r15 = r14.$adObject
                kt.e r15 = r15.getState()
                com.unity3d.ads.core.data.model.AdObjectState r0 = com.unity3d.ads.core.data.model.AdObjectState.SHOWING
                r15.setValue(r0)
                com.unity3d.ads.core.domain.AndroidShow r15 = r14.this$0
                com.unity3d.ads.core.domain.SendDiagnosticEvent r4 = com.unity3d.ads.core.domain.AndroidShow.access$getSendDiagnosticEvent$p(r15)
                com.unity3d.ads.core.data.model.AdObject r9 = r14.$adObject
                r11 = 46
                r12 = 0
                java.lang.String r5 = "native_show_event_flow_started"
                r6 = 0
                r7 = 0
                r8 = 0
                r10 = 0
                com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r4, r5, r6, r7, r8, r9, r10, r11, r12)
                com.unity3d.ads.core.data.model.AdObject r15 = r14.$ad
                com.unity3d.ads.adplayer.AdPlayer r15 = r15.getAdPlayer()
                java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference
                android.app.Activity r0 = r14.$activity
                r5.<init>(r0)
                com.unity3d.ads.UnityAdsShowOptions r0 = r14.$showOptions
                if (r0 == 0) goto L8a
                org.json.JSONObject r0 = r0.getData()
                if (r0 == 0) goto L8a
                java.util.Map r3 = com.unity3d.ads.core.extensions.JSONObjectExtensionsKt.toBuiltInMap(r0)
            L8a:
                r6 = r3
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                boolean r8 = r0.isScarAd()
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                java.lang.String r10 = r0.getScarAdString()
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                java.lang.String r9 = r0.getScarQueryId()
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                java.lang.String r11 = r0.getScarAdUnitId()
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                boolean r12 = r0.isOfferwallAd()
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                java.lang.String r13 = r0.getOfferwallPlacementName()
                com.unity3d.ads.core.data.model.AdObject r0 = r14.$ad
                java.lang.String r7 = r0.getPlacementId()
                com.unity3d.ads.adplayer.AndroidShowOptions r0 = new com.unity3d.ads.adplayer.AndroidShowOptions
                r4 = r0
                r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12, r13)
                r15.show(r0)
                kotlin.Unit r15 = kotlin.Unit.f60915a
                return r15
            Lc1:
                java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r15.<init>(r0)
                throw r15
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidShow$invoke$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull c<? super ShowEvent> cVar, @Nullable rs.c<? super Unit> cVar2) {
            return ((AnonymousClass2) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidShow.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$3", f = "AndroidShow.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$3  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements n<c<? super ShowEvent>, Throwable, rs.c<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ ByteString $opportunityId;
        int label;
        final /* synthetic */ AndroidShow this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(AndroidShow androidShow, AdObject adObject, ByteString byteString, rs.c<? super AnonymousClass3> cVar) {
            super(3, cVar);
            this.this$0 = androidShow;
            this.$adObject = adObject;
            this.$opportunityId = byteString;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            SendDiagnosticEvent sendDiagnosticEvent;
            AdRepository adRepository;
            kotlin.coroutines.intrinsics.a.f();
            if (this.label == 0) {
                f.b(obj);
                sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_event_flow_completed", null, null, null, this.$adObject, null, 46, null);
                this.$adObject.getState().setValue(AdObjectState.COMPLETED);
                adRepository = this.this$0.adRepository;
                adRepository.removeAd(this.$opportunityId);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // at.n
        @Nullable
        public final Object invoke(@NotNull c<? super ShowEvent> cVar, @Nullable Throwable th2, @Nullable rs.c<? super Unit> cVar2) {
            return new AnonymousClass3(this.this$0, this.$adObject, this.$opportunityId, cVar2).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidShow.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.AndroidShow$invoke$1$4", f = "AndroidShow.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.domain.AndroidShow$invoke$1$4  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements n<c<? super ShowEvent>, ShowEvent, rs.c<? super Boolean>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass4(rs.c<? super AnonymousClass4> cVar) {
            super(3, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            ShowEvent showEvent;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            boolean z10 = true;
            if (i10 != 0) {
                if (i10 == 1) {
                    showEvent = (ShowEvent) this.L$0;
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                ShowEvent showEvent2 = (ShowEvent) this.L$1;
                this.L$0 = showEvent2;
                this.label = 1;
                if (((c) this.L$0).emit(showEvent2, this) == f10) {
                    return f10;
                }
                showEvent = showEvent2;
            }
            return kotlin.coroutines.jvm.internal.a.a(((showEvent instanceof ShowEvent.Completed) || (showEvent instanceof ShowEvent.Error)) ? false : false);
        }

        @Override // at.n
        @Nullable
        public final Object invoke(@NotNull c<? super ShowEvent> cVar, @NotNull ShowEvent showEvent, @Nullable rs.c<? super Boolean> cVar2) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(cVar2);
            anonymousClass4.L$0 = cVar;
            anonymousClass4.L$1 = showEvent;
            return anonymousClass4.invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidShow$invoke$1(AdObject adObject, AndroidShow androidShow, Activity activity, UnityAdsShowOptions unityAdsShowOptions, rs.c<? super AndroidShow$invoke$1> cVar) {
        super(2, cVar);
        this.$adObject = adObject;
        this.this$0 = androidShow;
        this.$activity = activity;
        this.$showOptions = unityAdsShowOptions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        AndroidShow$invoke$1 androidShow$invoke$1 = new AndroidShow$invoke$1(this.$adObject, this.this$0, this.$activity, this.$showOptions, cVar);
        androidShow$invoke$1.L$0 = obj;
        return androidShow$invoke$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AdRepository adRepository;
        SendDiagnosticEvent sendDiagnosticEvent;
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
            final c cVar = (c) this.L$0;
            if (!this.$adObject.getOpportunityId().isEmpty()) {
                ByteString opportunityId = this.$adObject.getOpportunityId();
                adRepository = this.this$0.adRepository;
                AdObject ad2 = adRepository.getAd(opportunityId);
                if (ad2 != null) {
                    sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_started_ad_viewer", null, null, null, this.$adObject, null, 46, null);
                    AdPlayer adPlayer = ad2.getAdPlayer();
                    if (adPlayer != null) {
                        b Y = kotlinx.coroutines.flow.c.Y(kotlinx.coroutines.flow.c.N(kotlinx.coroutines.flow.c.P(adPlayer.getOnShowEvent(), new AnonymousClass2(ad2, this.this$0, this.$adObject, this.$activity, this.$showOptions, null)), new AnonymousClass3(this.this$0, this.$adObject, opportunityId, null)), new AnonymousClass4(null));
                        final AndroidShow androidShow = this.this$0;
                        final AdObject adObject = this.$adObject;
                        c cVar2 = new c() { // from class: com.unity3d.ads.core.domain.AndroidShow$invoke$1.5
                            @Override // kt.c
                            public /* bridge */ /* synthetic */ Object emit(Object obj2, rs.c cVar3) {
                                return emit((ShowEvent) obj2, (rs.c<? super Unit>) cVar3);
                            }

                            @Nullable
                            public final Object emit(@NotNull ShowEvent showEvent, @NotNull rs.c<? super Unit> cVar3) {
                                SendDiagnosticEvent sendDiagnosticEvent2;
                                sendDiagnosticEvent2 = AndroidShow.this.sendDiagnosticEvent;
                                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, "native_show_event_flow_collected", null, p0.f(k.a(NotificationCompat.CATEGORY_EVENT, showEvent.getClass().getSimpleName())), null, adObject, null, 42, null);
                                Object emit = cVar.emit(showEvent, cVar3);
                                return emit == kotlin.coroutines.intrinsics.a.f() ? emit : Unit.f60915a;
                            }
                        };
                        this.label = 1;
                        if (Y.collect(cVar2, this) == f10) {
                            return f10;
                        }
                    } else {
                        throw new IllegalStateException("No adPlayer associated with ad");
                    }
                } else {
                    throw new IllegalStateException("No ad associated with opportunityId");
                }
            } else {
                throw new IllegalArgumentException("No opportunityId");
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super ShowEvent> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((AndroidShow$invoke$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
