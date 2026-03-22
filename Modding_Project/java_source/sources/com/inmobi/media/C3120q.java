package com.inmobi.media;

import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.q  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3120q extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ long f25166a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3120q(long j10) {
        super(1);
        this.f25166a = j10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2914d2 it = (C2914d2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i10 = it.f24572a;
        if (i10 != 101) {
            if (i10 == 102) {
                ScheduledFuture scheduledFuture = C3151s.f25259f;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                C3151s.f25259f = null;
            }
        } else if (C3151s.f25259f == null && C3151s.f25257d.get()) {
            C3151s.a(this.f25166a);
        }
        return Unit.f60915a;
    }
}
