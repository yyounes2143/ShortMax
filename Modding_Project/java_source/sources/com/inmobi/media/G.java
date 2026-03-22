package com.inmobi.media;

import java.util.concurrent.ScheduledFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class G extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ I f23667a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G(I i10) {
        super(0);
        this.f23667a = i10;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ScheduledFuture scheduledFuture = this.f23667a.f23717k;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        Df df2 = this.f23667a.f23718l;
        if (df2 != null) {
            df2.a();
        }
        I i10 = this.f23667a;
        i10.f23718l = null;
        i10.f23717k = null;
        i10.a(new A4(0.0f, null, null));
        return Unit.f60915a;
    }
}
