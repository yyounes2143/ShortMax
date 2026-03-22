package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dispatcher;
import okhttp3.Interceptor;
/* loaded from: classes5.dex */
public final class G5 {

    /* renamed from: a  reason: collision with root package name */
    public final C2898c3 f23677a;

    public G5(Interceptor[] interceptors, Dispatcher dispatcher, C2991he timeoutConfig) {
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(timeoutConfig, "timeoutConfig");
        this.f23677a = new C2898c3(interceptors, dispatcher, timeoutConfig);
    }
}
