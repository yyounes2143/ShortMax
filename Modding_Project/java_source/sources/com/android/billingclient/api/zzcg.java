package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzbj;
import com.google.android.gms.internal.play_billing.zzhv;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhz;
import com.google.android.gms.internal.play_billing.zzib;
import com.google.android.gms.internal.play_billing.zzic;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzig;
import com.google.android.gms.internal.play_billing.zzil;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class zzcg {
    public static final /* synthetic */ int zza = 0;

    static {
        int i10 = t.f6662a;
    }

    @Nullable
    public static String zza(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String str = exc.getClass().getSimpleName() + ":" + zzbj.zzb(exc.getMessage());
            int i10 = com.google.android.gms.internal.play_billing.zzc.zza;
            if (str.length() > 40) {
                return str.substring(0, 40);
            }
            return str;
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to get truncated exception info", th2);
            return null;
        }
    }

    @Nullable
    public static zzhx zzb(@Nullable zzie zzieVar, int i10, BillingResult billingResult, @Nullable String str, zzil zzilVar) {
        try {
            zzic zzc = zzig.zzc();
            zzc.zzo(billingResult.getResponseCode());
            zzc.zzl(billingResult.getDebugMessage());
            if (billingResult.getOnPurchasesUpdatedSubResponseCode() != 0) {
                zzc.zzm(billingResult.getOnPurchasesUpdatedSubResponseCode());
            }
            if (zzieVar != null) {
                zzc.zzn(zzieVar);
            }
            if (str != null) {
                zzc.zza(str);
            }
            zzhv zzc2 = zzhx.zzc();
            zzc2.zzl(zzc);
            zzc2.zzp(i10);
            if (!zzilVar.equals(zzil.BROADCAST_ACTION_UNSPECIFIED)) {
                zzc2.zza(zzilVar);
            }
            return (zzhx) zzc2.zze();
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", th2);
            return null;
        }
    }

    @Nullable
    public static zzib zzc(int i10, zzil zzilVar) {
        try {
            zzhz zzc = zzib.zzc();
            zzc.zzo(i10);
            if (!zzilVar.equals(zzil.BROADCAST_ACTION_UNSPECIFIED)) {
                zzc.zza(zzilVar);
            }
            return (zzib) zzc.zze();
        } catch (Exception e10) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingLogger", "Unable to create logging payload", e10);
            return null;
        }
    }
}
