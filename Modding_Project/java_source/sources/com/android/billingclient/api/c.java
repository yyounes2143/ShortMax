package com.android.billingclient.api;

import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class c implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f6619a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f6620b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        Objects.requireNonNull(bVar);
        this.f6619a = Executors.defaultThreadFactory();
        this.f6620b = new AtomicInteger(1);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f6620b;
        Thread newThread = this.f6619a.newThread(runnable);
        int andIncrement = atomicInteger.getAndIncrement();
        newThread.setName("PlayBillingLibrary-" + andIncrement);
        return newThread;
    }
}
