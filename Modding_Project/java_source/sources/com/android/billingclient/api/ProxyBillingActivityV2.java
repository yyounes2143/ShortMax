package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzie;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes2.dex */
public class ProxyBillingActivityV2 extends ComponentActivity {

    /* renamed from: a  reason: collision with root package name */
    private ActivityResultLauncher f6544a;

    /* renamed from: b  reason: collision with root package name */
    private ActivityResultLauncher f6545b;

    /* renamed from: c  reason: collision with root package name */
    private ActivityResultLauncher f6546c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ResultReceiver f6547d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ResultReceiver f6548e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ResultReceiver f6549f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void f(ActivityResult activityResult) {
        Bundle extras;
        Intent data = activityResult.getData();
        int responseCode = com.google.android.gms.internal.play_billing.zzc.zzh(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.f6547d;
        if (resultReceiver != null) {
            if (data == null) {
                extras = null;
            } else {
                extras = data.getExtras();
            }
            resultReceiver.send(responseCode, extras);
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            int resultCode = activityResult.getResultCode();
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + resultCode + " and billing's responseCode: " + responseCode);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void g(ActivityResult activityResult) {
        Bundle extras;
        Intent data = activityResult.getData();
        int responseCode = com.google.android.gms.internal.play_billing.zzc.zzh(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.f6548e;
        if (resultReceiver != null) {
            if (data == null) {
                extras = null;
            } else {
                extras = data.getExtras();
            }
            resultReceiver.send(responseCode, extras);
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingActivityV2", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(activityResult.getResultCode()), Integer.valueOf(responseCode)));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void h(ActivityResult activityResult) {
        Bundle extras;
        Intent data = activityResult.getData();
        if (data == null) {
            extras = null;
        } else {
            extras = data.getExtras();
        }
        if (activityResult.getResultCode() != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingActivityV2", String.format("External offer flow finished with resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
            extras.putInt("INTERNAL_LOG_ERROR_REASON", zzie.ERROR_IN_ACTIVITY_RESULT.zza());
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("External offer flow finished with error resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
        }
        int responseCode = com.google.android.gms.internal.play_billing.zzc.zzh(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.f6549f;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, extras);
        } else {
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingActivityV2", "External offer flow result receiver is null");
        }
        if (responseCode != 0) {
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingActivityV2", String.format("External offer flow finished with billing responseCode: %s", Integer.valueOf(responseCode)));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f6544a = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzct
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProxyBillingActivityV2.this.f((ActivityResult) obj);
            }
        });
        this.f6545b = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzcu
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProxyBillingActivityV2.this.g((ActivityResult) obj);
            }
        });
        this.f6546c = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzcv
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProxyBillingActivityV2.this.h((ActivityResult) obj);
            }
        });
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zzc.zzm("ProxyBillingActivityV2", "Launching Play Store billing dialog");
            if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
                this.f6547d = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
                this.f6544a.launch(new IntentSenderRequest.Builder((PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")).build());
                return;
            } else if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
                this.f6548e = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
                this.f6545b.launch(new IntentSenderRequest.Builder((PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent")).build());
                return;
            } else if (getIntent().hasExtra("external_offer_flow_pending_intent")) {
                this.f6549f = (ResultReceiver) getIntent().getParcelableExtra("external_offer_flow_result_receiver");
                this.f6546c.launch(new IntentSenderRequest.Builder((PendingIntent) getIntent().getParcelableExtra("external_offer_flow_pending_intent")).build());
                return;
            } else {
                return;
            }
        }
        if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
            this.f6547d = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
        }
        if (bundle.containsKey("external_payment_dialog_result_receiver")) {
            this.f6548e = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
        }
        if (bundle.containsKey("external_offer_flow_result_receiver")) {
            this.f6549f = (ResultReceiver) bundle.getParcelable("external_offer_flow_result_receiver");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f6547d;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f6548e;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.f6549f;
        if (resultReceiver3 != null) {
            bundle.putParcelable("external_offer_flow_result_receiver", resultReceiver3);
        }
    }
}
