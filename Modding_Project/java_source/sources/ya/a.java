package ya;

import ab.d;
import ab.g;
import android.content.Context;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.Command;
import db.e;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static final String f70755e = "a";

    /* renamed from: f  reason: collision with root package name */
    private static final Map<String, Map<String, Map<String, String>>> f70756f = new ConcurrentHashMap(16);

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Long> f70757a = new ConcurrentHashMap(16);

    /* renamed from: b  reason: collision with root package name */
    private final c f70758b;

    /* renamed from: c  reason: collision with root package name */
    private final c f70759c;

    /* renamed from: d  reason: collision with root package name */
    private final g f70760d;

    public a(c cVar, c cVar2, g gVar) {
        this.f70759c = cVar2;
        this.f70758b = cVar;
        this.f70760d = gVar;
        gVar.h(this);
    }

    private void e(GrsBaseInfo grsBaseInfo, String str, Context context) {
        if (e.b(this.f70757a.get(str), PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)) {
            this.f70760d.f(new cb.c(grsBaseInfo, context), null, null, this.f70759c, -1);
        }
    }

    private void f(GrsBaseInfo grsBaseInfo, b bVar, Context context, String str) {
        Long l10 = this.f70757a.get(grsBaseInfo.getGrsParasKey(true, true, context));
        if (e.a(l10)) {
            bVar.a(2);
            return;
        }
        if (e.b(l10, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS)) {
            this.f70760d.f(new cb.c(grsBaseInfo, context), null, str, this.f70759c, -1);
        }
        bVar.a(1);
    }

    public Map<String, String> a(GrsBaseInfo grsBaseInfo, String str, b bVar, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        Map<String, Map<String, Map<String, String>>> map = f70756f;
        Map<String, Map<String, String>> map2 = map.get(grsParasKey);
        if (map2 != null && !map2.isEmpty()) {
            f(grsBaseInfo, bVar, context, str);
            return map2.get(str);
        }
        String str2 = f70755e;
        Logger.i(str2, "Cache size is: " + map.size());
        return new HashMap();
    }

    public c b() {
        return this.f70758b;
    }

    public void c(GrsBaseInfo grsBaseInfo, d dVar, Context context, cb.c cVar) {
        if (dVar.t() == 2) {
            Logger.w(f70755e, "update cache from server failed");
            return;
        }
        if (cVar.e().size() == 0) {
            String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
            if (dVar.B()) {
                f70756f.put(grsParasKey, xa.a.e(this.f70758b.a(grsParasKey, "")));
            } else {
                this.f70758b.f(grsParasKey, dVar.y());
                f70756f.put(grsParasKey, xa.a.e(dVar.y()));
            }
            if (!TextUtils.isEmpty(dVar.r())) {
                c cVar2 = this.f70758b;
                cVar2.f(grsParasKey + Command.HTTP_HEADER_ETAG, dVar.r());
            }
            c cVar3 = this.f70758b;
            cVar3.f(grsParasKey + CrashHianalyticsData.TIME, dVar.a());
            this.f70757a.put(grsParasKey, Long.valueOf(Long.parseLong(dVar.a())));
        } else {
            this.f70758b.f("geoipCountryCode", dVar.y());
            this.f70758b.f("geoipCountryCodetime", dVar.a());
        }
        String str = f70755e;
        Logger.i(str, "Cache size is: " + f70756f.size());
    }

    public void d(GrsBaseInfo grsBaseInfo, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        c cVar = this.f70758b;
        cVar.f(grsParasKey + CrashHianalyticsData.TIME, MBridgeConstans.ENDCARD_URL_TYPE_PL);
        Map<String, Long> map = this.f70757a;
        map.remove(grsParasKey + CrashHianalyticsData.TIME);
        Map<String, Map<String, Map<String, String>>> map2 = f70756f;
        map2.remove(grsParasKey);
        String str = f70755e;
        Logger.i(str, "Cache size is: " + map2.size());
        this.f70760d.g(grsParasKey);
    }

    public g g() {
        return this.f70760d;
    }

    public void h(GrsBaseInfo grsBaseInfo, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        String a10 = this.f70758b.a(grsParasKey, "");
        c cVar = this.f70758b;
        String a11 = cVar.a(grsParasKey + CrashHianalyticsData.TIME, MBridgeConstans.ENDCARD_URL_TYPE_PL);
        long j10 = 0;
        if (!TextUtils.isEmpty(a11) && a11.matches("\\d+")) {
            try {
                j10 = Long.parseLong(a11);
            } catch (NumberFormatException e10) {
                Logger.w(f70755e, "convert urlParamKey from String to Long catch NumberFormatException.", e10);
            }
        }
        Map<String, Map<String, Map<String, String>>> map = f70756f;
        map.put(grsParasKey, xa.a.e(a10));
        String str = f70755e;
        Logger.i(str, "Cache size is: " + map.size());
        this.f70757a.put(grsParasKey, Long.valueOf(j10));
        e(grsBaseInfo, grsParasKey, context);
    }

    public c i() {
        return this.f70759c;
    }
}
