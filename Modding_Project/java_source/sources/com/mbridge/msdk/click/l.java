package com.mbridge.msdk.click;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.click.o;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.task.a;
import java.util.concurrent.Semaphore;
/* compiled from: SocketRequestTask.java */
/* loaded from: classes4.dex */
public class l extends com.mbridge.msdk.foundation.same.task.a {

    /* renamed from: b  reason: collision with root package name */
    private final Context f26028b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26029c;

    /* renamed from: d  reason: collision with root package name */
    private final String f26030d;

    /* renamed from: e  reason: collision with root package name */
    private final String f26031e;

    /* renamed from: f  reason: collision with root package name */
    private final CampaignEx f26032f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f26033g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f26034h;

    /* renamed from: i  reason: collision with root package name */
    private final int f26035i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f26036j;

    /* renamed from: k  reason: collision with root package name */
    private com.mbridge.msdk.click.entity.a f26037k;

    /* renamed from: l  reason: collision with root package name */
    private JumpLoaderResult f26038l;

    /* renamed from: m  reason: collision with root package name */
    private g f26039m;

    /* renamed from: n  reason: collision with root package name */
    private k f26040n;

    /* renamed from: a  reason: collision with root package name */
    private final Semaphore f26027a = new Semaphore(0);

    /* renamed from: o  reason: collision with root package name */
    private final o.f f26041o = new a();

    public l(com.mbridge.msdk.click.entity.b bVar) {
        this.f26028b = bVar.c();
        this.f26029c = bVar.e();
        this.f26030d = bVar.b();
        this.f26031e = bVar.d();
        this.f26032f = bVar.a();
        this.f26033g = bVar.g();
        this.f26034h = bVar.i();
        this.f26035i = bVar.f();
        this.f26036j = bVar.h();
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void runTask() {
        JumpLoaderResult jumpLoaderResult;
        g gVar = this.f26039m;
        if (gVar != null) {
            gVar.b(null);
        }
        JumpLoaderResult jumpLoaderResult2 = new JumpLoaderResult();
        this.f26038l = jumpLoaderResult2;
        jumpLoaderResult2.setUrl(this.f26029c);
        JumpLoaderResult c10 = c(this.f26029c);
        this.f26038l = c10;
        if (c10 != null && !TextUtils.isEmpty(c10.getExceptionMsg())) {
            this.f26038l.setSuccess(true);
        }
        if (this.mState != a.b.RUNNING) {
            k kVar = this.f26040n;
            if (kVar != null) {
                kVar.a(this.f26038l);
                return;
            }
            return;
        }
        JumpLoaderResult jumpLoaderResult3 = this.f26038l;
        if (jumpLoaderResult3 != null && !jumpLoaderResult3.isSuccess()) {
            k kVar2 = this.f26040n;
            if (kVar2 != null) {
                kVar2.a(this.f26038l);
                return;
            }
            return;
        }
        com.mbridge.msdk.click.entity.a aVar = this.f26037k;
        if (aVar != null && (jumpLoaderResult = this.f26038l) != null) {
            jumpLoaderResult.setStatusCode(aVar.f26004f);
        }
        m.a(this.f26032f, this.f26038l, this.f26037k, this.f26030d, this.f26031e, this.f26028b, this.f26041o, this.f26040n, this.f26027a);
    }

    /* compiled from: SocketRequestTask.java */
    /* loaded from: classes4.dex */
    class a implements o.f {
        a() {
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean a(String str) {
            boolean b10 = l.this.b(str);
            if (b10) {
                a();
            }
            return b10;
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean b(String str) {
            return false;
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean c(String str) {
            boolean b10 = l.this.b(str);
            if (b10) {
                a();
            }
            return b10;
        }

        @Override // com.mbridge.msdk.click.o.f
        public void a(String str, boolean z10, String str2) {
            l.this.b(str);
            l.this.f26038l.setContent(str2);
            a();
        }

        private void a() {
            synchronized (this) {
                try {
                    l.this.f26038l.setSuccess(true);
                    if (l.this.f26040n != null) {
                        l.this.f26040n.a(l.this.f26038l);
                    }
                    l.this.a();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.click.o.f
        public void a(int i10, String str, String str2, String str3) {
            if (!TextUtils.isEmpty(str2)) {
                l.this.f26038l.setExceptionMsg(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                l.this.f26038l.setContent(str3);
            }
            l.this.b(str);
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return m.a(str, this.f26032f, this.f26038l);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x016b A[EDGE_INSN: B:72:0x016b->B:66:0x016b ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mbridge.msdk.click.entity.JumpLoaderResult c(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.l.c(java.lang.String):com.mbridge.msdk.click.entity.JumpLoaderResult");
    }

    public void a(g gVar) {
        this.f26039m = gVar;
    }

    public void a(k kVar) {
        this.f26040n = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f26027a.release();
    }

    private String a(String str) {
        if (this.f26036j) {
            String a10 = com.mbridge.msdk.setting.b.a(this.f26028b, str);
            if (!TextUtils.isEmpty(a10)) {
                str = str + a10;
            }
        }
        return com.mbridge.msdk.util.b.a() ? m.a(this.f26032f, str) : str;
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void cancelTask() {
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void pauseTask(boolean z10) {
    }
}
