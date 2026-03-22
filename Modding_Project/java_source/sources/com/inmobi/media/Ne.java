package com.inmobi.media;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Ne implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f23919a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable r10) {
        Intrinsics.checkNotNullParameter(r10, "r");
        return new Thread(r10, "VastNetworkTask #" + this.f23919a.getAndIncrement());
    }
}
