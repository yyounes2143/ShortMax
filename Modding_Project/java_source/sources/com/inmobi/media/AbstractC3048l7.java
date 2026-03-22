package com.inmobi.media;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.l7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3048l7 {

    /* renamed from: a  reason: collision with root package name */
    public static final ScheduledExecutorService f24958a;

    /* renamed from: b  reason: collision with root package name */
    public static final ExecutorService f24959b;

    /* renamed from: c  reason: collision with root package name */
    public static final Semaphore f24960c;

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicBoolean f24961d;

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(5, new K5("Log", true));
        Intrinsics.checkNotNullExpressionValue(newScheduledThreadPool, "newScheduledThreadPool(...)");
        f24958a = newScheduledThreadPool;
        f24959b = Executors.newSingleThreadExecutor(new K5("LogSingle", true));
        f24960c = new Semaphore(1);
        f24961d = new AtomicBoolean(false);
    }
}
