package hb;

import android.text.TextUtils;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes5.dex */
public class d1 {

    /* renamed from: a  reason: collision with root package name */
    private List<f> f52657a;

    /* renamed from: b  reason: collision with root package name */
    private String f52658b;

    /* renamed from: c  reason: collision with root package name */
    private String f52659c;

    /* renamed from: d  reason: collision with root package name */
    private String f52660d;

    public d1(List<f> list, String str, String str2, String str3) {
        this.f52657a = list;
        this.f52658b = str;
        this.f52659c = str2;
        this.f52660d = str3;
    }

    private void b(List<f> list, String str, String str2) {
        if (list.isEmpty()) {
            return;
        }
        int size = (list.size() / 500) + 1;
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = i10 * 500;
            List<f> subList = list.subList(i11, Math.min(list.size(), i11 + 500));
            String replace = UUID.randomUUID().toString().replace("-", "");
            long currentTimeMillis = System.currentTimeMillis();
            long c10 = c.c(str2, str) * SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            ArrayList arrayList = new ArrayList();
            for (f fVar : subList) {
                if (!h.d(fVar.d(), currentTimeMillis, c10)) {
                    arrayList.add(fVar);
                }
            }
            if (arrayList.size() > 0) {
                new h0(str2, str, this.f52660d, arrayList, replace).b();
            } else {
                f1.l("hmsSdk", "No data to report handler");
            }
        }
    }

    public void a() {
        if ("_default_config_tag".equals(this.f52659c)) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (f fVar : this.f52657a) {
                String f10 = fVar.f();
                if (!TextUtils.isEmpty(f10) && !"oper".equals(f10)) {
                    if ("maint".equals(f10)) {
                        arrayList.add(fVar);
                    } else if ("preins".equals(f10)) {
                        arrayList2.add(fVar);
                    } else if ("diffprivacy".equals(f10)) {
                        arrayList3.add(fVar);
                    }
                } else {
                    arrayList4.add(fVar);
                }
            }
            b(arrayList4, "oper", "_default_config_tag");
            b(arrayList, "maint", "_default_config_tag");
            b(arrayList2, "preins", "_default_config_tag");
            b(arrayList3, "diffprivacy", "_default_config_tag");
            return;
        }
        b(this.f52657a, this.f52659c, this.f52658b);
    }
}
