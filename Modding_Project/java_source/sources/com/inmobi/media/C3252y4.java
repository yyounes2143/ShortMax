package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.y4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3252y4 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3252y4 f25449a = new C3252y4();

    public C3252y4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new ScheduledThreadPoolExecutor(AbstractC3268z4.f25479a, new K5("ExecutorProvider.normal"));
    }
}
