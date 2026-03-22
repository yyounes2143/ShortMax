package com.apm.insight.k;

import androidx.annotation.Nullable;
import com.apm.insight.runtime.m;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ApmConfigFetcher.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Runnable f6966a = new Runnable() { // from class: com.apm.insight.k.a.1
        @Override // java.lang.Runnable
        public final void run() {
            if (com.apm.insight.l.k.b(com.apm.insight.e.g())) {
                a.i();
            }
            if (a.f6967b > 0) {
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    m.a().a(a.f6966a, 15000L);
                } else {
                    m.a().a(a.f6966a, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                }
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static int f6967b = 0;

    public static void a() {
        f6967b = 40;
        m.a().a(f6966a);
    }

    public static void b() {
        if (!j.b()) {
            j.c();
        }
        if (com.apm.insight.l.k.b(com.apm.insight.e.g()) && j.g()) {
            i();
        }
    }

    public static boolean c() {
        return false;
    }

    @Nullable
    private static byte[] h() {
        try {
            return e.a(com.apm.insight.e.i().getConfigUrl(), com.apm.insight.entity.b.a().toString().getBytes());
        } catch (Throwable th2) {
            com.apm.insight.a.a(th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void i() {
        synchronized (a.class) {
            try {
                int i10 = f6967b;
                if (i10 > 0) {
                    f6967b = i10 - 1;
                }
                com.apm.insight.a.a((Object) "try fetchApmConfig");
                if (com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                    JSONArray jSONArray = null;
                    byte[] h10 = h();
                    if (h10 != null) {
                        jSONArray = new JSONObject(new String(h10)).optJSONArray("data");
                    }
                    com.apm.insight.a.a((Object) "after fetchApmConfig net ".concat(String.valueOf(jSONArray)));
                    if (jSONArray != null) {
                        com.apm.insight.runtime.a.a(jSONArray, true);
                        f6967b = 0;
                        return;
                    }
                    f6967b -= 10;
                    return;
                }
                j.c();
                if (j.a()) {
                    f6967b = 0;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void d() {
    }
}
