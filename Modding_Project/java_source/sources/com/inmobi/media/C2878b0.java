package com.inmobi.media;

import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.b0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2878b0 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2912d0 f24513a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2878b0(C2912d0 c2912d0) {
        super(0);
        this.f24513a = c2912d0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C2912d0 c2912d0 = this.f24513a;
        c2912d0.getClass();
        Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter("beacon handler execute", "message");
        Log.i("AdQualityBeaconExecutor", "beacon handler execute");
        c2912d0.f24567b.set(true);
        ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
        ms.i iVar = Nc.f23910a;
        int a10 = T1.a((C2961g0) iVar.getValue(), null, null, 63);
        C2961g0 c2961g0 = (C2961g0) iVar.getValue();
        c2961g0.getClass();
        Log.i("AdQualityDao", "peek");
        List<AdQualityResult> a11 = T1.a(c2961g0, null, null, null, null, null, Integer.valueOf(a10), 31);
        if (a11.isEmpty()) {
            a11 = CollectionsKt.n();
        }
        for (AdQualityResult adQualityResult : a11) {
            if (adQualityResult != null) {
                AdConfig adConfig = c2912d0.f24566a;
                C3254y6 c3254y6 = new C3254y6(adQualityResult, new C3198ue(adConfig.getIncludeIdParams()), adConfig.getAdQuality());
                C2895c0 onBeaconHit = new C2895c0(c2912d0, adQualityResult);
                Intrinsics.checkNotNullParameter(onBeaconHit, "onBeaconHit");
                Intrinsics.checkNotNullParameter("JsonBeaconRequest", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter("hitBeacon", "message");
                Log.i("JsonBeaconRequest", "hitBeacon");
                c3254y6.f();
                C3180tc retryPolicy = new C3180tc(c3254y6.f25453z.getMaxRetries(), c3254y6.f25453z.getRetryInterval());
                Intrinsics.checkNotNullParameter(retryPolicy, "retryPolicy");
                c3254y6.f23907w = retryPolicy;
                c3254y6.a(new C3238x6(onBeaconHit));
            }
        }
        c2912d0.f24568c.set(true);
        return Unit.f60915a;
    }
}
