package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.List;
import org.json.JSONException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcvr extends com.google.android.gms.ads.internal.client.zzdz {
    private final String zza;
    @Nullable
    private final String zzb;
    private final String zzc;
    @Nullable
    private final String zzd;
    private final List zze;
    private final long zzf;
    private final String zzg;
    @Nullable
    private final zzedr zzh;
    private final Bundle zzi;
    private final double zzj;

    public zzcvr(@Nullable zzfca zzfcaVar, String str, zzedr zzedrVar, @Nullable zzfcd zzfcdVar, String str2) {
        String str3;
        String str4;
        double d10;
        String str5;
        String str6 = null;
        if (zzfcaVar == null) {
            str3 = null;
        } else {
            str3 = zzfcaVar.zzab;
        }
        this.zzb = str3;
        this.zzc = str2;
        if (zzfcdVar == null) {
            str4 = null;
        } else {
            str4 = zzfcdVar.zzb;
        }
        this.zzd = str4;
        if (("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) && zzfcaVar != null) {
            try {
                str6 = zzfcaVar.zzv.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.zza = str6 != null ? str6 : str;
        this.zze = zzedrVar.zzc();
        this.zzh = zzedrVar;
        if (zzfcaVar == null) {
            d10 = 0.0d;
        } else {
            d10 = zzfcaVar.zzaz;
        }
        this.zzj = d10;
        this.zzf = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() / 1000;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgY)).booleanValue() && zzfcdVar != null) {
            this.zzi = zzfcdVar.zzk;
        } else {
            this.zzi = new Bundle();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjG)).booleanValue() && zzfcdVar != null && !TextUtils.isEmpty(zzfcdVar.zzi)) {
            str5 = zzfcdVar.zzi;
        } else {
            str5 = "";
        }
        this.zzg = str5;
    }

    public final double zzc() {
        return this.zzj;
    }

    public final long zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final Bundle zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzv zzf() {
        zzedr zzedrVar = this.zzh;
        if (zzedrVar != null) {
            return zzedrVar.zza();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zzg() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zzh() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    @Nullable
    public final String zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final List zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzg;
    }

    @Nullable
    public final String zzl() {
        return this.zzd;
    }
}
