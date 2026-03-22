package com.mbridge.msdk.click.retry;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.f;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: RetryReportControl.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public static String f26098e = "mtg_retry_report=1";

    /* renamed from: f  reason: collision with root package name */
    public static int f26099f = 10000;

    /* renamed from: g  reason: collision with root package name */
    public static int f26100g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static int f26101h = 50;

    /* renamed from: i  reason: collision with root package name */
    public static int f26102i = 600000;

    /* renamed from: j  reason: collision with root package name */
    private static int f26103j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static int f26104k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static int f26105l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static int f26106m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static int f26107n = 2;

    /* renamed from: o  reason: collision with root package name */
    public static int f26108o = 3;

    /* renamed from: p  reason: collision with root package name */
    public static int f26109p = 4;

    /* renamed from: q  reason: collision with root package name */
    public static int f26110q = 5;

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.click.retry.b> f26111a;

    /* renamed from: b  reason: collision with root package name */
    private com.mbridge.msdk.click.retry.c f26112b;

    /* renamed from: c  reason: collision with root package name */
    private BroadcastReceiver f26113c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f26114d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RetryReportControl.java */
    /* renamed from: com.mbridge.msdk.click.retry.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0357a extends BroadcastReceiver {
        C0357a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                a.this.f26114d.sendEmptyMessage(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RetryReportControl.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static a f26116a = new a(null);
    }

    /* compiled from: RetryReportControl.java */
    /* loaded from: classes4.dex */
    private static class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 == 2) {
                    a.b().c();
                    return;
                }
                return;
            }
            Object obj = message.obj;
            if (obj instanceof String) {
                a.b().a((String) obj, com.mbridge.msdk.click.retry.b.f26117k);
            }
        }
    }

    /* synthetic */ a(C0357a c0357a) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.mbridge.msdk.click.retry.c cVar = this.f26112b;
        if (cVar != null) {
            for (String str : cVar.a()) {
                a(str, com.mbridge.msdk.click.retry.b.f26118l);
            }
        }
    }

    private a() {
        this.f26111a = new ConcurrentHashMap<>();
        this.f26112b = new com.mbridge.msdk.click.retry.c(f26101h);
        this.f26114d = new c(Looper.getMainLooper());
        g b10 = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        f26100g = b10.d0();
        f26099f = b10.f0() * 1000;
        f26102i = b10.g0() * 1000;
        f26103j = b10.c0();
        f26104k = b10.e0();
        a();
    }

    public static a b() {
        return b.f26116a;
    }

    private boolean b(int i10) {
        return i10 == f26106m || i10 == f26107n;
    }

    public void a(String str, String str2, CampaignEx campaignEx, String str3, boolean z10, boolean z11, int i10) {
        if (!c(i10) || TextUtils.isEmpty(str)) {
            return;
        }
        String replace = str.replace("?" + f26098e, "");
        String replace2 = replace.replace(ContainerUtils.FIELD_DELIMITER + f26098e, "");
        if (this.f26111a == null) {
            this.f26111a = new ConcurrentHashMap<>();
        }
        com.mbridge.msdk.click.retry.b remove = this.f26111a.remove(replace2);
        if (remove == null) {
            remove = new com.mbridge.msdk.click.retry.b(str, str2);
            remove.b(i10);
            remove.a(z10);
            remove.b(z11);
            remove.a(campaignEx);
            remove.b(str3);
        } else if (remove.d() != com.mbridge.msdk.click.retry.b.f26118l) {
            remove.a(str2);
        }
        if ((a(i10) && f26103j != 0) || ((b(i10) && f26104k != 0) || i10 == f26110q)) {
            if (System.currentTimeMillis() < remove.c() + f26102i) {
                a(replace2, remove);
                if (remove.d() == com.mbridge.msdk.click.retry.b.f26117k) {
                    if (remove.e() <= f26100g) {
                        a(replace2);
                        return;
                    } else {
                        a(remove);
                        return;
                    }
                }
                return;
            } else if (remove.d() == com.mbridge.msdk.click.retry.b.f26117k) {
                a(remove);
                return;
            } else {
                return;
            }
        }
        a(remove);
    }

    private boolean c(int i10) {
        return a(i10) || b(i10) || i10 == f26110q;
    }

    private void a(com.mbridge.msdk.click.retry.b bVar) {
        String str;
        String str2;
        try {
            CampaignEx a10 = bVar.a();
            if (a10 != null) {
                String requestId = a10.getRequestId();
                str2 = a10.getRequestIdNotice();
                str = requestId;
            } else {
                str = "";
                str2 = str;
            }
            a(com.mbridge.msdk.foundation.controller.c.m().d(), bVar.b().toString(), bVar.g(), str, str2, bVar.h());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void a(Context context, String str, String str2, String str3, String str4, int i10) {
        f.a().a(context, str, str2, str3, str4, i10);
    }

    private void a(String str, com.mbridge.msdk.click.retry.b bVar) {
        if (this.f26112b == null) {
            this.f26112b = new com.mbridge.msdk.click.retry.c(f26101h);
        }
        this.f26112b.a(str, bVar);
    }

    private void a(String str) {
        Message obtainMessage = this.f26114d.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = str;
        this.f26114d.sendMessageDelayed(obtainMessage, f26099f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i10) {
        String str2;
        com.mbridge.msdk.click.retry.c cVar = this.f26112b;
        if (cVar != null) {
            com.mbridge.msdk.click.retry.b a10 = cVar.a(str);
            this.f26112b.b(str);
            if (a10 != null) {
                if (System.currentTimeMillis() <= a10.c() + f26102i) {
                    a10.a(i10);
                    this.f26111a.put(str, a10);
                    if (b1.c(str) == 0) {
                        str2 = str + "?" + f26098e;
                    } else {
                        str2 = str + ContainerUtils.FIELD_DELIMITER + f26098e;
                    }
                    com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), a10.a(), a10.f(), str2, a10.i(), a10.j(), a10.h());
                    return;
                } else if (i10 != com.mbridge.msdk.click.retry.b.f26118l) {
                    a(a10);
                    return;
                } else {
                    return;
                }
            }
            com.mbridge.msdk.click.retry.b bVar = this.f26111a.get(str);
            if (bVar == null || System.currentTimeMillis() > bVar.c() + f26102i || bVar.e() >= f26100g || i10 == com.mbridge.msdk.click.retry.b.f26118l) {
                return;
            }
            a(str);
        }
    }

    private void a() {
        try {
            if (this.f26113c == null) {
                this.f26113c = new C0357a();
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                if (d10 != null) {
                    d10.registerReceiver(this.f26113c, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean a(int i10) {
        return i10 == f26109p || i10 == f26108o;
    }
}
