package com.mbridge.msdk.tracker;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.unity3d.services.UnityAdsConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReportManager.java */
/* loaded from: classes6.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final c f30411a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30412b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30413c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30414d;

    /* renamed from: e  reason: collision with root package name */
    private final k f30415e;

    /* renamed from: i  reason: collision with root package name */
    private Handler f30419i;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f30416f = new AtomicInteger(0);

    /* renamed from: g  reason: collision with root package name */
    private final AtomicInteger f30417g = new AtomicInteger(0);

    /* renamed from: h  reason: collision with root package name */
    private final Object f30418h = new Object();

    /* renamed from: j  reason: collision with root package name */
    private boolean f30420j = true;

    /* renamed from: k  reason: collision with root package name */
    private long f30421k = 0;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f30422l = false;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f30423m = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReportManager.java */
    /* loaded from: classes6.dex */
    public static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final s f30426a;

        public b(Looper looper, s sVar) {
            super(looper);
            this.f30426a = sVar;
        }

        private void a(String str) {
            Log.d("TrackManager", this.f30426a.f30415e.v() + " " + str + this.f30426a.f30417g.addAndGet(0) + " 数据库记录数：" + this.f30426a.f30411a.b());
        }

        private void b() {
            try {
                removeMessages(1);
                removeMessages(6);
                removeMessages(2);
                removeMessages(3);
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f30196a) {
                    Log.e("TrackManager", this.f30426a.f30415e.v() + " removeMessages failed ", e10);
                }
            }
            if (!this.f30426a.g()) {
                try {
                    sendMessageDelayed(Message.obtain(this, 1), y.a(this.f30426a.f30416f.get(), this.f30426a.f30421k, this.f30426a.f30413c));
                } catch (Exception e11) {
                    if (com.mbridge.msdk.tracker.a.f30196a) {
                        Log.e("TrackManager", this.f30426a.f30415e.v() + " sendMessageDelayed failed ", e11);
                    }
                }
            }
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            e eVar;
            super.dispatchMessage(message);
            int i10 = message.what;
            if (i10 != 2 && i10 != 3) {
                if (i10 != 5) {
                    if (i10 != 6) {
                        if (i10 != 7) {
                            b();
                            if (com.mbridge.msdk.tracker.a.f30196a) {
                                a("触发上报（timer）当前 Event 数量：");
                            }
                            a();
                            return;
                        }
                        this.f30426a.k();
                        b();
                        if (com.mbridge.msdk.tracker.a.f30196a) {
                            a("触发上报（flush）当前 Event 数量：");
                        }
                        a();
                        return;
                    }
                    Object obj = message.obj;
                    if (obj instanceof e) {
                        eVar = (e) obj;
                    } else {
                        eVar = null;
                    }
                    if (com.mbridge.msdk.tracker.a.f30196a && !y.b(eVar)) {
                        a(String.format("收到 Event( %s )，当前 Event 数量：", eVar.b()));
                    }
                    if (y.a(eVar) || this.f30426a.f()) {
                        b();
                        if (com.mbridge.msdk.tracker.a.f30196a) {
                            a("触发上报（notice check）当前 Event 数量：");
                        }
                        a();
                        return;
                    }
                    return;
                }
                if (com.mbridge.msdk.tracker.a.f30196a) {
                    a("触发删除 当前 Event 数量：");
                }
                this.f30426a.a();
                sendMessageDelayed(Message.obtain(this, 5), UnityAdsConstants.Timeout.INIT_TIMEOUT_MS);
                return;
            }
            b();
            if (com.mbridge.msdk.tracker.a.f30196a) {
                a("触发上报（report result）当前 Event 数量：");
            }
            a();
        }

        private synchronized void a() {
            try {
                this.f30426a.h();
            } catch (Exception e10) {
                if (com.mbridge.msdk.tracker.a.f30196a) {
                    Log.e("TrackManager", this.f30426a.f30415e.v() + " report failed ", e10);
                }
            }
        }
    }

    public s(k kVar) {
        this.f30411a = kVar.d();
        this.f30412b = kVar.i();
        this.f30413c = kVar.l();
        this.f30414d = kVar.j();
        this.f30415e = kVar;
    }

    private void l() {
        this.f30411a.c();
    }

    public void k() {
        synchronized (this.f30418h) {
            try {
                if (!this.f30422l) {
                    this.f30422l = true;
                    l();
                }
                if (!this.f30423m) {
                    this.f30423m = true;
                    this.f30417g.addAndGet(this.f30411a.b());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private List<i> c() {
        return this.f30411a.a(this.f30412b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        return this.f30416f.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        List<i> c10 = c();
        if (y.b((List<?>) c10)) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.d("TrackManager", this.f30415e.v() + " report: 没有可以上报的数据");
                return;
            }
            return;
        }
        a(c10);
        int size = c10.size();
        this.f30417g.addAndGet(-size);
        boolean z10 = false;
        if (com.mbridge.msdk.tracker.a.f30196a) {
            Log.d("TrackManager", this.f30415e.v() + " report: 上报的数量 = " + size + " 当前剩余事件数 = " + this.f30417g.addAndGet(0) + " 数据库中剩余事件数 = " + this.f30411a.b());
        }
        try {
            z10 = this.f30415e.a();
        } catch (IllegalStateException e10) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", this.f30415e.v() + " report environment check failed ", e10);
            }
        }
        if (!z10) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", this.f30415e.v() + " report 失败，请检查 TrackConfig 配置是否正确");
                return;
            }
            return;
        }
        o m10 = this.f30415e.m();
        m10.a(new a(this.f30419i, this));
        Map<String, String> hashMap = new HashMap<>();
        try {
            hashMap = this.f30415e.f().a(this.f30415e.u(), c10, this.f30415e.o());
        } catch (Exception e11) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", this.f30415e.v() + " report decorate request params failed ", e11);
            }
        }
        m10.b(new t(c10), hashMap, y.a(c10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f30416f.set(0);
    }

    public void b() {
        this.f30419i.removeMessages(1);
        Handler handler = this.f30419i;
        handler.sendMessage(Message.obtain(handler, 7));
    }

    public void e() {
        this.f30417g.incrementAndGet();
    }

    protected boolean f() {
        return this.f30417g.addAndGet(0) >= this.f30412b;
    }

    boolean g() {
        return this.f30420j;
    }

    public void j() {
        HandlerThread handlerThread = new HandlerThread("report_timer");
        handlerThread.start();
        b bVar = new b(handlerThread.getLooper(), this);
        this.f30419i = bVar;
        bVar.sendMessageDelayed(Message.obtain(bVar, 5), 5000L);
        Handler handler = this.f30419i;
        handler.sendMessageDelayed(Message.obtain(handler, 1), this.f30413c);
        this.f30420j = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<i> list) {
        if (y.b((List<?>) list)) {
            return;
        }
        this.f30411a.c(list);
    }

    public void a(e eVar) {
        if (this.f30419i.hasMessages(6)) {
            return;
        }
        long a10 = y.a(this.f30416f.get(), this.f30421k, this.f30413c);
        if (a10 > this.f30413c) {
            Handler handler = this.f30419i;
            handler.sendMessageDelayed(Message.obtain(handler, 6, eVar), ((float) a10) * 0.1f);
            return;
        }
        Handler handler2 = this.f30419i;
        handler2.sendMessage(Message.obtain(handler2, 6, eVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReportManager.java */
    /* loaded from: classes6.dex */
    public static final class a implements r {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f30424a;

        /* renamed from: b  reason: collision with root package name */
        private final s f30425b;

        public a(Handler handler, s sVar) {
            this.f30424a = handler;
            this.f30425b = sVar;
        }

        @Override // com.mbridge.msdk.tracker.r
        public void a(t tVar) {
            this.f30425b.b(tVar.a());
            this.f30425b.i();
            this.f30425b.f30421k = 0L;
            if (this.f30425b.f()) {
                Handler handler = this.f30424a;
                handler.sendMessage(Message.obtain(handler, 2));
            }
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.d("TrackManager", this.f30425b.f30415e.v() + " report success " + tVar.a().size() + " 剩余事件数：" + this.f30425b.f30417g.addAndGet(0) + " 个，数据库记录数：" + this.f30425b.f30411a.b() + " 个");
            }
        }

        @Override // com.mbridge.msdk.tracker.r
        public void a(t tVar, int i10, String str) {
            this.f30425b.a(tVar.a(), str);
            this.f30425b.f30421k = System.currentTimeMillis();
            int d10 = this.f30425b.d();
            if (d10 <= 10) {
                this.f30424a.removeMessages(3);
                Handler handler = this.f30424a;
                handler.sendMessageDelayed(Message.obtain(handler, 3), d10 * 1000);
            }
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.d("TrackManager", this.f30425b.f30415e.v() + " report failed " + tVar.a().size() + " 剩余事件数：" + this.f30425b.f30417g.addAndGet(0) + " 个，数据库记录数：" + this.f30425b.f30411a.b() + " 个 连续失败次数： " + d10);
            }
        }
    }

    private void a(List<i> list) {
        this.f30411a.b(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (com.mbridge.msdk.tracker.a.f30196a) {
            return;
        }
        int a10 = this.f30411a.a();
        if (com.mbridge.msdk.tracker.a.f30196a) {
            Log.d("TrackManager", this.f30415e.v() + " 删除无效数据的数量 = " + a10 + " 当前剩余事件数 = " + this.f30417g.addAndGet(0) + " 数据库中剩余事件数 = " + this.f30411a.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<i> list, String str) {
        if (y.b((List<?>) list)) {
            return;
        }
        int i10 = 0;
        for (i iVar : list) {
            if (!y.b(iVar)) {
                boolean z10 = !iVar.g() && iVar.c() >= this.f30414d;
                boolean z11 = !iVar.h() && iVar.b() < System.currentTimeMillis();
                if (!z10 && !z11) {
                    iVar.a(iVar.c() + 1);
                    iVar.b(3);
                    iVar.a(str);
                    i10++;
                } else {
                    iVar.b(-1);
                }
            }
        }
        this.f30411a.a(list);
        this.f30417g.addAndGet(i10);
    }
}
