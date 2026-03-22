package com.mbridge.msdk.timer;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.l;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.i;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import java.util.LinkedList;
import java.util.List;
/* compiled from: LoopTimer.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private long f30180a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30181b;

    /* renamed from: c  reason: collision with root package name */
    private LinkedList<i> f30182c;

    /* renamed from: d  reason: collision with root package name */
    private LinkedList<i> f30183d;

    /* renamed from: e  reason: collision with root package name */
    private int f30184e;

    /* renamed from: f  reason: collision with root package name */
    private int f30185f;

    /* renamed from: g  reason: collision with root package name */
    private e f30186g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.a f30187h;

    /* renamed from: i  reason: collision with root package name */
    private l f30188i;

    /* renamed from: j  reason: collision with root package name */
    private g f30189j;

    /* renamed from: k  reason: collision with root package name */
    private Handler f30190k;

    /* compiled from: LoopTimer.java */
    /* renamed from: com.mbridge.msdk.timer.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class HandlerC0436a extends Handler {
        HandlerC0436a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (a.this) {
                try {
                    int i10 = message.what;
                    if (i10 != 1) {
                        if (i10 == 2) {
                            a.this.c();
                        }
                    } else if (a.this.f30181b) {
                    } else {
                        a aVar = a.this;
                        aVar.a(aVar.f30180a);
                        sendMessageDelayed(obtainMessage(1), a.this.f30180a);
                    }
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoopTimer.java */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.reward.adapter.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c f30192a;

        b(com.mbridge.msdk.reward.adapter.c cVar) {
            this.f30192a = cVar;
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f30190k.sendMessage(a.this.f30190k.obtainMessage(2));
            this.f30192a.a((com.mbridge.msdk.reward.adapter.a) null);
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f30190k.sendMessage(a.this.f30190k.obtainMessage(2));
            this.f30192a.a((com.mbridge.msdk.reward.adapter.a) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LoopTimer.java */
    /* loaded from: classes6.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        static a f30194a = new a(null);
    }

    /* synthetic */ a(HandlerC0436a handlerC0436a) {
        this();
    }

    private a() {
        this.f30181b = false;
        this.f30182c = new LinkedList<>();
        this.f30183d = new LinkedList<>();
        this.f30184e = 0;
        this.f30185f = 0;
        this.f30190k = new HandlerC0436a();
    }

    private void b() {
        if (this.f30189j == null) {
            this.f30189j = g.a(com.mbridge.msdk.foundation.controller.c.m().d());
        }
        if (this.f30188i == null) {
            this.f30188i = l.a(this.f30189j);
        }
        List<i> a10 = this.f30188i.a(287);
        if (a10 != null) {
            this.f30183d.addAll(a10);
            for (i iVar : a10) {
                a(iVar.a(), iVar.b());
            }
        }
        List<i> a11 = this.f30188i.a(94);
        if (a11 != null) {
            this.f30182c.addAll(a11);
            for (i iVar2 : a11) {
                b(iVar2.a(), iVar2.b());
            }
        }
        if (this.f30186g == null) {
            this.f30186g = e.a(this.f30189j);
        }
        if (this.f30187h == null) {
            this.f30187h = com.mbridge.msdk.videocommon.setting.b.b().c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            LinkedList<i> linkedList = this.f30182c;
            if (linkedList != null && linkedList.size() > 0 && this.f30184e < this.f30182c.size()) {
                i iVar = this.f30182c.get(this.f30184e);
                this.f30184e++;
                if (a(iVar)) {
                    a(iVar.a(), iVar.b(), false);
                }
            } else {
                LinkedList<i> linkedList2 = this.f30183d;
                if (linkedList2 != null && linkedList2.size() > 0 && this.f30185f < this.f30183d.size()) {
                    i iVar2 = this.f30183d.get(this.f30185f);
                    this.f30185f++;
                    if (a(iVar2)) {
                        c(iVar2.a(), iVar2.b());
                    }
                }
            }
        } catch (Throwable th2) {
            p0.b("LoopTimer", th2.getMessage(), th2);
        }
    }

    public static a a() {
        return c.f30194a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10) {
        LinkedList<i> linkedList = this.f30182c;
        if (linkedList == null || linkedList.size() <= 0 || this.f30184e == 0 || this.f30182c.size() <= this.f30184e) {
            LinkedList<i> linkedList2 = this.f30183d;
            if (linkedList2 == null || linkedList2.size() <= 0 || this.f30185f == 0 || this.f30183d.size() == this.f30185f) {
                this.f30185f = 0;
                this.f30184e = 0;
                Handler handler = this.f30190k;
                handler.sendMessage(handler.obtainMessage(2));
            }
        }
    }

    private boolean a(i iVar) {
        boolean z10 = false;
        if (iVar == null || TextUtils.isEmpty(iVar.b())) {
            return false;
        }
        String b10 = iVar.b();
        try {
            if (this.f30186g != null) {
                com.mbridge.msdk.videocommon.setting.a aVar = this.f30187h;
                int a10 = this.f30186g.a(b10, aVar != null ? aVar.e() : 0L);
                if (a10 == -1) {
                    a(b10);
                } else if (a10 != 1) {
                }
                try {
                    Handler handler = this.f30190k;
                    handler.sendMessage(handler.obtainMessage(2));
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    p0.b("LoopTimer", th.getMessage(), th);
                    return z10;
                }
            }
            return true;
        } catch (Throwable th3) {
            th = th3;
            z10 = true;
        }
    }

    private void c(String str, String str2) {
        a(str, str2, true);
    }

    private void a(String str, String str2, boolean z10) {
        try {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (d10 == null) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(d10, str, str2);
            cVar.d(z10);
            cVar.a(new b(cVar));
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar2.i(SameMD5.getMD5(u0.d()));
            cVar2.n(str2);
            if (z10) {
                cVar2.a(287);
            } else {
                cVar2.a(94);
            }
            cVar2.h(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            cVar2.f("1");
            cVar.a(1, 8000, false, cVar2);
        } catch (Exception e10) {
            p0.b("LoopTimer", e10.getMessage(), e10);
        }
    }

    public void b(long j10) {
        b();
        this.f30180a = j10;
        this.f30181b = false;
        Handler handler = this.f30190k;
        handler.sendMessageDelayed(handler.obtainMessage(1), this.f30180a);
    }

    public void b(String str, String str2) {
        if (this.f30182c.contains(str2)) {
            return;
        }
        this.f30182c.add(new i(str, str2, 94));
        l lVar = this.f30188i;
        if (lVar != null) {
            lVar.a(str, str2, 94);
        }
    }

    private void b(String str) {
        l lVar = this.f30188i;
        if (lVar != null) {
            lVar.a(str);
        }
    }

    public void a(String str, String str2) {
        if (this.f30183d.contains(str2)) {
            return;
        }
        this.f30183d.add(new i(str, str2, 287));
        l lVar = this.f30188i;
        if (lVar != null) {
            lVar.a(str, str2, 287);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        LinkedList<i> linkedList = this.f30182c;
        if (linkedList != null && linkedList.contains(str)) {
            this.f30182c.remove(str);
        } else {
            LinkedList<i> linkedList2 = this.f30183d;
            if (linkedList2 != null && linkedList2.contains(str)) {
                this.f30183d.remove(str);
            }
        }
        b(str);
    }
}
