package ab;

import android.content.Context;
import com.huawei.hms.framework.common.ExceptionCode;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.common.hianalytics.HianalyticsHelper;
import com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public class e {

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f362a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f363b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ JSONArray f364c;

        a(long j10, ArrayList arrayList, JSONArray jSONArray) {
            this.f362a = j10;
            this.f363b = arrayList;
            this.f364c = jSONArray;
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x0018  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r4 = this;
                cb.a r0 = new cb.a
                r0.<init>()
                long r1 = r4.f362a
                java.lang.String r3 = "total_time"
                r0.put(r3, r1)
                java.util.ArrayList r1 = r4.f363b
                java.util.Iterator r1 = r1.iterator()
            L12:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L35
                java.lang.Object r2 = r1.next()
                ab.d r2 = (ab.d) r2
                boolean r3 = r2.D()
                if (r3 != 0) goto L2a
                boolean r3 = r2.B()
                if (r3 == 0) goto L12
            L2a:
                java.util.LinkedHashMap r2 = ab.e.a(r2)
                r0.put(r2)
                r1.remove()
                goto L57
            L35:
                java.util.ArrayList r1 = r4.f363b
                int r1 = r1.size()
                if (r1 <= 0) goto L57
                java.util.ArrayList r1 = r4.f363b
                int r2 = r1.size()
                int r2 = r2 + (-1)
                java.lang.Object r1 = r1.get(r2)
                ab.d r1 = (ab.d) r1
                java.util.LinkedHashMap r2 = ab.e.a(r1)
                r0.put(r2)
                java.util.ArrayList r2 = r4.f363b
                r2.remove(r1)
            L57:
                java.util.ArrayList r1 = r4.f363b
                int r1 = r1.size()
                if (r1 <= 0) goto L80
                java.util.ArrayList r1 = r4.f363b
                java.util.Iterator r1 = r1.iterator()
            L65:
                boolean r2 = r1.hasNext()
                if (r2 == 0) goto L80
                java.lang.Object r2 = r1.next()
                ab.d r2 = (ab.d) r2
                org.json.JSONObject r3 = new org.json.JSONObject
                java.util.LinkedHashMap r2 = ab.e.a(r2)
                r3.<init>(r2)
                org.json.JSONArray r2 = r4.f364c
                r2.put(r3)
                goto L65
            L80:
                org.json.JSONArray r1 = r4.f364c
                int r1 = r1.length()
                if (r1 <= 0) goto L93
                org.json.JSONArray r1 = r4.f364c
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = "failed_info"
                r0.put(r2, r1)
            L93:
                org.json.JSONObject r1 = new org.json.JSONObject
                java.util.LinkedHashMap r2 = r0.get()
                r1.<init>(r2)
                java.lang.Object[] r1 = new java.lang.Object[]{r1}
                java.lang.String r2 = "HaReportHelper"
                java.lang.String r3 = "grssdk report data to aiops is: %s"
                com.huawei.hms.framework.common.Logger.d(r2, r3, r1)
                com.huawei.hms.framework.common.hianalytics.HianalyticsHelper r1 = com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.getInstance()
                java.util.LinkedHashMap r0 = r0.get()
                java.lang.String r2 = "grs_request"
                r1.onEvent(r0, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ab.e.a.run():void");
        }
    }

    public static void b(ArrayList<d> arrayList, long j10, JSONArray jSONArray, Context context) {
        if (context != null && arrayList != null && arrayList.size() > 0 && HianalyticsHelper.getInstance().isEnableReport(context)) {
            HianalyticsHelper.getInstance().getReportExecutor().submit(new a(j10, arrayList, jSONArray));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LinkedHashMap<String, String> c(d dVar) {
        LinkedHashMapPack linkedHashMapPack = new LinkedHashMapPack();
        Exception p10 = dVar.p();
        if (p10 != null) {
            linkedHashMapPack.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, ExceptionCode.getErrorCodeFromException(p10));
            linkedHashMapPack.put(CrashHianalyticsData.EXCEPTION_NAME, p10.getClass().getSimpleName());
            linkedHashMapPack.put("message", StringUtils.anonymizeMessage(p10.getMessage()));
        } else {
            linkedHashMapPack.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, dVar.f());
            linkedHashMapPack.put(CrashHianalyticsData.EXCEPTION_NAME, dVar.k());
        }
        try {
            linkedHashMapPack.put("domain", new URL(dVar.A()).getHost());
        } catch (MalformedURLException e10) {
            Logger.w("HaReportHelper", "report host MalformedURLException", e10);
        }
        linkedHashMapPack.put("req_start_time", dVar.w());
        linkedHashMapPack.put("req_end_time", dVar.v());
        linkedHashMapPack.put("req_total_time", dVar.x());
        return linkedHashMapPack.getAll();
    }
}
