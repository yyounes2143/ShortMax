package com.mbridge.msdk.setting;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: MBDNSManager.java */
/* loaded from: classes6.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public int f29010a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, f> f29011b;

    /* compiled from: MBDNSManager.java */
    /* loaded from: classes6.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final e f29012a = new e();
    }

    public static e a() {
        return b.f29012a;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (this.f29011b == null) {
                this.f29011b = new HashMap<>();
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject.getString(next);
                f fVar = new f();
                fVar.a(next);
                fVar.b(string);
                this.f29011b.put(next, fVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private e() {
        this.f29010a = 6;
        this.f29011b = new HashMap<>();
    }

    public int a(String str) {
        HashMap<String, f> hashMap;
        f fVar;
        if (TextUtils.isEmpty(str) || (hashMap = this.f29011b) == null || !hashMap.containsKey(str) || (fVar = this.f29011b.get(str)) == null) {
            return 0;
        }
        int i10 = fVar.b() ? 1 : fVar.a() >= this.f29010a ? 2 : 0;
        fVar.a(false);
        return i10;
    }
}
