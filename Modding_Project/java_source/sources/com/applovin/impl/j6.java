package com.applovin.impl;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.b6;
import com.applovin.impl.q0;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class j6 extends g5 implements q0.e {

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.network.a f8193g;

    /* renamed from: h  reason: collision with root package name */
    private final q0.e f8194h;

    /* renamed from: i  reason: collision with root package name */
    private b6.b f8195i;

    /* renamed from: j  reason: collision with root package name */
    private v4 f8196j;

    /* renamed from: k  reason: collision with root package name */
    private v4 f8197k;

    /* renamed from: l  reason: collision with root package name */
    protected q0.b f8198l;

    public j6(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
        this(aVar, kVar, false);
    }

    public abstract void a(String str, int i10, String str2, Object obj);

    public abstract void a(String str, Object obj, int i10);

    @Override // java.lang.Runnable
    public void run() {
        String str;
        q0 x10 = b().x();
        if (!b().F0() && !b().C0()) {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "AppLovin SDK is disabled");
            a(this.f8193g.f(), -22, null, null);
        } else if (StringUtils.isValidString(this.f8193g.f()) && this.f8193g.f().length() >= 4) {
            if (TextUtils.isEmpty(this.f8193g.h())) {
                if (this.f8193g.b() != null) {
                    str = ShareTarget.METHOD_POST;
                } else {
                    str = ShareTarget.METHOD_GET;
                }
                this.f8193g.b(str);
            }
            x10.a(this.f8193g, this.f8198l, this.f8194h);
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.b(this.f7961b, "Task has an invalid or null request endpoint.");
            }
            a(this.f8193g.f(), AppLovinErrorCodes.INVALID_URL, null, null);
        }
    }

    /* loaded from: classes2.dex */
    class a implements q0.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f8199a;

        a(com.applovin.impl.sdk.k kVar) {
            this.f8199a = kVar;
        }

        @Override // com.applovin.impl.q0.e
        public void a(String str, Object obj, int i10) {
            j6.this.f8193g.a(0);
            j6.this.a(str, obj, i10);
        }

        @Override // com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, Object obj) {
            long millis;
            boolean z10 = false;
            boolean z11 = i10 < 200 || i10 >= 500;
            boolean z12 = i10 == 429;
            boolean z13 = i10 != -1009 || j6.this.f8193g.q();
            boolean z14 = (i10 == -900 || i10 == -1000) ? false : true;
            if (z13 && z14 && (z11 || z12 || j6.this.f8193g.p())) {
                String a10 = j6.this.f8193g.a();
                if (j6.this.f8193g.j() <= 0) {
                    if (a10 != null && a10.equals(j6.this.f8193g.f())) {
                        j6 j6Var = j6.this;
                        j6Var.a(j6Var.f8197k);
                    } else {
                        j6 j6Var2 = j6.this;
                        j6Var2.a(j6Var2.f8196j);
                    }
                    j6 j6Var3 = j6.this;
                    j6Var3.a(j6Var3.f8193g.f(), i10, str2, obj);
                    return;
                }
                com.applovin.impl.sdk.o oVar = j6.this.f7962c;
                if (com.applovin.impl.sdk.o.a()) {
                    j6 j6Var4 = j6.this;
                    j6Var4.f7962c.k(j6Var4.f7961b, "Unable to send request due to server failure (code " + i10 + "). " + j6.this.f8193g.j() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(j6.this.f8193g.k()) + " seconds...");
                }
                int j10 = j6.this.f8193g.j() - 1;
                j6.this.f8193g.a(j10);
                if (j10 == 0) {
                    j6 j6Var5 = j6.this;
                    j6Var5.a(j6Var5.f8196j);
                    if (StringUtils.isValidString(a10) && a10.length() >= 4) {
                        com.applovin.impl.sdk.o oVar2 = j6.this.f7962c;
                        if (com.applovin.impl.sdk.o.a()) {
                            j6 j6Var6 = j6.this;
                            j6Var6.f7962c.d(j6Var6.f7961b, "Switching to backup endpoint " + a10);
                        }
                        j6.this.f8193g.a(a10);
                        z10 = true;
                    }
                }
                if (((Boolean) this.f8199a.a(v4.f10237e3)).booleanValue() && z10) {
                    millis = 0;
                } else {
                    millis = j6.this.f8193g.n() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, j6.this.f8193g.c())) : j6.this.f8193g.k();
                }
                b6 r02 = this.f8199a.r0();
                j6 j6Var7 = j6.this;
                r02.a(j6Var7, j6Var7.f8195i, millis);
                return;
            }
            j6 j6Var8 = j6.this;
            j6Var8.a(j6Var8.f8193g.f(), i10, str2, obj);
        }
    }

    public j6(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z10) {
        super("TaskRepeatRequest", kVar, z10);
        this.f8195i = b6.b.OTHER;
        if (aVar != null) {
            a(aVar.f());
            this.f8193g = aVar;
            this.f8198l = new q0.b();
            this.f8194h = new a(kVar);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    public void b(v4 v4Var) {
        this.f8197k = v4Var;
    }

    public void c(v4 v4Var) {
        this.f8196j = v4Var;
    }

    public void a(b6.b bVar) {
        this.f8195i = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v4 v4Var) {
        if (v4Var != null) {
            b().p0().a(v4Var, v4Var.a());
        }
    }
}
