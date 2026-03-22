package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ParameterWrapper.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f27317a = new HashMap();

    public void a(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            if (obj instanceof String) {
                if (!TextUtils.isEmpty((String) obj)) {
                    this.f27317a.put(str, (String) obj);
                }
            } else {
                Map<String, String> map = this.f27317a;
                map.put(str, obj + "");
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public Object b(String str) {
        return this.f27317a.get(str);
    }

    public void c(String str) {
        if (this.f27317a != null && !TextUtils.isEmpty(str)) {
            this.f27317a.remove(str);
        }
    }

    public boolean a(String str) {
        return this.f27317a.containsKey(str);
    }

    public Map<String, String> a() {
        return this.f27317a;
    }

    public void a(e eVar) {
        Map<String, String> map;
        Map<String, String> map2;
        if (eVar == null || (map = eVar.f27317a) == null || (map2 = this.f27317a) == null) {
            return;
        }
        map2.putAll(map);
    }
}
