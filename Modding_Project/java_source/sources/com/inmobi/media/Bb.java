package com.inmobi.media;

import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Bb extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final Bb f23516a = new Bb();

    public Bb() {
        super(1);
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
                        T5 incident = (T5) obj2;
                        EnumC2868a7 enumC2868a7 = Cb.f23540a;
                        Intrinsics.checkNotNullParameter(incident, "incident");
                        if (!(incident instanceof C3060m3) && !(incident instanceof mf)) {
                            if (Cb.f23544e.getANRConfig().getAppExitReason().getReportToLogs() && (incident instanceof C2913d1)) {
                                new C2867a6(Cb.f23544e.getANRConfig().getAppExitReason().getIncompleteLogThresholdTime()).a(incident.f24238a, incident.a(), ((C2913d1) incident).f24570g, incident.f24239b);
                                break;
                            }
                        } else {
                            Iterator it2 = D5.a().iterator();
                            while (it2.hasNext()) {
                                Fc fc2 = (Fc) it2.next();
                                EnumC2868a7 logLevel = EnumC2868a7.f24482c;
                                String message = "TYPE - " + incident.f24238a + ", TIMESTAMP - " + incident.f24239b + ", PAYLOAD - " + incident.a();
                                fc2.getClass();
                                Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                                Intrinsics.checkNotNullParameter("LOGGER CRASH", ITTVideoEngineEventSource.KEY_TAG);
                                Intrinsics.checkNotNullParameter(message, "message");
                                fc2.f23661a.a(logLevel, "LOGGER CRASH", message);
                                if (incident instanceof C3060m3) {
                                    fc2.f23661a.b();
                                }
                            }
                            break;
                        }
                    }
                    break;
            }
        } else {
            EnumC2868a7 enumC2868a72 = Cb.f23540a;
            Iterator it3 = D5.a().iterator();
            while (it3.hasNext()) {
                Fc fc3 = (Fc) it3.next();
                EnumC2868a7 logLevel2 = EnumC2868a7.f24482c;
                String message2 = "SYSTEM SHUTDOWN RECEIVED - " + i10;
                fc3.getClass();
                Intrinsics.checkNotNullParameter(logLevel2, "logLevel");
                Intrinsics.checkNotNullParameter("LOGGER CRASH", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter(message2, "message");
                fc3.f23661a.a(logLevel2, "LOGGER CRASH", message2);
                fc3.f23661a.b();
            }
            AtomicBoolean atomicBoolean = Cb.f23542c;
            atomicBoolean.set(false);
            H7 f10 = Uc.f();
            Bb bb2 = Cb.f23546g;
            f10.a(bb2);
            Cb.f23541b = null;
            atomicBoolean.set(false);
            Uc.f().a(bb2);
            Cb.f23541b = null;
        }
        return Unit.f60915a;
    }
}
