package com.mbridge.msdk.foundation.same.net.utils;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: RequestControlUtil.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f27144a;

    /* renamed from: b  reason: collision with root package name */
    private int f27145b;

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, b> f27146c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<Integer> f27147d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RequestControlUtil.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f27148a;

        /* renamed from: b  reason: collision with root package name */
        public String f27149b;

        /* renamed from: c  reason: collision with root package name */
        public long f27150c;

        public b(long j10, int i10, String str) {
            this.f27150c = j10;
            this.f27148a = i10;
            this.f27149b = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RequestControlUtil.java */
    /* renamed from: com.mbridge.msdk.foundation.same.net.utils.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0373c {

        /* renamed from: a  reason: collision with root package name */
        private static final c f27151a = new c();
    }

    private List<Integer> a() {
        return Arrays.asList(-1, -10, -1201, -1202, -1203, -1205, -1206, -1208, -1301, -1302, -1305, -1306, -1307, -1915, 10602, 10603, 10604, 10609, 10610, 10616);
    }

    public static c b() {
        return C0373c.f27151a;
    }

    private c() {
        this.f27144a = "IDErrorUtil";
        this.f27146c = new ConcurrentHashMap<>();
        this.f27147d = new ArrayList<>();
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        d10 = d10 == null ? h.b().a() : d10;
        this.f27145b = d10.t() * 1000;
        if (d10.x() == null || d10.x().size() <= 0) {
            p0.b("IDErrorUtil", "Setting ercd is EMPTY and use default code list.");
            this.f27147d.addAll(a());
            return;
        }
        p0.b("IDErrorUtil", "Setting ercd not EMPTY will use setting.");
        this.f27147d.addAll(d10.x());
    }

    public synchronized void a(String str, int i10, String str2, long j10) {
        if (this.f27146c.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.f27147d.contains(Integer.valueOf(i10))) {
            p0.b("IDErrorUtil", "addErrorInfo : " + str + " " + str2);
            this.f27146c.put(str, new b(j10, i10, str2));
        }
    }

    public e a(com.mbridge.msdk.foundation.same.net.wrapper.e eVar) {
        String str = eVar.a().get("app_id");
        String str2 = eVar.a().get("placement_id");
        String str3 = TextUtils.isEmpty(str2) ? "" : str2;
        String str4 = eVar.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
        if (TextUtils.isEmpty(str4)) {
            str4 = eVar.a().get("unit_ids");
            if (!TextUtils.isEmpty(str4)) {
                str4 = str4.replace("[", "").replace("]", "");
            }
        }
        String str5 = str4;
        String str6 = eVar.a().get("ad_type");
        if (TextUtils.isEmpty(str6)) {
            str6 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        return a(str, str5, str3, eVar.a().get(BidResponsed.KEY_TOKEN), str6);
    }

    private e a(String str, String str2, String str3, String str4, String str5) {
        int parseInt;
        String str6 = str + "_" + str3 + "_" + str2 + "_" + str5;
        b a10 = a(str6);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.mbridge.msdk.tracker.network.g("data_res_type", "1"));
        if (a10 != null && !TextUtils.isEmpty(a10.f27149b)) {
            try {
                if (a10.f27148a != -1) {
                    return e.a(new JSONObject(a10.f27149b), new com.mbridge.msdk.foundation.same.net.toolbox.a(200, a10.f27149b.getBytes(), arrayList));
                }
                if (!TextUtils.isEmpty(str4)) {
                    return null;
                }
                if (str5 != null && !TextUtils.isEmpty(str5) && (parseInt = Integer.parseInt(str5)) != 287 && parseInt != 94) {
                    if (System.currentTimeMillis() < (h.b().c(str, str2).u() * 1000) + a10.f27150c) {
                        return e.a(new JSONObject(a10.f27149b), new com.mbridge.msdk.foundation.same.net.toolbox.a(200, a10.f27149b.getBytes(), arrayList));
                    }
                    this.f27146c.remove(str6);
                    return null;
                }
            } catch (Exception e10) {
                p0.b("IDErrorUtil", e10.getMessage());
            }
        }
        p0.b("IDErrorUtil", "getErrorInfo RETURN NULL");
        return null;
    }

    private synchronized b a(String str) {
        b bVar;
        p0.b("IDErrorUtil", "getErrorInfo : " + str);
        if (!this.f27146c.containsKey(str) || (bVar = this.f27146c.get(str)) == null) {
            return null;
        }
        if (bVar.f27148a == -1) {
            return bVar;
        }
        if (System.currentTimeMillis() > bVar.f27150c + this.f27145b) {
            this.f27146c.remove(str);
            if (this.f27146c.size() > 0) {
                for (Map.Entry<String, b> entry : this.f27146c.entrySet()) {
                    p0.b("IDErrorUtil", "getErrorInfo : delete timeout entry");
                    if (System.currentTimeMillis() - entry.getValue().f27150c > this.f27145b) {
                        this.f27146c.remove(entry.getKey());
                    }
                }
            }
            return null;
        }
        p0.b("IDErrorUtil", "getErrorInfo : " + bVar.f27149b);
        return bVar;
    }
}
