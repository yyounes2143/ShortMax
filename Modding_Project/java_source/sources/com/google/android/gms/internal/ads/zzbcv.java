package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbcv {
    private final int zza;
    private final String zzb;
    private final Object zzc;
    private final Object zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbcv(int i10, String str, Object obj, Object obj2, zzbcu zzbcuVar) {
        this.zza = i10;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        com.google.android.gms.ads.internal.client.zzbd.zza().zzd(this);
    }

    public static zzbcv zzf(int i10, String str, float f10, float f11) {
        return new zzbcs(1, str, Float.valueOf(f10), Float.valueOf(f11));
    }

    public static zzbcv zzg(int i10, String str, int i11, int i12) {
        return new zzbcq(1, str, Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static zzbcv zzh(int i10, String str, long j10, long j11) {
        return new zzbcr(1, str, Long.valueOf(j10), Long.valueOf(j11));
    }

    public static zzbcv zzi(int i10, String str) {
        zzbct zzbctVar = new zzbct(1, "gads:sdk_core_constants:experiment_id", null, null);
        com.google.android.gms.ads.internal.client.zzbd.zza().zzc(zzbctVar);
        return zzbctVar;
    }

    public static zzbcv zzj(int i10, String str) {
        zzbct zzbctVar = new zzbct(1, "gads:sdk_core_constants_service:experiment_id", null, null);
        com.google.android.gms.ads.internal.client.zzbd.zza().zze(zzbctVar);
        return zzbctVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zza(JSONObject jSONObject);

    public abstract Object zzb(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zzc(SharedPreferences sharedPreferences);

    public abstract void zzd(SharedPreferences.Editor editor, Object obj);

    public final int zze() {
        return this.zza;
    }

    public final Object zzk() {
        return com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(this);
    }

    public final Object zzl() {
        if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzf()) {
            return this.zzd;
        }
        return this.zzc;
    }

    public final String zzm() {
        return this.zzb;
    }
}
