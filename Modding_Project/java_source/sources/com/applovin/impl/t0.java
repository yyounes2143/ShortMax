package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.URLUtil;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.privacy.consentFlow.TermsAndPrivacyPolicyFlowSettingsImpl;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t0;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.AdError;
import com.inmobi.sdk.InMobiSdk;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class t0 implements AppLovinCommunicatorSubscriber, AppLovinCommunicatorPublisher {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10026a;

    /* renamed from: b  reason: collision with root package name */
    private final y0 f10027b;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10028a;

        static {
            int[] iArr = new int[AppLovinSdkConfiguration.ConsentFlowUserGeography.values().length];
            f10028a = iArr;
            try {
                iArr[AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10028a[AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10028a[AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f10029a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f10030b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f10031c;

        /* renamed from: d  reason: collision with root package name */
        private AppLovinCmpError f10032d;

        /* renamed from: e  reason: collision with root package name */
        private s0 f10033e;

        public b() {
        }

        public boolean b() {
            return this.f10029a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void c() {
            this.f10031c = true;
            this.f10029a = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void d() {
            this.f10030b = true;
            this.f10029a = true;
        }

        public b(s0 s0Var) {
            this.f10033e = s0Var;
        }

        public boolean a() {
            return this.f10031c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(AppLovinCmpError appLovinCmpError) {
            this.f10032d = appLovinCmpError;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(s0 s0Var) {
            this.f10033e = s0Var;
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(b bVar);
    }

    public t0(com.applovin.impl.sdk.k kVar) {
        this.f10026a = kVar;
        this.f10027b = new y0(kVar);
        if (k7.k(com.applovin.impl.sdk.k.o())) {
            AppLovinCommunicator.getInstance(com.applovin.impl.sdk.k.o()).subscribe(this, "start_sdk_consent_flow");
        }
    }

    public Uri f() {
        return c().getPrivacyPolicyUri();
    }

    public String g() {
        return "Migrate to the new Terms and Privacy Policy Flow by following these steps:\n\t1. Delete the 'terms_flow_settings' entry from your 'applovin_settings.xml' file.\n\t2. Follow the integration instructions in our documentation: " + a();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "consent_flow_manager";
    }

    public Uri h() {
        return c().getTermsOfServiceUri();
    }

    public boolean i() {
        return this.f10027b.a();
    }

    public boolean j() {
        Map<String, String> extraParameters = this.f10026a.o0().getExtraParameters();
        if (extraParameters.containsKey("consent_flow_enabled")) {
            return Boolean.parseBoolean(extraParameters.get("consent_flow_enabled"));
        }
        return c().isEnabled();
    }

    public boolean k() {
        if (k7.c(this.f10026a)) {
            int i10 = a.f10028a[d().ordinal()];
            if (i10 == 1) {
                return true;
            }
            if (i10 == 2) {
                return false;
            }
        }
        if (this.f10026a.w().getConsentFlowUserGeography() != AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
            return false;
        }
        return true;
    }

    public boolean l() {
        return this.f10026a.o0().getExtraParameters().containsKey("terms_flow_settings");
    }

    public boolean m() {
        return c().shouldShowTermsAndPrivacyPolicyAlertInGdpr();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.f10027b.a(this.f10026a.v0(), new c() { // from class: com.applovin.impl.af
            @Override // com.applovin.impl.t0.c
            public final void a(t0.b bVar) {
                t0.this.a(bVar);
            }
        });
    }

    public static TermsAndPrivacyPolicyFlowSettingsImpl a(Context context) {
        if (context == null) {
            com.applovin.impl.sdk.o.h("ConsentFlowManager", "Failed to get default Terms and Privacy Policy flow settings.");
            return new TermsAndPrivacyPolicyFlowSettingsImpl(false, false, AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN, null, null);
        }
        String a10 = k7.a(context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName()), context, (com.applovin.impl.sdk.k) null);
        JSONObject jSONObject = JsonUtils.getJSONObject(StringUtils.isValidString(a10) ? JsonUtils.jsonObjectFromJsonString(a10, new JSONObject()) : new JSONObject(), "consent_flow_settings", new JSONObject());
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = JsonUtils.getBoolean(jSONObject, "consent_flow_enabled", bool);
        Boolean bool3 = JsonUtils.getBoolean(jSONObject, "consent_flow_show_terms_and_privacy_policy_alert_in_gdpr", bool);
        String string = JsonUtils.getString(jSONObject, "consent_flow_debug_user_geography", "");
        String string2 = JsonUtils.getString(jSONObject, "consent_flow_terms_of_service", null);
        Uri parse = URLUtil.isValidUrl(string2) ? Uri.parse(string2) : null;
        String string3 = JsonUtils.getString(jSONObject, "consent_flow_privacy_policy", null);
        return new TermsAndPrivacyPolicyFlowSettingsImpl(bool2.booleanValue(), bool3.booleanValue(), a(string), URLUtil.isValidUrl(string3) ? Uri.parse(string3) : null, parse);
    }

    private TermsAndPrivacyPolicyFlowSettingsImpl c() {
        return (TermsAndPrivacyPolicyFlowSettingsImpl) this.f10026a.o0().getTermsAndPrivacyPolicyFlowSettings();
    }

    public JSONObject b() {
        TermsAndPrivacyPolicyFlowSettingsImpl c10 = c();
        Uri privacyPolicyUri = c10.getPrivacyPolicyUri();
        Uri termsOfServiceUri = c10.getTermsOfServiceUri();
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "enabled", String.valueOf(j()));
        String str = "";
        JsonUtils.putString(jSONObject, "privacy_policy_url", privacyPolicyUri != null ? privacyPolicyUri.toString() : "");
        if (termsOfServiceUri != null) {
            str = termsOfServiceUri.toString();
        }
        JsonUtils.putString(jSONObject, "terms_of_service_url", str);
        return jSONObject;
    }

    public AppLovinSdkConfiguration.ConsentFlowUserGeography d() {
        return c().getDebugUserGeography();
    }

    public String e() {
        Uri f10 = f();
        Uri h10 = h();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nConsent Flow Enabled - ");
        sb2.append(j());
        sb2.append("\nTerms of Service - ");
        if (h10 == null) {
            h10 = AdError.UNDEFINED_DOMAIN;
        }
        sb2.append(h10);
        sb2.append("\nPrivacy Policy - ");
        if (f10 == null) {
            f10 = AdError.UNDEFINED_DOMAIN;
        }
        sb2.append(f10);
        return sb2.toString();
    }

    private void b(final Activity activity) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.df
            @Override // java.lang.Runnable
            public final void run() {
                t0.this.a(activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Uri uri, DialogInterface dialogInterface, int i10) {
        throw new IllegalStateException("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL Please refer to " + uri.toString());
    }

    public void a(Activity activity, final c cVar) {
        if (!j()) {
            cVar.a(new b(new s0(s0.f9426c, "Failed to start consent flow. Please make sure that the consent flow is enabled.")));
        } else if (c().getPrivacyPolicyUri() == null) {
            b(activity);
        } else {
            this.f10027b.a(activity, new c() { // from class: com.applovin.impl.ef
                @Override // com.applovin.impl.t0.c
                public final void a(t0.b bVar) {
                    t0.this.a(cVar, bVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c cVar, b bVar) {
        if (bVar.f10033e == null) {
            this.f10026a.b(x4.f10525s, Boolean.FALSE);
        }
        cVar.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar) {
        if (bVar.f10033e == null) {
            this.f10026a.b(x4.f10525s, Boolean.FALSE);
        }
        AppLovinCommunicator.getInstance(com.applovin.impl.sdk.k.o()).getMessagingService().publish(new AppLovinCommunicatorMessage(new Bundle(), "sdk_consent_flow_finished", this));
    }

    private static AppLovinSdkConfiguration.ConsentFlowUserGeography a(String str) {
        if (InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES.equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
        }
        if ("other".equalsIgnoreCase(str)) {
            return AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER;
        }
        return AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        final Uri a10 = a();
        new AlertDialog.Builder(activity).setTitle("Missing Privacy Policy URL").setMessage("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL").setNeutralButton("Go To Documentation", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.bf
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                t0.this.a(a10, dialogInterface, i10);
            }
        }).setNegativeButton("DISMISS", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.cf
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                t0.b(a10, dialogInterface, i10);
            }
        }).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Uri uri, DialogInterface dialogInterface, int i10) {
        h7.a(uri, com.applovin.impl.sdk.k.o(), this.f10026a);
        throw new IllegalStateException("You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL Please refer to " + uri.toString());
    }

    private Uri a() {
        return Uri.parse((String) this.f10026a.a(this.f10026a.I0() ? v4.M6 : v4.L6));
    }
}
