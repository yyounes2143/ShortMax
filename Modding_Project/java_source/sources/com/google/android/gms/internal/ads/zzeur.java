package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeur implements zzeuc {
    private final zzgdy zza;
    private final Context zzb;

    public zzeur(zzgdy zzgdyVar, Context context) {
        this.zza = zzgdyVar;
        this.zzb = context;
    }

    public static /* synthetic */ zzeup zzc(zzeur zzeurVar) {
        boolean z10;
        int i10;
        Context context = zzeurVar.zzb;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        String networkOperator = telephonyManager.getNetworkOperator();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.zzv.zzr();
        int i11 = -1;
        if (com.google.android.gms.ads.internal.util.zzs.zzB(context, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int ordinal = activeNetworkInfo.getDetailedState().ordinal();
                i10 = type;
                i11 = ordinal;
            } else {
                i10 = -1;
            }
            z10 = connectivityManager.isActiveNetworkMetered();
        } else {
            z10 = false;
            i10 = -2;
        }
        return new zzeup(networkOperator, i10, com.google.android.gms.ads.internal.zzv.zzs().zzm(context), phoneType, z10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 39;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeur.zzc(zzeur.this);
            }
        });
    }
}
