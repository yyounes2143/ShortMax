package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.b6;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class o5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.network.e f9150g;

    /* renamed from: h  reason: collision with root package name */
    private final AppLovinPostbackListener f9151h;

    /* renamed from: i  reason: collision with root package name */
    private final b6.b f9152i;

    /* loaded from: classes2.dex */
    class a implements AppLovinPostbackListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackFailure(String str, int i10) {
            o5.this.e();
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackSuccess(String str) {
            if (o5.this.f9151h != null) {
                o5.this.f9151h.onPostbackSuccess(o5.this.f9150g.f());
            }
        }
    }

    public o5(com.applovin.impl.sdk.network.e eVar, b6.b bVar, com.applovin.impl.sdk.k kVar, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", kVar);
        if (eVar != null) {
            this.f9150g = eVar;
            this.f9151h = appLovinPostbackListener;
            this.f9152i = bVar;
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        b bVar = new b(this.f9150g, b());
        bVar.a(this.f9152i);
        b().r0().a(bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!StringUtils.isValidString(this.f9150g.f())) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.d(this.f7961b, "Requested URL is not valid; nothing to do...");
            }
            AppLovinPostbackListener appLovinPostbackListener = this.f9151h;
            if (appLovinPostbackListener != null) {
                appLovinPostbackListener.onPostbackFailure(this.f9150g.f(), AppLovinErrorCodes.INVALID_URL);
            }
        } else if (this.f9150g.u()) {
            b().y0().a(this.f9150g, new a());
        } else {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends j6 {

        /* renamed from: m  reason: collision with root package name */
        final String f9154m;

        b(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
            this.f9154m = o5.this.f9150g.f();
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, Object obj, int i10) {
            if (obj instanceof String) {
                for (String str2 : this.f7960a.c(v4.f10290l0)) {
                    if (str2.startsWith(str2)) {
                        String str3 = (String) obj;
                        if (TextUtils.isEmpty(str3)) {
                            continue;
                        } else {
                            try {
                                JSONObject jSONObject = new JSONObject(str3);
                                r0.c(jSONObject, this.f7960a);
                                r0.b(jSONObject, this.f7960a);
                                r0.a(jSONObject, this.f7960a);
                                break;
                            } catch (JSONException unused) {
                                continue;
                            }
                        }
                    }
                }
            }
            if (o5.this.f9151h != null) {
                o5.this.f9151h.onPostbackSuccess(this.f9154m);
            }
            if (o5.this.f9150g.t()) {
                this.f7960a.u().a(o5.this.f9150g.s(), this.f9154m, i10, obj, null, true);
            }
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, Object obj) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str3 = this.f7961b;
                oVar.b(str3, "Failed to dispatch postback. Error code: " + i10 + " URL: " + this.f9154m);
            }
            if (o5.this.f9151h != null) {
                o5.this.f9151h.onPostbackFailure(this.f9154m, i10);
            }
            if (o5.this.f9150g.t()) {
                this.f7960a.u().a(o5.this.f9150g.s(), this.f9154m, i10, obj, str2, false);
            }
        }
    }
}
