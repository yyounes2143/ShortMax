package hb;

import android.content.Context;
import android.util.Pair;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class e1 implements u {

    /* renamed from: a  reason: collision with root package name */
    private Context f52671a = v0.q();

    /* renamed from: b  reason: collision with root package name */
    private String f52672b;

    /* renamed from: c  reason: collision with root package name */
    private String f52673c;

    /* renamed from: d  reason: collision with root package name */
    private String f52674d;

    public e1(String str, String str2, String str3) {
        this.f52672b = str;
        this.f52673c = str2;
        this.f52674d = str3;
    }

    private void a(String str, List<f> list) {
        Pair<String, String> b10 = o0.b(str);
        new d1(list, (String) b10.first, (String) b10.second, this.f52674d).a();
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, List<f>> b10;
        f1.h("hmsSdk", "eventReportTask is running");
        boolean a10 = h.a(this.f52671a);
        if (a10) {
            f1.h("hmsSdk", "workKey is refresh,begin report all data");
            this.f52673c = "alltype";
        }
        try {
            try {
                b10 = i.b(this.f52671a, this.f52672b, this.f52673c);
            } catch (IllegalArgumentException e10) {
                f1.l("hmsSdk", "readEventRecords handData IllegalArgumentException:" + e10.getMessage());
                if ("alltype".equals(this.f52673c)) {
                    l.d(this.f52671a, "stat_v2_1", new String[0]);
                    l.d(this.f52671a, "cached_v2_1", new String[0]);
                } else {
                    String d10 = o0.d(this.f52672b, this.f52673c);
                    l.d(this.f52671a, "stat_v2_1", d10);
                    l.d(this.f52671a, "cached_v2_1", d10);
                }
            } catch (Exception e11) {
                f1.l("hmsSdk", "readEventRecords handData Exception:" + e11.getMessage());
                if ("alltype".equals(this.f52673c)) {
                    l.d(this.f52671a, "stat_v2_1", new String[0]);
                    l.d(this.f52671a, "cached_v2_1", new String[0]);
                } else {
                    String d11 = o0.d(this.f52672b, this.f52673c);
                    l.d(this.f52671a, "stat_v2_1", d11);
                    l.d(this.f52671a, "cached_v2_1", d11);
                }
            }
            if (b10.size() == 0) {
                f1.f("hmsSdk", "no have events to report: tag:%s : type:%s", this.f52672b, this.f52673c);
                if ("alltype".equals(this.f52673c)) {
                    l.d(this.f52671a, "stat_v2_1", new String[0]);
                    l.d(this.f52671a, "cached_v2_1", new String[0]);
                    return;
                }
                String d12 = o0.d(this.f52672b, this.f52673c);
                l.d(this.f52671a, "stat_v2_1", d12);
                l.d(this.f52671a, "cached_v2_1", d12);
                return;
            }
            for (Map.Entry<String, List<f>> entry : b10.entrySet()) {
                a(entry.getKey(), entry.getValue());
            }
            if ("alltype".equals(this.f52673c)) {
                l.d(this.f52671a, "stat_v2_1", new String[0]);
                l.d(this.f52671a, "cached_v2_1", new String[0]);
            } else {
                String d13 = o0.d(this.f52672b, this.f52673c);
                l.d(this.f52671a, "stat_v2_1", d13);
                l.d(this.f52671a, "cached_v2_1", d13);
            }
            if (a10) {
                f1.h("hmsSdk", "refresh local key");
                q0.g().d();
            }
        } catch (Throwable th2) {
            if ("alltype".equals(this.f52673c)) {
                l.d(this.f52671a, "stat_v2_1", new String[0]);
                l.d(this.f52671a, "cached_v2_1", new String[0]);
            } else {
                String d14 = o0.d(this.f52672b, this.f52673c);
                l.d(this.f52671a, "stat_v2_1", d14);
                l.d(this.f52671a, "cached_v2_1", d14);
            }
            throw th2;
        }
    }
}
