package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.w4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3220w4 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3220w4 f25387a = new C3220w4();

    public C3220w4() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i10 = AbstractC3268z4.f25479a;
        return new ScheduledThreadPoolExecutor(5, new K5("ExecutorProvider.high"));
    }
}
