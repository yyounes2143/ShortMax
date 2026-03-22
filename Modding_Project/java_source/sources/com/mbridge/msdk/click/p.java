package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.click.o;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.concurrent.Semaphore;
/* compiled from: WebViewSpiderLoader.java */
/* loaded from: classes4.dex */
public class p extends f implements a.InterfaceC0375a {

    /* renamed from: b  reason: collision with root package name */
    private g f26076b;

    /* renamed from: c  reason: collision with root package name */
    private JumpLoaderResult f26077c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f26079e;

    /* renamed from: f  reason: collision with root package name */
    private Context f26080f;

    /* renamed from: g  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.task.b f26081g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f26082h;

    /* renamed from: d  reason: collision with root package name */
    private boolean f26078d = true;

    /* renamed from: i  reason: collision with root package name */
    private Handler f26083i = new Handler(Looper.getMainLooper());

    /* compiled from: WebViewSpiderLoader.java */
    /* loaded from: classes4.dex */
    class a implements k {
        a() {
        }

        @Override // com.mbridge.msdk.click.k
        public void a(JumpLoaderResult jumpLoaderResult) {
            p.this.f26077c = jumpLoaderResult;
        }
    }

    /* compiled from: WebViewSpiderLoader.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.f26076b != null) {
                if (p.this.f26077c.isSuccess()) {
                    p.this.f26076b.a(p.this.f26077c);
                } else {
                    p.this.f26076b.a(p.this.f26077c, p.this.f26077c.getMsg());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebViewSpiderLoader.java */
    /* loaded from: classes4.dex */
    public class c extends com.mbridge.msdk.foundation.same.task.a {

        /* renamed from: b  reason: collision with root package name */
        private final Context f26087b;

        /* renamed from: c  reason: collision with root package name */
        private String f26088c;

        /* renamed from: d  reason: collision with root package name */
        private String f26089d;

        /* renamed from: e  reason: collision with root package name */
        private String f26090e;

        /* renamed from: f  reason: collision with root package name */
        private CampaignEx f26091f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f26092g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f26093h;

        /* renamed from: i  reason: collision with root package name */
        private int f26094i;

        /* renamed from: a  reason: collision with root package name */
        private final Semaphore f26086a = new Semaphore(0);

        /* renamed from: j  reason: collision with root package name */
        private o.f f26095j = new a();

        public c(Context context, String str, String str2, String str3, CampaignEx campaignEx, boolean z10, boolean z11, int i10) {
            this.f26087b = context;
            this.f26088c = str;
            this.f26089d = str2;
            this.f26090e = str3;
            this.f26091f = campaignEx;
            this.f26092g = z10;
            this.f26093h = z11;
            this.f26094i = i10;
        }

        private boolean a(int i10) {
            return i10 == 200;
        }

        private boolean b(int i10) {
            return i10 == 301 || i10 == 302 || i10 == 307;
        }

        private boolean c(String str) {
            return str.startsWith(DomExceptionUtils.SEPARATOR);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d(String str) {
            return q.a(str, this.f26091f, p.this.f26077c);
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            if (p.this.f26076b != null) {
                p.this.f26076b.b(null);
            }
            p.this.f26077c = new JumpLoaderResult();
            p.this.f26077c.setUrl(this.f26088c);
            p.this.f26077c = a(this.f26088c, this.f26092g, this.f26093h, this.f26091f, this.f26094i);
            if (!TextUtils.isEmpty(p.this.f26077c.getExceptionMsg())) {
                p.this.f26077c.setSuccess(true);
            }
            if (!p.this.f26078d || !p.this.f26077c.isSuccess()) {
                return;
            }
            if (p.this.f26082h != null) {
                p.this.f26077c.setStatusCode(p.this.f26082h.f26004f);
            }
            q.a(this.f26091f, p.this.f26077c, p.this.f26082h, this.f26089d, this.f26090e, this.f26087b, this.f26095j, this.f26086a);
        }

        /* compiled from: WebViewSpiderLoader.java */
        /* loaded from: classes4.dex */
        class a implements o.f {
            a() {
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean a(String str) {
                boolean d10 = c.this.d(str);
                if (d10) {
                    a();
                }
                return d10;
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean b(String str) {
                return false;
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean c(String str) {
                boolean d10 = c.this.d(str);
                if (d10) {
                    a();
                }
                return d10;
            }

            @Override // com.mbridge.msdk.click.o.f
            public void a(String str, boolean z10, String str2) {
                c.this.d(str);
                p.this.f26077c.setContent(str2);
                a();
            }

            @Override // com.mbridge.msdk.click.o.f
            public void a(int i10, String str, String str2, String str3) {
                if (!TextUtils.isEmpty(str2)) {
                    p.this.f26077c.setExceptionMsg(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    p.this.f26077c.setContent(str3);
                }
                c.this.d(str);
                a();
            }

            private void a() {
                synchronized (p.this) {
                    p.this.f26077c.setSuccess(true);
                    c.this.a();
                }
            }
        }

        private boolean b(String str) {
            return !URLUtil.isNetworkUrl(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f26086a.release();
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01fb A[EDGE_INSN: B:87:0x01fb->B:75:0x01fb ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.mbridge.msdk.click.entity.JumpLoaderResult a(java.lang.String r16, boolean r17, boolean r18, com.mbridge.msdk.foundation.entity.CampaignEx r19, int r20) {
            /*
                Method dump skipped, instructions count: 508
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.p.c.a(java.lang.String, boolean, boolean, com.mbridge.msdk.foundation.entity.CampaignEx, int):com.mbridge.msdk.click.entity.JumpLoaderResult");
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z10) {
        }

        private boolean a(String str) {
            return t0.a.b(str);
        }
    }

    public p(Context context) {
        this.f26080f = context;
        this.f26081g = new com.mbridge.msdk.foundation.same.task.b(context, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(String str, g gVar, boolean z10, String str2, String str3, CampaignEx campaignEx, boolean z11, boolean z12, int i10) {
        c cVar;
        this.f26076b = gVar;
        this.f26079e = z10;
        com.mbridge.msdk.click.entity.b bVar = new com.mbridge.msdk.click.entity.b();
        bVar.a(this.f26080f);
        bVar.c(str);
        bVar.b(z10);
        bVar.a(str2);
        bVar.b(str3);
        bVar.a(campaignEx);
        bVar.a(z11);
        bVar.c(z12);
        bVar.a(i10);
        if (str.startsWith("tcp")) {
            l lVar = new l(bVar);
            lVar.a(this.f26076b);
            lVar.a(new a());
            cVar = lVar;
        } else {
            cVar = new c(this.f26080f, str, str2, str3, campaignEx, z11, z12, i10);
        }
        this.f26081g.b(cVar, this);
    }

    @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0375a
    public void a(a.b bVar) {
        if (bVar == a.b.FINISH && this.f26078d) {
            this.f26083i.post(new b());
        }
    }
}
