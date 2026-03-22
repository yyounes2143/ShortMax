package com.inmobi.media;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.wc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3228wc {

    /* renamed from: a  reason: collision with root package name */
    public static final Set f25391a;

    static {
        Intrinsics.checkNotNullExpressionValue(AbstractC3228wc.class.getSimpleName(), "getSimpleName(...)");
        Set newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(newSetFromMap, "newSetFromMap(...)");
        f25391a = newSetFromMap;
    }

    public static void a(C3196uc c3196uc, long j10) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        int ordinal = c3196uc.f25338f.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3268z4.f25480b.getValue();
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue();
        }
        scheduledThreadPoolExecutor.schedule(new RunnableC3244xc(c3196uc, C3212vc.f25376a), j10, TimeUnit.MILLISECONDS);
    }
}
