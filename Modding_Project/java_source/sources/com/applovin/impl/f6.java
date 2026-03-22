package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class f6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final AppLovinAdLoadListener f7911g;

    /* renamed from: h  reason: collision with root package name */
    private final a f7912h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a extends p7 {
        a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
            super(jSONObject, jSONObject2, kVar);
        }

        void a(m8 m8Var) {
            if (m8Var != null) {
                this.f9220b.add(m8Var);
                return;
            }
            throw new IllegalArgumentException("No aggregated vast response specified");
        }
    }

    /* loaded from: classes2.dex */
    private static final class b extends f6 {

        /* renamed from: i  reason: collision with root package name */
        private final String f7913i;

        b(String str, p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
            super(p7Var, appLovinAdLoadListener, kVar);
            this.f7913i = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m8 b10 = b(this.f7913i);
            if (b10 != null) {
                a(b10);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str = this.f7961b;
                oVar.b(str, "Unable to process XML: " + this.f7913i);
            }
            c(this.f7913i);
            a(q7.XML_PARSING);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c extends f6 {

        /* renamed from: i  reason: collision with root package name */
        private final JSONObject f7914i;

        c(p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
            super(p7Var, appLovinAdLoadListener, kVar);
            this.f7914i = p7Var.b();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Processing SDK JSON response...");
            }
            String string = JsonUtils.getString(this.f7914i, "xml", null);
            if (StringUtils.isValidString(string)) {
                if (string.length() < ((Integer) this.f7960a.a(v4.F4)).intValue()) {
                    m8 b10 = b(string);
                    if (b10 != null) {
                        a(b10);
                        return;
                    }
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f7962c;
                        String str = this.f7961b;
                        oVar.b(str, "Unable to process XML: " + string);
                    }
                    c(string);
                    a(q7.XML_PARSING);
                    return;
                }
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.b(this.f7961b, "VAST response is over max length");
                }
                a(q7.XML_PARSING);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.b(this.f7961b, "No VAST response received.");
            }
            a(q7.NO_WRAPPER_RESPONSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d extends f6 {

        /* renamed from: i  reason: collision with root package name */
        private final m8 f7915i;

        d(m8 m8Var, p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
            super(p7Var, appLovinAdLoadListener, kVar);
            if (m8Var != null) {
                if (p7Var != null) {
                    if (appLovinAdLoadListener != null) {
                        this.f7915i = m8Var;
                        return;
                    }
                    throw new IllegalArgumentException("No callback specified.");
                }
                throw new IllegalArgumentException("No context specified.");
            }
            throw new IllegalArgumentException("No response specified.");
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Processing VAST Wrapper response...");
            }
            a(this.f7915i);
        }
    }

    f6(p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        super("TaskProcessVastResponse", kVar);
        if (p7Var != null) {
            this.f7911g = appLovinAdLoadListener;
            this.f7912h = (a) p7Var;
            return;
        }
        throw new IllegalArgumentException("No context specified.");
    }

    public static f6 a(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        return new c(new a(jSONObject, jSONObject2, kVar), appLovinAdLoadListener, kVar);
    }

    protected m8 b(String str) {
        try {
            return n8.a(str, this.f7960a);
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "Failed to process VAST response", th2);
            }
            a(q7.XML_PARSING);
            this.f7960a.E().a(this.f7961b, th2);
            return null;
        }
    }

    protected void c(String str) {
        if (str == null) {
            return;
        }
        Iterator<String> it = StringUtils.getRegexMatches(StringUtils.match(str, (String) this.f7960a.a(v4.Y4)), 1).iterator();
        while (it.hasNext()) {
            m8 b10 = b("<VAST>" + it.next() + "</VAST>");
            if (b10 != null) {
                this.f7912h.a(b10);
            }
        }
    }

    public static f6 a(String str, JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        return new b(str, new a(jSONObject, jSONObject2, kVar), appLovinAdLoadListener, kVar);
    }

    public static f6 a(m8 m8Var, p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.k kVar) {
        return new d(m8Var, p7Var, appLovinAdLoadListener, kVar);
    }

    void a(m8 m8Var) {
        int d10 = this.f7912h.d();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Finished parsing XML at depth " + d10);
        }
        this.f7912h.a(m8Var);
        if (x7.b(m8Var)) {
            int intValue = ((Integer) this.f7960a.a(v4.G4)).intValue();
            if (d10 < intValue) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.a(this.f7961b, "VAST response is wrapper. Resolving...");
                }
                this.f7960a.r0().a(new n6(this.f7912h, this.f7911g, this.f7960a));
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7962c;
                String str2 = this.f7961b;
                oVar2.b(str2, "Reached beyond max wrapper depth of " + intValue);
            }
            a(q7.WRAPPER_LIMIT_REACHED);
        } else if (x7.a(m8Var)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.a(this.f7961b, "VAST response is inline. Rendering ad...");
            }
            this.f7960a.r0().a(new i6(this.f7912h, this.f7911g, this.f7960a));
        } else {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7962c.b(this.f7961b, "VAST response is an error");
            }
            a(q7.NO_WRAPPER_RESPONSE);
        }
    }

    void a(q7 q7Var) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.b(str, "Failed to process VAST response due to VAST error code " + q7Var);
        }
        x7.a(this.f7912h, this.f7911g, q7Var, -6, this.f7960a);
    }
}
