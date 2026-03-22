package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.broadcast.NetWorkChangeReceiver;
import org.json.JSONObject;
/* compiled from: NetAddressManager.java */
/* loaded from: classes5.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f27430a;

    /* renamed from: b  reason: collision with root package name */
    private com.mbridge.msdk.setting.j f27431b;

    /* renamed from: c  reason: collision with root package name */
    private long f27432c;

    /* renamed from: d  reason: collision with root package name */
    private final BroadcastReceiver f27433d;

    /* renamed from: e  reason: collision with root package name */
    IntentFilter f27434e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NetAddressManager.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final f0 f27435a = new f0();
    }

    public static f0 a() {
        return b.f27435a;
    }

    public String b() {
        long j10;
        try {
            if (this.f27430a == null) {
                this.f27430a = new JSONObject();
            }
            if (this.f27430a.length() < 2) {
                try {
                    this.f27430a.put("KEY_INFO", (String) c.a(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_INFO", ""));
                } catch (Exception e10) {
                    p0.b("NetAddressManager", e10.getMessage());
                }
                try {
                    this.f27430a.put("KEY_TIME", ((Long) c.a(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_TIME", 0L)).longValue());
                } catch (Exception e11) {
                    p0.b("NetAddressManager", e11.getMessage());
                }
            }
            String optString = this.f27430a.optString("KEY_INFO");
            if (TextUtils.isEmpty(optString)) {
                return "";
            }
            com.mbridge.msdk.setting.g b10 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
            if (b10 != null) {
                j10 = b10.R();
            } else {
                j10 = 3600;
            }
            if (System.currentTimeMillis() - this.f27430a.optLong("KEY_TIME") > j10 * 1000) {
                return "";
            }
            return optString;
        } catch (Exception e12) {
            p0.b("NetAddressManager", e12.getMessage());
            return "";
        }
    }

    public void c() {
        Context d10;
        try {
            if (com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b()).S() == 1 && (d10 = com.mbridge.msdk.foundation.controller.c.m().d()) != null) {
                IntentFilter intentFilter = new IntentFilter();
                this.f27434e = intentFilter;
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                d10.registerReceiver(this.f27433d, this.f27434e);
            }
        } catch (Exception e10) {
            p0.b("NetAddressManager", e10.getMessage());
        }
    }

    public void d() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f27432c > 3000) {
            if (this.f27431b == null) {
                this.f27431b = new com.mbridge.msdk.setting.j();
            }
            this.f27431b.c(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
            this.f27432c = currentTimeMillis;
        }
    }

    public void e() {
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d10 != null) {
            try {
                d10.unregisterReceiver(this.f27433d);
            } catch (Exception e10) {
                p0.b("NetAddressManager", e10.getMessage());
            }
        }
    }

    private f0() {
        this.f27430a = new JSONObject();
        this.f27433d = new NetWorkChangeReceiver();
        IntentFilter intentFilter = new IntentFilter();
        this.f27434e = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public void a(String str) {
        if (this.f27430a == null) {
            this.f27430a = new JSONObject();
        }
        try {
            if (!this.f27430a.optString("KEY_INFO", "").equals(str)) {
                this.f27430a.put("KEY_INFO", str);
                c.b(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_INFO", str);
            }
        } catch (Exception e10) {
            p0.b("NetAddressManager", e10.getMessage());
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            this.f27430a.put("KEY_TIME", currentTimeMillis);
            c.b(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_TIME", Long.valueOf(currentTimeMillis));
        } catch (Exception e11) {
            p0.b("NetAddressManager", e11.getMessage());
        }
    }
}
