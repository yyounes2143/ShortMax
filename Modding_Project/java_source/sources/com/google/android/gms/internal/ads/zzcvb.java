package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcvb {
    private final zzfha zza;
    private final VersionInfoParcel zzb;
    private final ApplicationInfo zzc;
    private final String zzd;
    private final List zze;
    private final PackageInfo zzf;
    private final zzhgl zzg;
    private final String zzh;
    private final zzeuf zzi;
    private final com.google.android.gms.ads.internal.util.zzg zzj;
    private final zzfcw zzk;
    private final int zzl;
    private final zzdbo zzm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcvb(zzfha zzfhaVar, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, List list, @Nullable PackageInfo packageInfo, zzhgl zzhglVar, com.google.android.gms.ads.internal.util.zzg zzgVar, String str2, zzeuf zzeufVar, zzfcw zzfcwVar, zzdbo zzdboVar, int i10) {
        this.zza = zzfhaVar;
        this.zzb = versionInfoParcel;
        this.zzc = applicationInfo;
        this.zzd = str;
        this.zze = list;
        this.zzf = packageInfo;
        this.zzg = zzhglVar;
        this.zzh = str2;
        this.zzi = zzeufVar;
        this.zzj = zzgVar;
        this.zzk = zzfcwVar;
        this.zzm = zzdboVar;
        this.zzl = i10;
    }

    public static /* synthetic */ zzbvq zza(zzcvb zzcvbVar, com.google.common.util.concurrent.e eVar, Bundle bundle) {
        boolean z10;
        zzcva zzcvaVar = (zzcva) eVar.get();
        Bundle bundle2 = zzcvaVar.zza;
        String str = (String) ((com.google.common.util.concurrent.e) zzcvbVar.zzg.zzb()).get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhk)).booleanValue() && zzcvbVar.zzj.zzN()) {
            z10 = true;
        } else {
            z10 = false;
        }
        String str2 = zzcvbVar.zzh;
        PackageInfo packageInfo = zzcvbVar.zzf;
        List list = zzcvbVar.zze;
        return new zzbvq(bundle2, zzcvbVar.zzb, zzcvbVar.zzc, zzcvbVar.zzd, list, packageInfo, str, str2, null, null, z10, zzcvbVar.zzk.zza(), bundle, zzcvaVar.zzb, zzcvbVar.zzl);
    }

    public final com.google.common.util.concurrent.e zzb(Bundle bundle) {
        boolean z10;
        this.zzm.zza();
        zzfgu zzfguVar = zzfgu.SIGNALS;
        zzfha zzfhaVar = this.zza;
        Objects.requireNonNull(zzfhaVar);
        zzcva zzcvaVar = new zzcva(new Bundle(), new Bundle());
        if (this.zzl == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        return zzfgk.zzc(this.zzi.zza(zzcvaVar, bundle, z10), zzfguVar, zzfhaVar).zza();
    }

    public final com.google.common.util.concurrent.e zzc() {
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcq)).booleanValue()) {
            Bundle bundle2 = this.zzk.zzs;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            bundle.putBoolean("ls", false);
        }
        final com.google.common.util.concurrent.e zzb = zzb(bundle);
        return this.zza.zza(zzfgu.REQUEST_PARCEL, zzb, (com.google.common.util.concurrent.e) this.zzg.zzb()).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzcuz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcvb.zza(zzcvb.this, zzb, bundle);
            }
        }).zza();
    }
}
