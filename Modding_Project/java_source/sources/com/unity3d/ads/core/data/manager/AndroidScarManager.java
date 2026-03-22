package com.unity3d.ads.core.data.manager;

import android.content.Context;
import com.unity3d.ads.core.domain.scar.CommonScarEventReceiver;
import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.ads.core.domain.scar.ScarTimeHackFixer;
import com.unity3d.services.ads.gmascar.GMAScarAdapterBridge;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.di.ServiceProvider;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.TimeoutKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidScarManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidScarManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,129:1\n1#2:130\n20#3:131\n22#3:135\n50#4:132\n55#4:134\n106#5:133\n*S KotlinDebug\n*F\n+ 1 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager\n*L\n113#1:131\n113#1:135\n113#1:132\n113#1:134\n113#1:133\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidScarManager implements ScarManager {
    @NotNull
    private final GMAScarAdapterBridge gmaBridge;
    @NotNull
    private final CommonScarEventReceiver scarEventReceiver;
    @NotNull
    private final ScarTimeHackFixer scarTimeHackFixer;

    public AndroidScarManager(@NotNull CommonScarEventReceiver scarEventReceiver, @NotNull GMAScarAdapterBridge gmaBridge, @NotNull ScarTimeHackFixer scarTimeHackFixer) {
        Intrinsics.checkNotNullParameter(scarEventReceiver, "scarEventReceiver");
        Intrinsics.checkNotNullParameter(gmaBridge, "gmaBridge");
        Intrinsics.checkNotNullParameter(scarTimeHackFixer, "scarTimeHackFixer");
        this.scarEventReceiver = scarEventReceiver;
        this.gmaBridge = gmaBridge;
        this.scarTimeHackFixer = scarTimeHackFixer;
    }

    @Override // com.unity3d.ads.core.data.manager.ScarManager
    @Nullable
    public Object getSignals(@Nullable List<? extends InitializationResponseOuterClass.AdFormat> list, @NotNull c<? super BiddingSignals> cVar) {
        return TimeoutKt.e(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT, new AndroidScarManager$getSignals$2(list, this, null), cVar);
    }

    @Override // com.unity3d.ads.core.data.manager.ScarManager
    @Nullable
    public Object getVersion(@NotNull c<? super String> cVar) {
        return TimeoutKt.e(5000L, new AndroidScarManager$getVersion$2(this, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a6  */
    @Override // com.unity3d.ads.core.data.manager.ScarManager
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object loadAd(@org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull java.lang.String r20, @org.jetbrains.annotations.NotNull java.lang.String r21, int r22, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r23) {
        /*
            r16 = this;
            r9 = r16
            r0 = r23
            boolean r1 = r0 instanceof com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$1
            if (r1 == 0) goto L18
            r1 = r0
            com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$1 r1 = (com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L18
            int r2 = r2 - r3
            r1.label = r2
        L16:
            r10 = r1
            goto L1e
        L18:
            com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$1 r1 = new com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$1
            r1.<init>(r9, r0)
            goto L16
        L1e:
            java.lang.Object r0 = r10.result
            java.lang.Object r11 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r10.label
            r12 = 0
            r13 = 1
            if (r1 == 0) goto L38
            if (r1 != r13) goto L30
            kotlin.f.b(r0)
            goto L74
        L30:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L38:
            kotlin.f.b(r0)
            com.unity3d.scar.adapter.common.scarads.UnityAdFormat r0 = com.unity3d.scar.adapter.common.scarads.UnityAdFormat.INTERSTITIAL
            java.lang.String r0 = r0.toString()
            r1 = r17
            boolean r2 = kotlin.text.StringsKt.G(r1, r0, r13)
            com.unity3d.ads.core.domain.scar.CommonScarEventReceiver r0 = r9.scarEventReceiver
            kt.f r14 = r0.getGmaEventFlow()
            com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$2 r15 = new com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$2
            r8 = 0
            r0 = r15
            r1 = r16
            r3 = r18
            r4 = r21
            r5 = r19
            r6 = r20
            r7 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            kt.f r0 = kotlinx.coroutines.flow.c.Q(r14, r15)
            com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$3 r1 = new com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$3
            r2 = r18
            r1.<init>(r2, r12)
            r10.label = r13
            java.lang.Object r0 = kotlinx.coroutines.flow.c.x(r0, r1, r10)
            if (r0 != r11) goto L74
            return r11
        L74:
            r1 = r0
            com.unity3d.ads.core.domain.scar.GmaEventData r1 = (com.unity3d.ads.core.domain.scar.GmaEventData) r1
            com.unity3d.scar.adapter.common.GMAEvent r1 = r1.getGmaEvent()
            com.unity3d.scar.adapter.common.GMAEvent r2 = com.unity3d.scar.adapter.common.GMAEvent.AD_LOADED
            if (r1 == r2) goto L80
            r12 = r0
        L80:
            com.unity3d.ads.core.domain.scar.GmaEventData r12 = (com.unity3d.ads.core.domain.scar.GmaEventData) r12
            if (r12 == 0) goto La6
            com.unity3d.ads.core.data.model.exception.LoadException r0 = new com.unity3d.ads.core.data.model.exception.LoadException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Error loading SCAR ad: "
            r1.append(r2)
            java.lang.String r2 = r12.getErrorMessage()
            if (r2 != 0) goto L9a
            com.unity3d.scar.adapter.common.GMAEvent r2 = r12.getGmaEvent()
        L9a:
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = 0
            r0.<init>(r2, r1)
            throw r0
        La6:
            kotlin.Unit r0 = kotlin.Unit.f60915a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.AndroidScarManager.loadAd(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.manager.ScarManager
    @NotNull
    public kt.b<GmaEventData> loadBannerAd(@NotNull Context context, @NotNull BannerView bannerView, @NotNull nl.c scarAdMetadata, @NotNull UnityBannerSize bannerSize, @NotNull final String opportunityId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        Intrinsics.checkNotNullParameter(scarAdMetadata, "scarAdMetadata");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        final kt.b P = kotlinx.coroutines.flow.c.P(this.scarEventReceiver.getGmaEventFlow(), new AndroidScarManager$loadBannerAd$1(this, context, bannerView, opportunityId, scarAdMetadata, bannerSize, null));
        return new kt.b<GmaEventData>() { // from class: com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidScarManager.kt\ncom/unity3d/ads/core/data/manager/AndroidScarManager\n*L\n1#1,222:1\n21#2:223\n22#2:225\n114#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ String $opportunityId$inlined;
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1$2", f = "AndroidScarManager.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1$2$1  reason: invalid class name */
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

                public AnonymousClass2(kt.c cVar, String str) {
                    this.$this_unsafeFlow = cVar;
                    this.$opportunityId$inlined = str;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull rs.c r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r8)
                        goto L56
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.f.b(r8)
                        kt.c r8 = r6.$this_unsafeFlow
                        r2 = r7
                        com.unity3d.ads.core.domain.scar.GmaEventData r2 = (com.unity3d.ads.core.domain.scar.GmaEventData) r2
                        com.unity3d.scar.adapter.common.GMAEvent r4 = r2.getGmaEvent()
                        com.unity3d.scar.adapter.common.GMAEvent r5 = com.unity3d.scar.adapter.common.GMAEvent.BANNER
                        if (r4 != r5) goto L56
                        java.lang.String r2 = r2.getOpportunityId()
                        java.lang.String r4 = r6.$opportunityId$inlined
                        boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
                        if (r2 == 0) goto L56
                        r0.label = r3
                        java.lang.Object r7 = r8.emit(r7, r0)
                        if (r7 != r1) goto L56
                        return r1
                    L56:
                        kotlin.Unit r7 = kotlin.Unit.f60915a
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super GmaEventData> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar, opportunityId), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
    }

    @Override // com.unity3d.ads.core.data.manager.ScarManager
    @NotNull
    public kt.b<GmaEventData> show(@NotNull String placementId, @NotNull String queryId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(queryId, "queryId");
        return kotlinx.coroutines.flow.c.Y(kotlinx.coroutines.flow.c.Q(this.scarEventReceiver.getGmaEventFlow(), new AndroidScarManager$show$1(this, placementId, queryId, null)), new AndroidScarManager$show$2(null));
    }
}
