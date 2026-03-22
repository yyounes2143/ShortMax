package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Od extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final Od f23953a = new Od();

    public Od() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4;
        C2914d2 it = (C2914d2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i10 = it.f24572a;
        C3060m3 c3060m3 = null;
        C2913d1 c2913d1 = null;
        mf mfVar = null;
        if (i10 != 1 && i10 != 2) {
            switch (i10) {
                case 150:
                    Xd xd2 = Pd.f23996i;
                    if (xd2 != null) {
                        Map map = it.f24574c;
                        if (map != null) {
                            obj2 = map.get("data");
                        } else {
                            obj2 = null;
                        }
                        if (obj2 instanceof C3060m3) {
                            c3060m3 = (C3060m3) obj2;
                        }
                        xd2.a("CrashEventOccurred", c3060m3);
                        break;
                    }
                    break;
                case 151:
                    Xd xd3 = Pd.f23996i;
                    if (xd3 != null) {
                        Map map2 = it.f24574c;
                        if (map2 != null) {
                            obj3 = map2.get("data");
                        } else {
                            obj3 = null;
                        }
                        if (obj3 instanceof mf) {
                            mfVar = (mf) obj3;
                        }
                        if (mfVar != null && Ie.a(mfVar) && !L3.f23796a.z()) {
                            xd3.a("MainThreadBlockedEvent", mfVar);
                            break;
                        }
                    }
                    break;
                case 152:
                    Xd xd4 = Pd.f23996i;
                    if (xd4 != null) {
                        Map map3 = it.f24574c;
                        if (map3 != null) {
                            obj4 = map3.get("data");
                        } else {
                            obj4 = null;
                        }
                        if (obj4 instanceof C2913d1) {
                            c2913d1 = (C2913d1) obj4;
                        }
                        xd4.a(c2913d1);
                        break;
                    }
                    break;
                default:
                    Pd pd2 = Pd.f23988a;
                    break;
            }
        } else {
            Pd.f23991d.set(false);
            C3172t4 c3172t4 = Pd.f23993f;
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
            Pd.f23993f = null;
            Pd.f23996i = null;
            Uc.f().a(Pd.f23995h);
        }
        return Unit.f60915a;
    }
}
