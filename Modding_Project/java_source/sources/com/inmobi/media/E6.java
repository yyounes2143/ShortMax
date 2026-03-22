package com.inmobi.media;

import com.inmobi.commons.core.configs.CrashConfig;
import com.inmobi.media.E6;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class E6 implements InterfaceC3210va {

    /* renamed from: a  reason: collision with root package name */
    public CrashConfig f23617a;

    /* renamed from: b  reason: collision with root package name */
    public C3172t4 f23618b;

    /* renamed from: c  reason: collision with root package name */
    public final U5 f23619c;

    /* renamed from: d  reason: collision with root package name */
    public final D6 f23620d;

    public E6(CrashConfig crashConfig) {
        Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
        this.f23617a = crashConfig;
        this.f23619c = new U5(crashConfig);
        this.f23620d = new D6(this);
    }

    public final void a(T5 t52) {
        R5 c10 = Nc.c();
        long eventTTL = this.f23617a.getEventTTL();
        c10.getClass();
        c10.a("ts<?", new String[]{String.valueOf(System.currentTimeMillis() - (eventTTL * 1000))});
        Intrinsics.checkNotNullExpressionValue("r4", "TAG");
        R5 c11 = Nc.c();
        c11.getClass();
        int a10 = (T1.a(c11, null, null, 63) + 1) - this.f23617a.getMaxEventsToPersist();
        if (a10 > 0) {
            Nc.c().a(a10);
        }
        Nc.c().a(t52);
    }

    public final void b(T5 incident) {
        Intrinsics.checkNotNullParameter(incident, "incident");
        if (Ie.a(incident)) {
            CrashConfig.ANRConfig aNRConfig = this.f23617a.getANRConfig();
            if ((incident instanceof C2913d1) && L3.f23796a.z() && aNRConfig.getAppExitReason().getUseForReporting() && this.f23619c.f24257d.a()) {
                Intrinsics.checkNotNullParameter("ANREvent", "<set-?>");
                incident.f24238a = "ANREvent";
                a(incident);
            } else if ((incident instanceof mf) && aNRConfig.getWatchdog().getUseForReporting() && this.f23619c.f24256c.a()) {
                a(incident);
            } else if (!(incident instanceof C3060m3)) {
                return;
            } else {
                if (this.f23617a.getCrashConfig().getEnabled() && this.f23619c.f24254a.a()) {
                    a(incident);
                }
            }
            Runnable runnable = new Runnable() { // from class: ub.a0
                @Override // java.lang.Runnable
                public final void run() {
                    E6.b(E6.this);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            Ie.f23745a.execute(runnable);
        }
    }

    public final void c() {
        Runnable runnable = new Runnable() { // from class: ub.c0
            @Override // java.lang.Runnable
            public final void run() {
                E6.a(E6.this);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Ie.f23745a.execute(runnable);
        Uc.f().a(new int[]{2, 1, 152, 150, 151}, this.f23620d);
    }

    public static final void a(E6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f23618b = new C3172t4(Nc.c(), this$0, this$0.f23617a.getEventConfig(), null);
        R5 c10 = Nc.c();
        c10.getClass();
        if (T1.a(c10, null, null, 63) > 0) {
            this$0.b();
        }
    }

    public final void a(final C2947f2 incident) {
        Intrinsics.checkNotNullParameter(incident, "incident");
        if (this.f23617a.getCatchConfig().getEnabled() && this.f23619c.f24255b.a()) {
            Runnable runnable = new Runnable() { // from class: ub.b0
                @Override // java.lang.Runnable
                public final void run() {
                    E6.a(E6.this, incident);
                }
            };
            ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            Ie.f23745a.execute(runnable);
        }
    }

    public static final void a(E6 this$0, C2947f2 incident) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(incident, "$incident");
        this$0.a((T5) incident);
        this$0.b();
    }

    public static final void b(E6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b();
    }

    @Override // com.inmobi.media.InterfaceC3210va
    public final C3156s4 a() {
        int a10;
        String str;
        int p10 = L3.f23796a.p();
        int i10 = 1;
        if (p10 == 0) {
            a10 = this.f23617a.getMobileConfig().a();
        } else if (p10 != 1) {
            a10 = this.f23617a.getMobileConfig().a();
        } else {
            a10 = this.f23617a.getWifiConfig().a();
        }
        ArrayList b10 = Nc.c().b(a10);
        if (b10.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = b10.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((T5) it.next()).f24240c));
        }
        try {
            HashMap hashMap = new HashMap(L3.f23796a.a(false));
            hashMap.put("im-accid", Uc.b());
            hashMap.put("version", "2.0.0");
            hashMap.put("component", "crash");
            hashMap.put("mk-version", Vc.a());
            hashMap.putAll(C2930e1.f24620e);
            hashMap.put("tp", Vc.d());
            String f10 = Vc.f();
            if (f10 == null) {
                f10 = "";
            }
            hashMap.put("tpVer", f10);
            JSONObject jSONObject = new JSONObject(hashMap);
            JSONArray jSONArray = new JSONArray();
            Iterator it2 = b10.iterator();
            while (it2.hasNext()) {
                T5 t52 = (T5) it2.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("eventId", t52.f24174e);
                jSONObject2.put("eventType", t52.f24238a);
                String a11 = t52.a();
                int length = a11.length() - i10;
                int i11 = 0;
                boolean z10 = false;
                while (i11 <= length) {
                    boolean z11 = Intrinsics.compare((int) a11.charAt(!z10 ? i11 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        }
                        length--;
                    } else if (z11) {
                        i11++;
                    } else {
                        z10 = true;
                    }
                }
                if (a11.subSequence(i11, length + 1).toString().length() > 0) {
                    jSONObject2.put("crash_report", t52.a());
                }
                jSONObject2.put(CampaignEx.JSON_KEY_ST_TS, t52.f24239b);
                jSONArray.put(jSONObject2);
                i10 = 1;
            }
            jSONObject.put("crash", jSONArray);
            str = jSONObject.toString();
        } catch (JSONException unused) {
            str = null;
        }
        if (str != null) {
            return new C3156s4(arrayList, str);
        }
        return null;
    }

    public final void b() {
        Unit unit;
        C3125q4 eventConfig = this.f23617a.getEventConfig();
        eventConfig.f25189k = this.f23617a.getUrl();
        C3172t4 c3172t4 = this.f23618b;
        if (c3172t4 != null) {
            Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
            c3172t4.f25302i = eventConfig;
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            this.f23618b = new C3172t4(Nc.c(), this, eventConfig, null);
        }
        C3172t4 c3172t42 = this.f23618b;
        if (c3172t42 != null) {
            C3125q4 c3125q4 = c3172t42.f25302i;
            if (c3172t42.f25299f.get() || c3125q4 == null) {
                return;
            }
            c3172t42.a(c3125q4.f25181c, false);
        }
    }
}
