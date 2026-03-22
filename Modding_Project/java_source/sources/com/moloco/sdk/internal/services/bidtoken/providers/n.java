package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nCompositeClientBidTokenSignalProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeClientBidTokenSignalProvider.kt\ncom/moloco/sdk/internal/services/bidtoken/providers/CompositeClientBidTokenSignalProviderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1755#2,3:111\n1202#2,2:114\n1230#2,4:116\n*S KotlinDebug\n*F\n+ 1 CompositeClientBidTokenSignalProvider.kt\ncom/moloco/sdk/internal/services/bidtoken/providers/CompositeClientBidTokenSignalProviderImpl\n*L\n57#1:111,3\n74#1:114,2\n74#1:116,4\n*E\n"})
/* loaded from: classes6.dex */
public final class n implements m {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f33221c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    public static final int f33222d = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final List<j<?>> f33223b;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(@NotNull List<? extends j<?>> signalProviders) {
        Intrinsics.checkNotNullParameter(signalProviders, "signalProviders");
        this.f33223b = signalProviders;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        for (j<?> jVar : this.f33223b) {
            jVar.a();
        }
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        List<j<?>> list = this.f33223b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                j jVar = (j) it.next();
                boolean b10 = jVar.b();
                if (b10) {
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger, "ClientBidTokenSignalProviderImpl", "[CBT] Signal provider " + jVar.c() + " needs refresh", null, false, 12, null);
                    continue;
                }
                if (b10) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return "ClientBidTokenSignalProviderImpl";
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: e */
    public k d() {
        List<j<?>> list = this.f33223b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(Reflection.getOrCreateKotlinClass(((j) obj).getClass()), obj);
        }
        Object obj2 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(x.class));
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.SDKInitStateSignalProvider");
        boolean booleanValue = ((x) obj2).d().booleanValue();
        Object obj3 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(w.class));
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.PrivacyStateSignalProvider");
        MolocoPrivacy.PrivacySettings d10 = ((w) obj3).d();
        Object obj4 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(t.class));
        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.MemorySignalProvider");
        s d11 = ((t) obj4).d();
        Object obj5 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(e.class));
        Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AppDirInfoSignalProvider");
        d d12 = ((e) obj5).d();
        Object obj6 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(v.class));
        Intrinsics.checkNotNull(obj6, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.NetworkInfoSignalProvider");
        u d13 = ((v) obj6).d();
        Object obj7 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(i.class));
        Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.BatteryInfoSignalProvider");
        h d14 = ((i) obj7).d();
        Object obj8 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(c.class));
        Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AdvertisingSignalProvider");
        com.moloco.sdk.internal.services.o d15 = ((c) obj8).d();
        Object obj9 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(p.class));
        Intrinsics.checkNotNull(obj9, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.DeviceSignalProvider");
        o d16 = ((p) obj9).d();
        Object obj10 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(g.class));
        Intrinsics.checkNotNull(obj10, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AudioSignalProvider");
        f d17 = ((g) obj10).d();
        Object obj11 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(b.class));
        Intrinsics.checkNotNull(obj11, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.AccessibilitySignalProvider");
        com.moloco.sdk.internal.services.bidtoken.providers.a d18 = ((b) obj11).d();
        Object obj12 = linkedHashMap.get(Reflection.getOrCreateKotlinClass(r.class));
        Intrinsics.checkNotNull(obj12, "null cannot be cast to non-null type com.moloco.sdk.internal.services.bidtoken.providers.IlrdSignalProvider");
        return new k(booleanValue, d10, d11, d12, d13, d14, d15, d16, d17, d18, ((r) obj12).d());
    }
}
