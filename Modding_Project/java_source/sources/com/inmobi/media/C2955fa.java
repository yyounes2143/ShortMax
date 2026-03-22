package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dispatcher;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
/* renamed from: com.inmobi.media.fa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2955fa implements Ja {

    /* renamed from: a  reason: collision with root package name */
    public final G5 f24743a;

    public C2955fa(AdConfig.PingsV2Config pingsConfig) {
        Intrinsics.checkNotNullParameter(pingsConfig, "pingsConfig");
        Dispatcher dispatcher = new Dispatcher();
        dispatcher.l(pingsConfig.getMaxBatchSize().getHigh());
        Unit unit = Unit.f60915a;
        C2991he timeoutConfig = new C2991he(pingsConfig.getConnectTimeout(), pingsConfig.getReadTimeout(), pingsConfig.getCallTimeout());
        Interceptor[] interceptors = new Interceptor[0];
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(timeoutConfig, "timeoutConfig");
        this.f24743a = new G5(interceptors, dispatcher, timeoutConfig);
    }

    @Override // com.inmobi.media.Ja
    public final Object a(C3274za ping) {
        Intrinsics.checkNotNullParameter(ping, "ping");
        HashMap hashMap = new HashMap(ping.f25506c);
        hashMap.put("user-agent", Uc.k());
        L9 request = new L9(ping.f25504a, hashMap, ping.f25507d);
        G5 g52 = this.f24743a;
        g52.getClass();
        Intrinsics.checkNotNullParameter(request, "request");
        C2898c3 c2898c3 = g52.f23677a;
        c2898c3.getClass();
        Intrinsics.checkNotNullParameter(request, "request");
        OkHttpClient okHttpClient = c2898c3.f24540a;
        Request.Builder k10 = new Request.Builder().k(request.f23813a);
        for (Map.Entry entry : hashMap.entrySet()) {
            k10.a((String) entry.getKey(), (String) entry.getValue());
        }
        k10.d();
        Pair pair = new Pair(k10.b(), null);
        Request request2 = (Request) pair.b();
        C3109p4 c3109p4 = (C3109p4) pair.d();
        if (c3109p4 == null) {
            return c2898c3.a(okHttpClient, request2, request.f23813a);
        }
        return c3109p4;
    }
}
