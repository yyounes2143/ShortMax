package hb;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class k implements u {

    /* renamed from: a  reason: collision with root package name */
    private String f52711a;

    /* renamed from: b  reason: collision with root package name */
    private String f52712b;

    /* renamed from: c  reason: collision with root package name */
    private String f52713c;

    /* renamed from: d  reason: collision with root package name */
    private List<f> f52714d;

    public k(List<f> list, String str, String str2, String str3) {
        this.f52711a = str;
        this.f52712b = str2;
        this.f52713c = str3;
        this.f52714d = list;
    }

    private void a() {
        l.d(v0.q(), "backup_event", o0.e(this.f52711a, this.f52713c, this.f52712b));
    }

    @Override // java.lang.Runnable
    public void run() {
        List<f> list = this.f52714d;
        if (list != null && list.size() != 0) {
            if (h.c(v0.q(), "cached_v2_1", v0.s() * 1048576)) {
                f1.l("hmsSdk", "The cacheFile is full,Can not writing data! reqID:" + this.f52712b);
                return;
            }
            String d10 = o0.d(this.f52711a, this.f52713c);
            List<f> list2 = i.f(v0.q(), "cached_v2_1", d10).get(d10);
            if (list2 != null && list2.size() != 0) {
                this.f52714d.addAll(list2);
            }
            JSONArray jSONArray = new JSONArray();
            for (f fVar : this.f52714d) {
                try {
                    jSONArray.put(fVar.h());
                } catch (JSONException unused) {
                    f1.l("hmsSdk", "event to json error");
                }
            }
            String jSONArray2 = jSONArray.toString();
            if (jSONArray2.length() > v0.o() * 1048576) {
                f1.l("hmsSdk", "this failed data is too long,can not writing it");
                this.f52714d = null;
                return;
            }
            f1.j("hmsSdk", "data send failed, write to cache file...reqID:" + this.f52712b);
            l.g(v0.q(), "cached_v2_1", d10, jSONArray2);
            a();
            return;
        }
        f1.j("hmsSdk", "failed events is empty");
    }
}
