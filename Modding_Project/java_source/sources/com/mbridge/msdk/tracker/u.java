package com.mbridge.msdk.tracker;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: ReportMonitor.java */
/* loaded from: classes6.dex */
public class u {

    /* renamed from: g  reason: collision with root package name */
    private static volatile u f30428g;

    /* renamed from: a  reason: collision with root package name */
    private m f30429a;

    /* renamed from: b  reason: collision with root package name */
    private x f30430b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f30431c = false;

    /* renamed from: d  reason: collision with root package name */
    private int f30432d = 30000;

    /* renamed from: e  reason: collision with root package name */
    private final HashMap<String, String> f30433e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    Handler f30434f = new a(Looper.getMainLooper());

    /* compiled from: ReportMonitor.java */
    /* loaded from: classes6.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                try {
                    u.this.b();
                    u.this.f30434f.removeMessages(1);
                    u.this.d();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private u() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.f30434f.sendEmptyMessageDelayed(1, this.f30432d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b() {
        m[] b10 = m.b();
        if (b10.length == 0) {
            return;
        }
        try {
            for (m mVar : b10) {
                String f10 = mVar.f();
                if (!"monitor".equals(f10)) {
                    String d10 = mVar.d();
                    long[] e10 = mVar.e();
                    long j10 = e10[1];
                    if (j10 != 0) {
                        long j11 = e10[0];
                        if (this.f30433e.containsKey(f10)) {
                            if ((j11 + "").equals(this.f30433e.get(f10))) {
                            }
                        }
                        this.f30433e.put(f10, j11 + "");
                        if (this.f30429a != null) {
                            try {
                                e eVar = new e("event_lib_monitor");
                                eVar.a(1);
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("key", "m_report_rate");
                                jSONObject.put("task_name", f10);
                                jSONObject.put("task_count", j10);
                                jSONObject.put("task_session_id", d10);
                                jSONObject.put("task_ts", j11);
                                eVar.a(jSONObject);
                                this.f30429a.d(eVar);
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    }
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public synchronized void c() {
        if (this.f30431c) {
            return;
        }
        this.f30431c = true;
        d();
    }

    public void a(Context context, x xVar, int i10, JSONObject jSONObject) {
        this.f30430b = xVar;
        this.f30432d = i10;
        m a10 = m.a("monitor", context, xVar);
        this.f30429a = a10;
        if (a10 != null) {
            a10.a(jSONObject);
            this.f30429a.h();
        }
        c();
    }

    public static u a() {
        if (f30428g == null) {
            synchronized (u.class) {
                try {
                    if (f30428g == null) {
                        f30428g = new u();
                    }
                } finally {
                }
            }
        }
        return f30428g;
    }
}
