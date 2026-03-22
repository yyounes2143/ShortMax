package com.applovin.impl;

import android.app.Activity;
import androidx.exifinterface.media.ExifInterface;
import androidx.webkit.UserAgentMetadata;
import com.applovin.impl.b6;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class a6 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7312g;

    public a6(com.applovin.impl.sdk.k kVar) {
        super("TaskInitializeSdk", kVar, true);
        this.f7312g = kVar;
    }

    private void f() {
        if (this.f7312g.S().c()) {
            return;
        }
        Activity v02 = this.f7312g.v0();
        if (v02 != null) {
            this.f7312g.S().a(v02);
            return;
        }
        q1 E = this.f7312g.E();
        c2 c2Var = c2.f7661p0;
        E.a(c2Var, this.f7961b + ":maybeInitializeAdapters()");
        this.f7312g.r0().a(new p6(this.f7312g, true, "initializeAdapters", new Runnable() { // from class: com.applovin.impl.r8
            @Override // java.lang.Runnable
            public final void run() {
                a6.this.e();
            }
        }), b6.b.CORE, TimeUnit.SECONDS.toMillis(1L));
    }

    private void g() {
        String str;
        String str2;
        String str3;
        boolean c10 = this.f7312g.p0().c();
        Map o10 = this.f7312g.B().o();
        Map K = this.f7312g.B().K();
        if (c10) {
            str = this.f7312g.B().f().a();
        } else {
            str = "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        }
        if (c10) {
            str2 = o10.get("idfv") + " (use this for test devices)";
        } else {
            str2 = "<Enable verbose logging to see the App Set ID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        }
        s2 s2Var = new s2();
        s2Var.a().a("=====AppLovin SDK=====");
        s2Var.a("===SDK Versions===").a("Version", AppLovinSdk.VERSION).a("Plugin Version", this.f7312g.a(v4.I3)).a("Ad Review Version", j.b()).a("OM SDK Version", this.f7312g.e0().c());
        s2Var.a("===Device Info===").a("OS", k7.d()).a("GAID", str).a("App Set ID", str2).a(ExifInterface.TAG_MODEL, o10.get("model")).a("Locale", o10.get("locale")).a("Emulator", o10.get("sim")).a(UserAgentMetadata.FORM_FACTOR_TABLET, o10.get("is_tablet"));
        s2Var.a("===App Info===").a("Application ID", K.get("package_name")).a("Target SDK", K.get("target_sdk"));
        s2Var.a("===SDK Settings===").a("SDK Key", this.f7312g.j0()).a("Mediation Provider", this.f7312g.V()).a("TG", j7.a(this.f7312g)).a("MD", this.f7312g.a(v4.f10353t)).a("Test Mode On", Boolean.valueOf(this.f7312g.t0().c())).a("Verbose Logging On", Boolean.valueOf(c10));
        s2Var.a("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").a(p0.a(a()));
        s2Var.a("===MAX Terms and Privcay Policy Flow===");
        t0 y10 = this.f7312g.y();
        boolean j10 = y10.j();
        s2Var.a("Enabled", Boolean.valueOf(j10));
        if (j10) {
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = this.f7312g.w().getConsentFlowUserGeography();
            AppLovinSdkConfiguration.ConsentFlowUserGeography d10 = y10.d();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography2 = AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
            String str4 = "Other";
            if (consentFlowUserGeography == consentFlowUserGeography2) {
                str3 = "GDPR";
            } else if (consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER) {
                str3 = "Other";
            } else {
                str3 = "Unknown";
            }
            s2Var.a("Consent Flow Geography", str3);
            if (k7.c(this.f7312g)) {
                if (d10 == consentFlowUserGeography2) {
                    str4 = "GDPR";
                } else if (consentFlowUserGeography != AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER) {
                    str4 = "None";
                }
                s2Var.a("Debug User Geography", str4);
            }
        }
        s2Var.a("Privacy Policy URI", y10.f()).a("Terms of Service URI", y10.h());
        s2Var.a("===CMP (CONSENT MANAGEMENT PLATFORM)===").a(this.f7312g.s0().i());
        s2Var.a();
        com.applovin.impl.sdk.o.g("AppLovinSdk", s2Var.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0199, code lost:
        if (r12.f7312g.C0() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0222, code lost:
        if (r12.f7312g.C0() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0224, code lost:
        r2 = "succeeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0225, code lost:
        r10.append(r2);
        r10.append(" in ");
        r10.append(java.lang.System.currentTimeMillis() - r6);
        r10.append("ms");
        r8.a(r9, r10.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x023d, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.a6.run():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f7312g.S().a(this.f7312g.e().b());
    }
}
