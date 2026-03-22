package com.applovin.impl;

import android.content.Context;
import android.util.Log;
import com.applovin.impl.b6;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.ScriptInjector;
import com.iab.omid.library.applovin.adsession.Partner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;
/* loaded from: classes2.dex */
public class g4 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7957a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f7958b = com.applovin.impl.sdk.k.o();

    /* renamed from: c  reason: collision with root package name */
    private String f7959c;

    public g4(com.applovin.impl.sdk.k kVar) {
        this.f7957a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (this.f7959c != null) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f7958b.getResources().openRawResource(R.raw.omsdk_v1_5_3)));
            try {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb2.append(readLine);
                    } else {
                        this.f7959c = sb2.toString();
                        bufferedReader.close();
                        return;
                    }
                }
            } catch (IOException e10) {
                Log.e("OpenMeasurementService", "Failed to close the BufferReader for reading JavaScript Open Measurement SDK", e10);
            }
        } catch (Throwable th2) {
            this.f7957a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7957a.O().a("OpenMeasurementService", "Failed to retrieve resource omsdk_v1_5_3.js", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        Omid.activate(this.f7958b);
        this.f7957a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f7957a.O();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Init ");
            if (d()) {
                str = "succeeded";
            } else {
                str = "failed";
            }
            sb2.append(str);
            sb2.append(" and took ");
            sb2.append(System.currentTimeMillis() - currentTimeMillis);
            sb2.append("ms");
            O.a("OpenMeasurementService", sb2.toString());
        }
        h();
    }

    private void h() {
        this.f7957a.r0().a((g5) new p6(this.f7957a, "OpenMeasurementService", new Runnable() { // from class: com.applovin.impl.da
            @Override // java.lang.Runnable
            public final void run() {
                g4.this.f();
            }
        }), b6.b.OTHER);
    }

    public String c() {
        return Omid.getVersion();
    }

    public boolean d() {
        return Omid.isActive();
    }

    public boolean e() {
        String str = this.f7957a.o0().getExtraParameters().get("enable_omsdk_testing");
        if (StringUtils.isValidString(str)) {
            return Boolean.parseBoolean(str);
        }
        return false;
    }

    public void i() {
        if (((Boolean) this.f7957a.a(v4.f10226d0)).booleanValue()) {
            this.f7957a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f7957a.O();
                O.a("OpenMeasurementService", "Initializing Open Measurement SDK v" + c() + "...");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ea
                @Override // java.lang.Runnable
                public final void run() {
                    g4.this.g();
                }
            });
        }
    }

    public String a() {
        return this.f7959c;
    }

    public Partner b() {
        return Partner.createPartner((String) this.f7957a.a(v4.f10234e0), AppLovinSdk.VERSION);
    }

    public String a(String str, Map map) {
        String str2;
        try {
            if (e()) {
                String a10 = h4.a(this.f7957a, map);
                if (StringUtils.isValidString(a10)) {
                    str2 = ScriptInjector.injectScriptContentIntoHtml(a10, str);
                    return ScriptInjector.injectScriptContentIntoHtml(this.f7959c, str2);
                }
            }
            str2 = str;
            return ScriptInjector.injectScriptContentIntoHtml(this.f7959c, str2);
        } catch (Throwable th2) {
            this.f7957a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7957a.O().a("OpenMeasurementService", "Failed to inject JavaScript SDK into HTML", th2);
            }
            return str;
        }
    }
}
