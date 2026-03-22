package com.applovin.impl.privacy.cmp;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.impl.c2;
import com.applovin.impl.k0;
import com.applovin.impl.k7;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final k f9261a;

    /* renamed from: b  reason: collision with root package name */
    private final o f9262b;

    /* renamed from: c  reason: collision with root package name */
    private ConsentForm f9263c;

    /* renamed from: d  reason: collision with root package name */
    private int f9264d;

    /* renamed from: com.applovin.impl.privacy.cmp.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0116a {
        void onFlowHidden(Bundle bundle);

        void onFlowLoadFailed(CmpErrorImpl cmpErrorImpl);

        void onFlowLoaded(Bundle bundle);

        void onFlowShowFailed(CmpErrorImpl cmpErrorImpl);
    }

    public a(k kVar) {
        this.f9261a = kVar;
        this.f9262b = kVar.O();
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(k.o());
        a("Initializing with SDK Version: " + b() + ", consentStatus: " + consentInformation.getConsentStatus() + ", consentFormAvailable: " + consentInformation.isConsentFormAvailable());
    }

    public void a() {
        if (this.f9263c != null) {
            this.f9263c = null;
        }
        this.f9264d = 0;
    }

    public String b() {
        return null;
    }

    public void c() {
        a("Resetting consent information");
        UserMessagingPlatform.getConsentInformation(k.o()).reset();
    }

    public boolean d() {
        return true;
    }

    public boolean e() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(InterfaceC0116a interfaceC0116a, FormError formError) {
        b("Failed to request consent info with error: " + formError.getMessage());
        interfaceC0116a.onFlowLoadFailed(a(formError, "Consent info update failed"));
    }

    private boolean c(String str) {
        if (this.f9261a.c(v4.P6).contains(str)) {
            Integer num = (Integer) this.f9261a.a(v4.O6);
            return num.intValue() < 0 || this.f9264d < num.intValue();
        }
        return false;
    }

    public void a(final Activity activity, k0 k0Var, final InterfaceC0116a interfaceC0116a) {
        ConsentRequestParameters.Builder builder = new ConsentRequestParameters.Builder();
        if (k7.c(this.f9261a) && k0Var.a() == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR) {
            builder.setConsentDebugSettings(new ConsentDebugSettings.Builder(activity).setForceTesting(true).setDebugGeography(1).addTestDeviceHashedId(StringUtils.emptyIfNull(this.f9261a.o0().getExtraParameters().get("google_test_device_hashed_id"))).build());
        }
        UserMessagingPlatform.getConsentInformation(activity).requestConsentInfoUpdate(activity, builder.build(), new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.applovin.impl.privacy.cmp.b
            @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
            public final void onConsentInfoUpdateSuccess() {
                a.this.a(activity, interfaceC0116a);
            }
        }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.applovin.impl.privacy.cmp.c
            @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
            public final void onConsentInfoUpdateFailure(FormError formError) {
                a.this.b(interfaceC0116a, formError);
            }
        });
    }

    public void b(Activity activity, final k0 k0Var, final InterfaceC0116a interfaceC0116a) {
        if (this.f9263c == null) {
            b("Failed to show - not ready yet");
            interfaceC0116a.onFlowShowFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_UNAVAILABLE, "Consent form not ready"));
            return;
        }
        a("Showing consent form...");
        this.f9263c.show(activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.applovin.impl.privacy.cmp.h
            @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
            public final void onConsentFormDismissed(FormError formError) {
                a.this.a(k0Var, interfaceC0116a, formError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void a(final FormError formError, final k0 k0Var, final InterfaceC0116a interfaceC0116a) {
        a("Retrying to load and show consent form...");
        this.f9264d++;
        UserMessagingPlatform.loadConsentForm(k.o(), new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.applovin.impl.privacy.cmp.f
            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
            public final void onConsentFormLoadSuccess(ConsentForm consentForm) {
                a.this.a(interfaceC0116a, formError, k0Var, consentForm);
            }
        }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: com.applovin.impl.privacy.cmp.g
            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
            public final void onConsentFormLoadFailure(FormError formError2) {
                a.this.a(interfaceC0116a, formError, formError2);
            }
        });
    }

    private void b(String str) {
        if (o.a()) {
            this.f9262b.b("GoogleCmpAdapter", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, final InterfaceC0116a interfaceC0116a) {
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(activity);
        boolean isConsentFormAvailable = consentInformation.isConsentFormAvailable();
        int consentStatus = consentInformation.getConsentStatus();
        a("Loaded parameters consentStatus: " + consentStatus + ", consentFormAvailable: " + isConsentFormAvailable);
        if (!isConsentFormAvailable) {
            b("Failed to load form.");
            interfaceC0116a.onFlowLoadFailed(new CmpErrorImpl(AppLovinCmpError.Code.FORM_UNAVAILABLE, "Consent form unavailable"));
        } else if (consentStatus != 2) {
            b("Failed to load with consent status: " + consentStatus);
            AppLovinCmpError.Code code = AppLovinCmpError.Code.FORM_NOT_REQUIRED;
            interfaceC0116a.onFlowLoadFailed(new CmpErrorImpl(code, "Consent form not required for consent status: " + consentStatus));
        } else {
            a("Successfully requested consent info");
            a("Loading consent form...");
            UserMessagingPlatform.loadConsentForm(activity, new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.applovin.impl.privacy.cmp.d
                @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
                public final void onConsentFormLoadSuccess(ConsentForm consentForm) {
                    a.this.a(interfaceC0116a, consentForm);
                }
            }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: com.applovin.impl.privacy.cmp.e
                @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
                public final void onConsentFormLoadFailure(FormError formError) {
                    a.this.a(interfaceC0116a, formError);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterfaceC0116a interfaceC0116a, ConsentForm consentForm) {
        a("Successfully loaded consent form");
        this.f9263c = consentForm;
        interfaceC0116a.onFlowLoaded(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterfaceC0116a interfaceC0116a, FormError formError) {
        b("Failed to load with error: " + formError.getMessage());
        interfaceC0116a.onFlowLoadFailed(a(formError, "Consent form load failed"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final k0 k0Var, final InterfaceC0116a interfaceC0116a, final FormError formError) {
        if (formError != null) {
            String valueOf = String.valueOf(formError.getErrorCode());
            String message = formError.getMessage();
            HashMap hashMap = new HashMap(2);
            hashMap.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, valueOf);
            hashMap.put("error_message", message);
            this.f9261a.E().a(c2.B0, "googleConsentFormDismissed", hashMap);
            if (c(valueOf)) {
                a("Consent form was dismissed due to error: " + message);
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.privacy.cmp.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.a(formError, k0Var, interfaceC0116a);
                    }
                });
                return;
            }
            b("Failed to show with error: " + message);
            interfaceC0116a.onFlowShowFailed(a(formError, "Consent form show failed"));
            return;
        }
        a("Consent form finished showing");
        interfaceC0116a.onFlowHidden(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterfaceC0116a interfaceC0116a, FormError formError, k0 k0Var, ConsentForm consentForm) {
        a("Successfully re-loaded consent form");
        this.f9263c = consentForm;
        Activity v02 = this.f9261a.v0();
        if (v02 == null) {
            interfaceC0116a.onFlowShowFailed(a(formError, "Consent form show failed"));
        } else {
            b(v02, k0Var, interfaceC0116a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterfaceC0116a interfaceC0116a, FormError formError, FormError formError2) {
        b("Retry to load failed with error: " + formError2.getMessage());
        interfaceC0116a.onFlowShowFailed(a(formError, "Consent form show failed"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
        if (r1 != 4) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.applovin.impl.privacy.cmp.CmpErrorImpl a(com.google.android.ump.FormError r4, java.lang.String r5) {
        /*
            r3 = this;
            com.applovin.sdk.AppLovinCmpError$Code r0 = com.applovin.sdk.AppLovinCmpError.Code.UNSPECIFIED
            int r1 = r4.getErrorCode()
            r2 = 1
            if (r1 == r2) goto L16
            r2 = 2
            if (r1 == r2) goto L16
            r2 = 3
            if (r1 == r2) goto L13
            r2 = 4
            if (r1 == r2) goto L16
            goto L18
        L13:
            com.applovin.sdk.AppLovinCmpError$Code r0 = com.applovin.sdk.AppLovinCmpError.Code.INTEGRATION_ERROR
            goto L18
        L16:
            com.applovin.sdk.AppLovinCmpError$Code r0 = com.applovin.sdk.AppLovinCmpError.Code.FORM_UNAVAILABLE
        L18:
            com.applovin.impl.privacy.cmp.CmpErrorImpl r1 = new com.applovin.impl.privacy.cmp.CmpErrorImpl
            int r2 = r4.getErrorCode()
            java.lang.String r4 = r4.getMessage()
            r1.<init>(r0, r5, r2, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.privacy.cmp.a.a(com.google.android.ump.FormError, java.lang.String):com.applovin.impl.privacy.cmp.CmpErrorImpl");
    }

    private void a(String str) {
        if (o.a()) {
            this.f9262b.a("GoogleCmpAdapter", str);
        }
    }
}
