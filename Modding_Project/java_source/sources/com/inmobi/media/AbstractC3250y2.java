package com.inmobi.media;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3250y2 {

    /* renamed from: a  reason: collision with root package name */
    public static final Ua f25446a;

    static {
        int i10 = Ua.f24265a;
        K5 threadFactory = new K5("ClickManagerExecutor", true);
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
        Ua ua2 = new Ua(TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), threadFactory);
        Intrinsics.checkNotNull(ua2, "null cannot be cast to non-null type com.inmobi.commons.sdk.PriorityExecutor");
        f25446a = ua2;
    }

    public static void a(Runnable runnable, Ta ta2) {
        try {
            Ua ua2 = f25446a;
            ua2.getClass();
            Intrinsics.checkNotNull(ta2);
            ua2.execute(new E2(runnable, ta2));
        } catch (RejectedExecutionException unused) {
        }
    }
}
