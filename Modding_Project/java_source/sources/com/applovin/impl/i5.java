package com.applovin.impl;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.impl.b6;
import java.util.List;
/* loaded from: classes2.dex */
public class i5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final List f8121g;

    /* renamed from: h  reason: collision with root package name */
    private final Activity f8122h;

    public i5(List list, Activity activity, com.applovin.impl.sdk.k kVar) {
        super("TaskAutoInitAdapters", kVar, true);
        this.f8121g = list;
        this.f8122h = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h3 h3Var) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Auto-initing adapter: " + h3Var);
        }
        this.f7960a.S().a(h3Var, this.f8122h);
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (this.f8121g.size() > 0) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str2 = this.f7961b;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Auto-initing ");
                sb2.append(this.f8121g.size());
                sb2.append(" adapters");
                if (this.f7960a.t0().c()) {
                    str = " in test mode";
                } else {
                    str = "";
                }
                sb2.append(str);
                sb2.append("...");
                oVar.a(str2, sb2.toString());
            }
            if (TextUtils.isEmpty(this.f7960a.V())) {
                this.f7960a.Q0();
            } else if (!this.f7960a.H0()) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.f7960a.V());
            }
            if (this.f8122h == null) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
            }
            for (final h3 h3Var : this.f8121g) {
                if (h3Var.s()) {
                    this.f7960a.r0().a(new Runnable() { // from class: com.applovin.impl.eb
                        @Override // java.lang.Runnable
                        public final void run() {
                            i5.this.a(h3Var);
                        }
                    }, b6.b.MEDIATION);
                } else {
                    this.f7960a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f7960a.O();
                        String str3 = this.f7961b;
                        O.a(str3, "Skipping eager auto-init for adapter " + h3Var);
                    }
                }
            }
        }
    }
}
