package com.moloco.sdk.internal.publisher.nativead;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.publisher.e0;
import com.moloco.sdk.internal.publisher.nativead.model.a;
import com.moloco.sdk.internal.publisher.t0;
import com.moloco.sdk.internal.services.r;
import com.moloco.sdk.publisher.AdFormatType;
import com.moloco.sdk.publisher.MolocoAdKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nNativeAdShowListenerWithTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdShowListenerWithTracker.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdShowListenerWithTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"})
/* loaded from: classes6.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32815a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.model.c f32816b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.publisher.nativead.model.a f32817c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final r f32818d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f32819e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final AdFormatType f32820f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final l f32821g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final n0 f32822h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f32823i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final t0 f32824j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final a f32825k;

    @SourceDebugExtension({"SMAP\nNativeAdShowListenerWithTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdShowListenerWithTracker.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdShowListenerWithTracker$NativeAdSpecificTrackers\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1863#2,2:140\n1863#2,2:142\n*S KotlinDebug\n*F\n+ 1 NativeAdShowListenerWithTracker.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdShowListenerWithTracker$NativeAdSpecificTrackers\n*L\n103#1:140,2\n108#1:142,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public List<String> f32826a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public List<a.b> f32827b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final l f32828c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f32829d;

        public a(@Nullable List<String> list, @Nullable List<a.b> list2, @NotNull l persistentHttpRequest) {
            Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
            this.f32826a = list;
            this.f32827b = list2;
            this.f32828c = persistentHttpRequest;
            this.f32829d = new LinkedHashSet();
        }

        public final void a() {
            List<String> list = this.f32826a;
            if (list != null) {
                for (String str : list) {
                    this.f32828c.a(str);
                }
            }
            this.f32826a = null;
            List<a.b> list2 = this.f32827b;
            if (list2 != null) {
                for (a.b bVar : list2) {
                    if (bVar.c() != null && bVar.a() == 1 && bVar.b() == 1) {
                        this.f32828c.a(bVar.c());
                    }
                }
            }
            this.f32827b = null;
        }

        public final void b(@NotNull List<String> urls) {
            Intrinsics.checkNotNullParameter(urls, "urls");
            for (String str : urls) {
                if (!this.f32829d.contains(str)) {
                    this.f32828c.a(str);
                    this.f32829d.add(str);
                }
            }
        }
    }

    public f(@NotNull String adUnitId, @NotNull com.moloco.sdk.internal.ortb.model.c bid, @NotNull com.moloco.sdk.internal.publisher.nativead.model.a ortbResponse, @NotNull r appLifecycleTrackerService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull AdFormatType adFormatType, @NotNull l persistentHttpRequest, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(bid, "bid");
        Intrinsics.checkNotNullParameter(ortbResponse, "ortbResponse");
        Intrinsics.checkNotNullParameter(appLifecycleTrackerService, "appLifecycleTrackerService");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adFormatType, "adFormatType");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f32815a = adUnitId;
        this.f32816b = bid;
        this.f32817c = ortbResponse;
        this.f32818d = appLifecycleTrackerService;
        this.f32819e = customUserEventBuilderService;
        this.f32820f = adFormatType;
        this.f32821g = persistentHttpRequest;
        this.f32822h = externalLinkHandler;
        this.f32823i = metricsRecorder;
        this.f32824j = c();
        this.f32825k = d();
    }

    public static final com.moloco.sdk.internal.ortb.model.r a(com.moloco.sdk.internal.ortb.model.c cVar) {
        return cVar.d().f();
    }

    public static final e0 b(f fVar) {
        String c10 = fVar.f32816b.c();
        if (c10 != null) {
            return new e0(c10, Float.valueOf(fVar.f32816b.e()));
        }
        return null;
    }

    public final t0 c() {
        final com.moloco.sdk.internal.ortb.model.c cVar = this.f32816b;
        return com.moloco.sdk.internal.publisher.a.b(null, this.f32818d, this.f32819e, new Function0() { // from class: com.moloco.sdk.internal.publisher.nativead.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.a(com.moloco.sdk.internal.ortb.model.c.this);
            }
        }, new Function0() { // from class: com.moloco.sdk.internal.publisher.nativead.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.b(f.this);
            }
        }, null, null, this.f32820f, this.f32823i, 96, null);
    }

    public final a d() {
        com.moloco.sdk.internal.publisher.nativead.model.a aVar = this.f32817c;
        return new a(aVar.c(), aVar.b(), this.f32821g);
    }

    public final void e() {
        a.c d10 = this.f32817c.d();
        if (d10 != null) {
            this.f32825k.b(d10.a());
            this.f32822h.a(d10.b());
        }
        this.f32824j.onAdClicked(MolocoAdKt.createAdInfo$default(this.f32815a, null, 2, null));
    }

    public final void f() {
        this.f32825k.a();
        this.f32824j.onAdShowSuccess(MolocoAdKt.createAdInfo$default(this.f32815a, null, 2, null));
    }
}
