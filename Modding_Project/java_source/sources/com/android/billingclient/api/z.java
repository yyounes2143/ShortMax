package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.android.billingclient.api.BillingResult;
import com.google.android.gms.internal.play_billing.zzeu;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzil;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@VisibleForTesting
/* loaded from: classes2.dex */
public final class z extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6693a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6694b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a0 f6695c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(a0 a0Var, boolean z10) {
        Objects.requireNonNull(a0Var);
        this.f6695c = a0Var;
        this.f6694b = z10;
    }

    private final void d(Bundle bundle, BillingResult billingResult, int i10, zzil zzilVar, long j10, boolean z10) {
        t tVar;
        t tVar2;
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") != null) {
                tVar2 = this.f6695c.f6589e;
                tVar2.a(zzhx.zzA(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), zzeu.zza()), j10, z10);
                return;
            }
            tVar = this.f6695c.f6589e;
            tVar.a(zzcg.zzb(zzie.BILLING_RESULT_RECEIVED_FROM_PHONESKY, i10, billingResult, null, zzilVar), j10, z10);
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    public final synchronized void a(Context context, IntentFilter intentFilter) {
        int i10;
        try {
            if (this.f6693a) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                if (true != this.f6694b) {
                    i10 = 4;
                } else {
                    i10 = 2;
                }
                context.registerReceiver(this, intentFilter, i10);
            } else {
                context.registerReceiver(this, intentFilter);
            }
            this.f6693a = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void b(Context context, IntentFilter intentFilter, String str) {
        int i10;
        try {
            if (this.f6693a) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                if (true != this.f6694b) {
                    i10 = 4;
                } else {
                    i10 = 2;
                }
                context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, i10);
            } else {
                context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
            }
            this.f6693a = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void c(Context context) {
        if (this.f6693a) {
            context.unregisterReceiver(this);
            this.f6693a = false;
            return;
        }
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Receiver is not registered.");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        char c10;
        zzil zzilVar;
        int i10;
        BillingResult zzh;
        PurchasesUpdatedListener purchasesUpdatedListener;
        t tVar;
        zzb zzbVar;
        t tVar2;
        PurchasesUpdatedListener purchasesUpdatedListener2;
        UserChoiceBillingListener userChoiceBillingListener;
        zzb zzbVar2;
        t tVar3;
        UserChoiceBillingListener userChoiceBillingListener2;
        t tVar4;
        PurchasesUpdatedListener purchasesUpdatedListener3;
        UserChoiceBillingListener userChoiceBillingListener3;
        t tVar5;
        PurchasesUpdatedListener purchasesUpdatedListener4;
        PurchasesUpdatedListener purchasesUpdatedListener5;
        int intValue;
        t tVar6;
        PurchasesUpdatedListener purchasesUpdatedListener6;
        PurchasesUpdatedListener purchasesUpdatedListener7;
        String action = intent.getAction();
        int hashCode = action.hashCode();
        if (hashCode != -1484087650) {
            if (hashCode != -337612916) {
                if (hashCode == 345207161 && action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
                    c10 = 2;
                }
                c10 = 65535;
            } else {
                if (action.equals("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED")) {
                    c10 = 1;
                }
                c10 = 65535;
            }
        } else {
            if (action.equals("com.android.vending.billing.PURCHASES_UPDATED")) {
                c10 = 0;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    zzilVar = zzil.BROADCAST_ACTION_UNSPECIFIED;
                } else {
                    zzilVar = zzil.ALTERNATIVE_BILLING_ACTION;
                }
            } else {
                zzilVar = zzil.LOCAL_PURCHASES_UPDATED_ACTION;
            }
        } else {
            zzilVar = zzil.PURCHASES_UPDATED_ACTION;
        }
        zzil zzilVar2 = zzilVar;
        zzil zzilVar3 = zzil.LOCAL_PURCHASES_UPDATED_ACTION;
        if (zzilVar2.equals(zzilVar3) || zzilVar2.equals(zzil.ALTERNATIVE_BILLING_ACTION)) {
            i10 = 2;
        } else if (zzilVar2.equals(zzil.PURCHASES_UPDATED_ACTION)) {
            i10 = 32;
        } else {
            i10 = 1;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Bundle is null.");
            a0 a0Var = this.f6695c;
            tVar6 = a0Var.f6589e;
            zzie zzieVar = zzie.NULL_BUNDLE_IN_BROADCAST_RECEIVER;
            BillingResult billingResult = u.f6670h;
            tVar6.h(zzcg.zzb(zzieVar, i10, billingResult, null, zzilVar2));
            purchasesUpdatedListener6 = a0Var.f6586b;
            if (purchasesUpdatedListener6 != null) {
                purchasesUpdatedListener7 = a0Var.f6586b;
                purchasesUpdatedListener7.onPurchasesUpdated(billingResult, null);
                return;
            }
            return;
        }
        if (i10 == 2) {
            int i11 = com.google.android.gms.internal.play_billing.zzc.zza;
            BillingResult.Builder newBuilder = BillingResult.newBuilder();
            newBuilder.setResponseCode(com.google.android.gms.internal.play_billing.zzc.zzb(intent.getExtras(), "BillingBroadcastManager"));
            Bundle extras2 = intent.getExtras();
            if (extras2 == null) {
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Unexpected null bundle received!");
            } else {
                Object obj = extras2.get("SUB_RESPONSE_CODE");
                if (obj == null) {
                    com.google.android.gms.internal.play_billing.zzc.zzm("BillingBroadcastManager", "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK");
                } else if (obj instanceof Integer) {
                    intValue = ((Integer) obj).intValue();
                    newBuilder.setOnPurchasesUpdatedSubResponseCode(intValue);
                    newBuilder.setDebugMessage(com.google.android.gms.internal.play_billing.zzc.zzj(intent.getExtras(), "BillingBroadcastManager"));
                    zzh = newBuilder.build();
                } else {
                    com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Unexpected type for bundle sub response code: ".concat(obj.getClass().getName()));
                }
            }
            intValue = 0;
            newBuilder.setOnPurchasesUpdatedSubResponseCode(intValue);
            newBuilder.setDebugMessage(com.google.android.gms.internal.play_billing.zzc.zzj(intent.getExtras(), "BillingBroadcastManager"));
            zzh = newBuilder.build();
        } else {
            zzh = com.google.android.gms.internal.play_billing.zzc.zzh(intent, "BillingBroadcastManager");
        }
        long j10 = extras.getLong("billingClientTransactionId", 0L);
        boolean z10 = extras.getBoolean("wasServiceAutoReconnected", false);
        if (!zzilVar2.equals(zzil.PURCHASES_UPDATED_ACTION) && !zzilVar2.equals(zzilVar3)) {
            if (zzilVar2.equals(zzil.ALTERNATIVE_BILLING_ACTION)) {
                if (zzh.getResponseCode() != 0) {
                    d(extras, zzh, i10, zzilVar2, j10, z10);
                    purchasesUpdatedListener5 = this.f6695c.f6586b;
                    purchasesUpdatedListener5.onPurchasesUpdated(zzh, com.google.android.gms.internal.play_billing.zzbt.zzk());
                    return;
                }
                a0 a0Var2 = this.f6695c;
                zzbVar = a0Var2.f6587c;
                if (zzbVar == null) {
                    userChoiceBillingListener3 = a0Var2.f6588d;
                    if (userChoiceBillingListener3 == null) {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "AlternativeBillingListener and UserChoiceBillingListener is null.");
                        a0 a0Var3 = this.f6695c;
                        tVar5 = a0Var3.f6589e;
                        zzie zzieVar2 = zzie.MISSING_USER_CHOICE_BILLING_LISTENER;
                        BillingResult billingResult2 = u.f6670h;
                        tVar5.a(zzcg.zzb(zzieVar2, i10, billingResult2, null, zzilVar2), j10, z10);
                        purchasesUpdatedListener4 = a0Var3.f6586b;
                        purchasesUpdatedListener4.onPurchasesUpdated(billingResult2, com.google.android.gms.internal.play_billing.zzbt.zzk());
                        return;
                    }
                }
                String string = extras.getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
                if (string != null) {
                    try {
                        userChoiceBillingListener = a0Var2.f6588d;
                        if (userChoiceBillingListener != null) {
                            UserChoiceDetails userChoiceDetails = new UserChoiceDetails(string);
                            userChoiceBillingListener2 = a0Var2.f6588d;
                            userChoiceBillingListener2.userSelectedAlternativeBilling(userChoiceDetails);
                        } else {
                            JSONArray optJSONArray = new JSONObject(string).optJSONArray("products");
                            ArrayList arrayList = new ArrayList();
                            if (optJSONArray != null) {
                                for (int i12 = 0; i12 < optJSONArray.length(); i12++) {
                                    JSONObject optJSONObject = optJSONArray.optJSONObject(i12);
                                    if (optJSONObject != null) {
                                        arrayList.add(new zzc(optJSONObject, null));
                                    }
                                }
                            }
                            zzbVar2 = a0Var2.f6587c;
                            zzbVar2.zza();
                        }
                        tVar3 = this.f6695c.f6589e;
                        tVar3.i(zzcg.zzc(i10, zzilVar2), j10, z10);
                        return;
                    } catch (JSONException unused) {
                        com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", String.format("Error when parsing invalid user choice data: [%s]", string));
                        a0 a0Var4 = this.f6695c;
                        tVar2 = a0Var4.f6589e;
                        zzie zzieVar3 = zzie.INVALID_ALTERNATIVE_BILLING_USER_CHOICE_DATA;
                        BillingResult billingResult3 = u.f6670h;
                        tVar2.a(zzcg.zzb(zzieVar3, i10, billingResult3, null, zzilVar2), j10, z10);
                        purchasesUpdatedListener2 = a0Var4.f6586b;
                        purchasesUpdatedListener2.onPurchasesUpdated(billingResult3, com.google.android.gms.internal.play_billing.zzbt.zzk());
                        return;
                    }
                }
                com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Couldn't find alternative billing user choice data in bundle.");
                tVar4 = a0Var2.f6589e;
                zzie zzieVar4 = zzie.MISSING_ALTERNATIVE_BILLING_USER_CHOICE_DATA;
                BillingResult billingResult4 = u.f6670h;
                tVar4.a(zzcg.zzb(zzieVar4, i10, billingResult4, null, zzilVar2), j10, z10);
                purchasesUpdatedListener3 = a0Var2.f6586b;
                purchasesUpdatedListener3.onPurchasesUpdated(billingResult4, com.google.android.gms.internal.play_billing.zzbt.zzk());
                return;
            }
            return;
        }
        List<Purchase> zzl = com.google.android.gms.internal.play_billing.zzc.zzl(extras);
        if (zzh.getResponseCode() == 0) {
            tVar = this.f6695c.f6589e;
            tVar.i(zzcg.zzc(i10, zzilVar2), j10, z10);
        } else {
            d(extras, zzh, i10, zzilVar2, j10, z10);
        }
        purchasesUpdatedListener = this.f6695c.f6586b;
        purchasesUpdatedListener.onPurchasesUpdated(zzh, zzl);
    }
}
