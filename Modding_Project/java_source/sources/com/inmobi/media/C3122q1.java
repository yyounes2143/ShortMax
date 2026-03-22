package com.inmobi.media;

import android.os.SystemClock;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.q1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3122q1 implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f25167a;

    /* renamed from: b  reason: collision with root package name */
    public final String f25168b;

    /* renamed from: c  reason: collision with root package name */
    public final long f25169c;

    /* renamed from: d  reason: collision with root package name */
    public final String f25170d;

    public C3122q1(CountDownLatch countDownLatch, String remoteUrl, long j10, String assetAdType) {
        Intrinsics.checkNotNullParameter(countDownLatch, "countDownLatch");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        Intrinsics.checkNotNullParameter(assetAdType, "assetAdType");
        this.f25167a = countDownLatch;
        this.f25168b = remoteUrl;
        this.f25169c = j10;
        this.f25170d = assetAdType;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object proxy, Method method, Object[] args) {
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(args, "args");
        C3169t1 c3169t1 = C3169t1.f25278a;
        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
        Objects.toString(method);
        if (method != null) {
            if (StringsKt.G("onSuccess", method.getName(), true)) {
                HashMap k10 = kotlin.collections.p0.k(ms.k.a("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f25169c)), ms.k.a("size", 0), ms.k.a("assetType", "image"), ms.k.a("networkType", L3.q()), ms.k.a("adType", this.f25170d));
                Pd pd2 = Pd.f23988a;
                Pd.b("AssetDownloaded", k10, Td.f24224a);
                C3169t1.f25278a.d(this.f25168b);
                this.f25167a.countDown();
                return null;
            } else if (StringsKt.G("onError", method.getName(), true)) {
                C3169t1.f25278a.c(this.f25168b);
                this.f25167a.countDown();
                return null;
            } else {
                return null;
            }
        }
        return null;
    }
}
