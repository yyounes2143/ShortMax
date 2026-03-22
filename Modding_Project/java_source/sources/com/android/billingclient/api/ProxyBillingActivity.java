package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingResult;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@UsedByReflection("PlatformActivityProxy")
@zzq
/* loaded from: classes2.dex */
public class ProxyBillingActivity extends Activity {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ResultReceiver f6538a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6539b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6540c;

    /* renamed from: d  reason: collision with root package name */
    private int f6541d;

    /* renamed from: e  reason: collision with root package name */
    private long f6542e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6543f;

    private zzie a(int i10) {
        if (i10 != -1) {
            if (i10 != 0) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return zzie.NULL_DATA_WITH_OTHER_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
                        }
                        return zzie.NULL_DATA_WITH_ON_CREATE_RUNTIME_EXCEPTION_RESULT_CODE;
                    }
                    return zzie.NULL_DATA_WITH_PLAY_CANCELED_WITHOUT_COMPLETE_ACTION_RESULT_CODE;
                }
                return zzie.NULL_DATA_WITH_PLAY_CANCELED_RESULT_CODE;
            }
            return zzie.NULL_DATA_WITH_CANCELLED_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
        }
        return zzie.NULL_DATA_WITH_OK_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT;
    }

    private Intent b(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    private Intent c(zzie zzieVar, long j10) {
        Intent d10 = d();
        d10.putExtra("RESPONSE_CODE", 6);
        d10.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(6);
        newBuilder.setDebugMessage("An internal error occurred.");
        BillingResult build = newBuilder.build();
        int i10 = zzcg.zza;
        d10.putExtra("FAILURE_LOGGING_PAYLOAD", zzcg.zzb(zzieVar, 2, build, null, zzil.BROADCAST_ACTION_UNSPECIFIED).zzM());
        d10.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
        d10.putExtra("billingClientTransactionId", j10);
        d10.putExtra("wasServiceAutoReconnected", this.f6543f);
        return d10;
    }

    private Intent d() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00de  */
    @Override // android.app.Activity
    @com.android.billingclient.api.zzq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onActivityResult(int r6, int r7, @androidx.annotation.Nullable android.content.Intent r8) {
        /*
            r5 = this;
            super.onActivityResult(r6, r7, r8)
            r0 = 100
            r1 = 110(0x6e, float:1.54E-43)
            java.lang.String r2 = "ProxyBillingActivity"
            if (r6 == r0) goto L42
            if (r6 != r1) goto Le
            goto L42
        Le:
            r7 = 101(0x65, float:1.42E-43)
            if (r6 != r7) goto L27
            int r6 = com.google.android.gms.internal.play_billing.zzc.zza(r8, r2)
            android.os.ResultReceiver r7 = r5.f6538a
            if (r7 == 0) goto Le7
            if (r8 != 0) goto L1e
            r8 = 0
            goto L22
        L1e:
            android.os.Bundle r8 = r8.getExtras()
        L22:
            r7.send(r6, r8)
            goto Le7
        L27:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Got onActivityResult with wrong requestCode: "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = "; skipping..."
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.google.android.gms.internal.play_billing.zzc.zzn(r2, r6)
            goto Le7
        L42:
            com.android.billingclient.api.BillingResult r0 = com.google.android.gms.internal.play_billing.zzc.zzh(r8, r2)
            int r0 = r0.getResponseCode()
            r3 = -1
            if (r7 != r3) goto L50
            if (r0 == 0) goto L6d
            r7 = r3
        L50:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Activity finished with resultCode "
            r3.append(r4)
            r3.append(r7)
            java.lang.String r4 = " and billing's responseCode: "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            com.google.android.gms.internal.play_billing.zzc.zzn(r2, r0)
            r3 = r7
        L6d:
            if (r8 == 0) goto Lb9
            android.os.Bundle r7 = r8.getExtras()
            if (r7 == 0) goto Lab
            android.os.Bundle r7 = r8.getExtras()
            java.lang.String r0 = "ALTERNATIVE_BILLING_USER_CHOICE_DATA"
            java.lang.String r7 = r7.getString(r0)
            java.lang.String r0 = "LAUNCH_BILLING_FLOW"
            java.lang.String r2 = "INTENT_SOURCE"
            if (r7 == 0) goto L8d
            android.content.Intent r7 = r5.b(r7)
            r7.putExtra(r2, r0)
            goto L9b
        L8d:
            android.content.Intent r7 = r5.d()
            android.os.Bundle r8 = r8.getExtras()
            r7.putExtras(r8)
            r7.putExtra(r2, r0)
        L9b:
            long r2 = r5.f6542e
            java.lang.String r8 = "billingClientTransactionId"
            r7.putExtra(r8, r2)
            boolean r8 = r5.f6543f
            java.lang.String r0 = "wasServiceAutoReconnected"
            r7.putExtra(r0, r8)
            goto Ldc
        Lab:
            java.lang.String r7 = "Got null bundle!"
            com.google.android.gms.internal.play_billing.zzc.zzn(r2, r7)
            com.google.android.gms.internal.play_billing.zzie r7 = com.google.android.gms.internal.play_billing.zzie.NULL_BUNDLE_IN_ACTIVITY_RESULT
            long r2 = r5.f6542e
            android.content.Intent r7 = r5.c(r7, r2)
            goto Ldc
        Lb9:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Got null data with resultCode "
            r7.append(r8)
            r7.append(r3)
            java.lang.String r8 = "!"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            com.google.android.gms.internal.play_billing.zzc.zzn(r2, r7)
            com.google.android.gms.internal.play_billing.zzie r7 = r5.a(r3)
            long r2 = r5.f6542e
            android.content.Intent r7 = r5.c(r7, r2)
        Ldc:
            if (r6 != r1) goto Le4
            java.lang.String r6 = "IS_FIRST_PARTY_PURCHASE"
            r8 = 1
            r7.putExtra(r6, r8)
        Le4:
            r5.sendBroadcast(r7)
        Le7:
            r6 = 0
            r5.f6539b = r6
            r5.finish()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    @zzq
    protected void onCreate(@Nullable Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zzc.zzm("ProxyBillingActivity", "Launching Play Store billing flow");
            this.f6541d = 100;
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
                if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                    this.f6540c = true;
                    this.f6541d = 110;
                }
            } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
                this.f6538a = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
                this.f6541d = 101;
            } else {
                pendingIntent = null;
            }
            if (getIntent().hasExtra("billingClientTransactionId")) {
                this.f6542e = getIntent().getLongExtra("billingClientTransactionId", 0L);
            }
            if (getIntent().hasExtra("wasServiceAutoReconnected")) {
                this.f6543f = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
            }
            try {
                this.f6539b = true;
                startIntentSenderForResult(pendingIntent.getIntentSender(), this.f6541d, new Intent(), 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException e10) {
                com.google.android.gms.internal.play_billing.zzc.zzo("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e10);
                ResultReceiver resultReceiver = this.f6538a;
                if (resultReceiver != null) {
                    resultReceiver.send(0, null);
                } else {
                    Intent c10 = c(zzie.INTENT_SENDER_EXCEPTION, this.f6542e);
                    if (this.f6540c) {
                        c10.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                    }
                    sendBroadcast(c10);
                }
                this.f6539b = false;
                finish();
                return;
            }
        }
        com.google.android.gms.internal.play_billing.zzc.zzm("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
        this.f6539b = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
        if (bundle.containsKey("in_app_message_result_receiver")) {
            this.f6538a = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
        }
        this.f6540c = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
        this.f6541d = bundle.getInt("activity_code", 100);
        if (bundle.containsKey("billingClientTransactionId")) {
            this.f6542e = bundle.getLong("billingClientTransactionId");
        }
        if (bundle.containsKey("wasServiceAutoReconnected")) {
            this.f6543f = bundle.getBoolean("wasServiceAutoReconnected");
        }
    }

    @Override // android.app.Activity
    @zzq
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f6539b) {
            Intent d10 = d();
            d10.putExtra("RESPONSE_CODE", 1);
            d10.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            if (this.f6540c) {
                d10.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i10 = this.f6541d;
            if (i10 == 110 || i10 == 100) {
                d10.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                d10.putExtra("billingClientTransactionId", this.f6542e);
            }
            sendBroadcast(d10);
        }
    }

    @Override // android.app.Activity
    @zzq
    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f6538a;
        if (resultReceiver != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f6539b);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f6540c);
        bundle.putInt("activity_code", this.f6541d);
        bundle.putLong("billingClientTransactionId", this.f6542e);
        bundle.putBoolean("wasServiceAutoReconnected", this.f6543f);
    }
}
