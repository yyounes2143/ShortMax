package com.google.android.gms.internal.ads;

import android.graphics.Insets;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzemr implements zzeub {
    public final com.google.android.gms.ads.internal.client.zzr zza;
    @Nullable
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    @Nullable
    public final String zzh;
    public final boolean zzi;
    @Nullable
    public final Insets zzj;

    public zzemr(com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str, boolean z10, String str2, float f10, int i10, int i11, @Nullable String str3, boolean z11, @Nullable Insets insets) {
        Preconditions.checkNotNull(zzrVar, "the adSize must not be null");
        this.zza = zzrVar;
        this.zzb = str;
        this.zzc = z10;
        this.zzd = str2;
        this.zze = f10;
        this.zzf = i10;
        this.zzg = i11;
        this.zzh = str3;
        this.zzi = z11;
        this.zzj = insets;
    }

    private final void zzc(Bundle bundle) {
        boolean z10;
        boolean z11;
        String str;
        Insets insets;
        int i10;
        int i11;
        int i12;
        int i13;
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.zza;
        int i14 = zzrVar.zze;
        if (i14 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfdk.zzf(bundle, "smart_w", "full", z10);
        int i15 = zzrVar.zzb;
        if (i15 == -2) {
            z11 = true;
        } else {
            z11 = false;
        }
        zzfdk.zzf(bundle, "smart_h", "auto", z11);
        zzfdk.zzg(bundle, "ene", true, zzrVar.zzj);
        zzfdk.zzf(bundle, "rafmt", "102", zzrVar.zzm);
        zzfdk.zzf(bundle, "rafmt", "103", zzrVar.zzn);
        zzfdk.zzf(bundle, "rafmt", "105", zzrVar.zzo);
        zzfdk.zzg(bundle, "inline_adaptive_slot", true, this.zzi);
        zzfdk.zzg(bundle, "interscroller_slot", true, zzrVar.zzo);
        zzfdk.zzc(bundle, "format", this.zzb);
        zzfdk.zzf(bundle, "fluid", "height", this.zzc);
        zzfdk.zzf(bundle, "sz", this.zzd, !TextUtils.isEmpty(str));
        bundle.putFloat("u_sd", this.zze);
        bundle.putInt("sw", this.zzf);
        bundle.putInt("sh", this.zzg);
        String str2 = this.zzh;
        zzfdk.zzf(bundle, SRStrategy.KEY_SR_STRATEGY_CONFIG, str2, true ^ TextUtils.isEmpty(str2));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznH)).booleanValue() && Build.VERSION.SDK_INT >= 35 && (insets = this.zzj) != null) {
            i10 = insets.top;
            bundle.putInt("sam_t", i10);
            i11 = insets.bottom;
            bundle.putInt("sam_b", i11);
            i12 = insets.left;
            bundle.putInt("sam_l", i12);
            i13 = insets.right;
            bundle.putInt("sam_r", i13);
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", i15);
            bundle2.putInt("width", i14);
            bundle2.putBoolean("is_fluid_height", zzrVar.zzi);
            arrayList.add(bundle2);
        } else {
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzrVar2.zzi);
                bundle3.putInt("height", zzrVar2.zzb);
                bundle3.putInt("width", zzrVar2.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
        zzc(((zzcva) obj).zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zzb(Object obj) {
        zzc(((zzcva) obj).zza);
    }
}
