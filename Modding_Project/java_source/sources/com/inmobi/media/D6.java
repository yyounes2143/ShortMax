package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class D6 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ E6 f23565a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D6(E6 e62) {
        super(1);
        this.f23565a = e62;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2914d2 it = (C2914d2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i10 = it.f24572a;
        if (i10 != 1 && i10 != 2) {
            switch (i10) {
                case 150:
                case 151:
                case 152:
                    Map map = it.f24574c;
                    if (map != null && map.containsKey("data")) {
                        Object obj2 = it.f24574c.get("data");
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent");
                        this.f23565a.b((T5) obj2);
                        break;
                    }
                    break;
            }
        } else {
            E6 e62 = this.f23565a;
            C3172t4 c3172t4 = e62.f23618b;
            if (c3172t4 != null) {
                ScheduledExecutorService scheduledExecutorService = c3172t4.f25301h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c3172t4.f25301h = null;
                c3172t4.f25298e.set(false);
                c3172t4.f25299f.set(true);
                c3172t4.f25300g.clear();
                c3172t4.f25302i = null;
            }
            e62.f23618b = null;
            Uc.f().a(e62.f23620d);
        }
        return Unit.f60915a;
    }
}
