package com.applovin.impl.sdk;

import com.applovin.impl.k7;
import com.applovin.impl.sdk.g;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.v4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class NativeCrashReporter implements g.d {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f9510b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f9511c;

    /* renamed from: d  reason: collision with root package name */
    private static final NativeCrashReporter f9512d = new NativeCrashReporter();

    /* renamed from: a  reason: collision with root package name */
    private final HashMap f9513a = new HashMap();

    private NativeCrashReporter() {
    }

    public static void a(k kVar) {
        if (kVar == null) {
            return;
        }
        if (!((Boolean) kVar.a(v4.f10310n4)).booleanValue() && !k7.k(k.o())) {
            if (f9511c) {
                try {
                    g l10 = kVar.l();
                    NativeCrashReporter nativeCrashReporter = f9512d;
                    l10.a(nativeCrashReporter);
                    nativeCrashReporter.disable();
                } catch (Throwable th2) {
                    kVar.O();
                    if (o.a()) {
                        kVar.O().a("NativeCrashReporter", "Failed to disable native crash reporter", th2);
                    }
                    kVar.E().a("NativeCrashReporter", "disableInstance", th2);
                }
            }
        } else if (a()) {
            List c10 = kVar.c(v4.f10318o4);
            int[] iArr = new int[c10.size()];
            for (int i10 = 0; i10 < c10.size(); i10++) {
                try {
                    iArr[i10] = Integer.parseInt((String) c10.get(i10));
                } catch (NumberFormatException unused) {
                }
            }
            File file = new File(k.o().getCacheDir(), "al-reports");
            if (file.exists()) {
                a(file, kVar);
            } else if (!file.mkdir()) {
                kVar.O();
                if (o.a()) {
                    kVar.O().b("NativeCrashReporter", "Failed to create reports directory");
                    return;
                }
                return;
            }
            try {
                NativeCrashReporter nativeCrashReporter2 = f9512d;
                nativeCrashReporter2.enable(file.getAbsolutePath(), iArr, ((Boolean) kVar.a(v4.f10326p4)).booleanValue());
                if (((Boolean) kVar.a(v4.f10334q4)).booleanValue()) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(g.c.LOADING);
                    hashSet.add(g.c.LOAD);
                    hashSet.add(g.c.SHOW);
                    hashSet.add(g.c.CLICK);
                    hashSet.add(g.c.SHOW_ERROR);
                    hashSet.add(g.c.DESTROY);
                    kVar.l().a(nativeCrashReporter2, hashSet);
                }
            } catch (Throwable th3) {
                kVar.O();
                if (o.a()) {
                    kVar.O().a("NativeCrashReporter", "Failed to enable native crash reporter", th3);
                }
                kVar.E().a("NativeCrashReporter", "enableInstance", th3);
            }
        }
    }

    private native void disable();

    private native void enable(String str, int[] iArr, boolean z10);

    private native void updateAdInfo(String str);

    private static boolean a() {
        if (!f9510b) {
            f9510b = true;
            try {
                System.loadLibrary("applovin-native-crash-reporter");
                f9511c = true;
            } catch (Throwable th2) {
                o.b("NativeCrashReporter", "Failed to load native crash reporter library", th2);
            }
        }
        return f9511c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:7|(2:9|(8:11|12|13|(1:15)(4:33|(4:36|(2:38|39)(2:41|42)|40|34)|43|44)|16|17|(2:19|(2:21|22)(1:24))(1:25)|23))|51|(1:53)|16|17|(0)(0)|23) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ec, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ed, code lost:
        r17.O();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f4, code lost:
        if (com.applovin.impl.sdk.o.a() != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f6, code lost:
        r17.O().a("NativeCrashReporter", "Failed to delete native crash report: " + r6.getAbsolutePath(), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c8 A[Catch: all -> 0x00ec, TryCatch #0 {all -> 0x00ec, blocks: (B:33:0x00c2, B:35:0x00c8, B:37:0x00d1), top: B:45:0x00c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0110 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.io.File r16, com.applovin.impl.sdk.k r17) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.NativeCrashReporter.a(java.io.File, com.applovin.impl.sdk.k):void");
    }

    @Override // com.applovin.impl.sdk.g.d
    public void a(g.b bVar) {
        String h10 = bVar.h();
        if (bVar.i() == g.c.DESTROY) {
            this.f9513a.remove(h10);
        } else if (this.f9513a.containsKey(h10)) {
            JsonUtils.putString((JSONObject) this.f9513a.get(h10), "operation", bVar.i().toString());
        } else {
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, "ad_unit_id", bVar.a());
            JsonUtils.putString(jSONObject, "ad_format", bVar.g());
            JsonUtils.putString(jSONObject, "network_name", bVar.c());
            JsonUtils.putString(jSONObject, "adapter_class", bVar.b());
            JsonUtils.putString(jSONObject, "adapter_version", bVar.d());
            JsonUtils.putString(jSONObject, "bcode", bVar.e());
            JsonUtils.putString(jSONObject, CampaignEx.JSON_KEY_CREATIVE_ID, bVar.f());
            JsonUtils.putString(jSONObject, "operation", bVar.i().toString());
            this.f9513a.put(h10, jSONObject);
        }
        try {
            updateAdInfo(new JSONArray(this.f9513a.values()).toString());
        } catch (Throwable unused) {
        }
    }
}
