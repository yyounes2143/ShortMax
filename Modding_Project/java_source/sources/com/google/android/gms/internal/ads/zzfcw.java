package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfcw {
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzgc zza;
    @Nullable
    public final zzbmp zzb;
    @Nullable
    public final zzeky zzc;
    public final com.google.android.gms.ads.internal.client.zzm zzd;
    public final com.google.android.gms.ads.internal.client.zzr zze;
    public final String zzf;
    public final ArrayList zzg;
    public final ArrayList zzh;
    @Nullable
    public final zzbge zzi;
    public final com.google.android.gms.ads.internal.client.zzx zzj;
    public final int zzk;
    public final AdManagerAdViewOptions zzl;
    public final PublisherAdViewOptions zzm;
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzco zzn;
    public final zzfcj zzo;
    public final boolean zzp;
    public final boolean zzq;
    public final boolean zzr;
    public final Bundle zzs;
    public final AtomicLong zzt;
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzcs zzu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfcw(zzfcu zzfcuVar, zzfcv zzfcvVar) {
        com.google.android.gms.ads.internal.client.zzr zzrVar;
        String str;
        com.google.android.gms.ads.internal.client.zzcs zzcsVar;
        com.google.android.gms.ads.internal.client.zzm zzmVar;
        com.google.android.gms.ads.internal.client.zzm zzmVar2;
        com.google.android.gms.ads.internal.client.zzm zzmVar3;
        com.google.android.gms.ads.internal.client.zzm zzmVar4;
        com.google.android.gms.ads.internal.client.zzm zzmVar5;
        com.google.android.gms.ads.internal.client.zzm zzmVar6;
        com.google.android.gms.ads.internal.client.zzm zzmVar7;
        com.google.android.gms.ads.internal.client.zzm zzmVar8;
        com.google.android.gms.ads.internal.client.zzm zzmVar9;
        com.google.android.gms.ads.internal.client.zzm zzmVar10;
        com.google.android.gms.ads.internal.client.zzm zzmVar11;
        com.google.android.gms.ads.internal.client.zzm zzmVar12;
        com.google.android.gms.ads.internal.client.zzm zzmVar13;
        com.google.android.gms.ads.internal.client.zzm zzmVar14;
        com.google.android.gms.ads.internal.client.zzm zzmVar15;
        com.google.android.gms.ads.internal.client.zzm zzmVar16;
        com.google.android.gms.ads.internal.client.zzm zzmVar17;
        com.google.android.gms.ads.internal.client.zzm zzmVar18;
        com.google.android.gms.ads.internal.client.zzm zzmVar19;
        com.google.android.gms.ads.internal.client.zzm zzmVar20;
        com.google.android.gms.ads.internal.client.zzm zzmVar21;
        com.google.android.gms.ads.internal.client.zzm zzmVar22;
        com.google.android.gms.ads.internal.client.zzm zzmVar23;
        com.google.android.gms.ads.internal.client.zzm zzmVar24;
        com.google.android.gms.ads.internal.client.zzm zzmVar25;
        com.google.android.gms.ads.internal.client.zzm zzmVar26;
        com.google.android.gms.ads.internal.client.zzm zzmVar27;
        com.google.android.gms.ads.internal.client.zzgc zzgcVar;
        zzbge zzbgeVar;
        com.google.android.gms.ads.internal.client.zzgc zzgcVar2;
        zzbge zzbgeVar2;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        zzbge zzbgeVar3;
        zzbge zzbgeVar4;
        com.google.android.gms.ads.internal.client.zzx zzxVar;
        int i10;
        AdManagerAdViewOptions adManagerAdViewOptions;
        PublisherAdViewOptions publisherAdViewOptions;
        com.google.android.gms.ads.internal.client.zzco zzcoVar;
        zzbmp zzbmpVar;
        zzfch zzfchVar;
        boolean z10;
        boolean z11;
        zzeky zzekyVar;
        boolean z12;
        Bundle bundle;
        AtomicLong atomicLong;
        boolean z13;
        zzrVar = zzfcuVar.zzb;
        this.zze = zzrVar;
        str = zzfcuVar.zzc;
        this.zzf = str;
        zzcsVar = zzfcuVar.zzv;
        this.zzu = zzcsVar;
        zzmVar = zzfcuVar.zza;
        int i11 = zzmVar.zza;
        zzmVar2 = zzfcuVar.zza;
        long j10 = zzmVar2.zzb;
        zzmVar3 = zzfcuVar.zza;
        Bundle bundle2 = zzmVar3.zzc;
        zzmVar4 = zzfcuVar.zza;
        int i12 = zzmVar4.zzd;
        zzmVar5 = zzfcuVar.zza;
        List list = zzmVar5.zze;
        zzmVar6 = zzfcuVar.zza;
        boolean z14 = zzmVar6.zzf;
        zzmVar7 = zzfcuVar.zza;
        int i13 = zzmVar7.zzg;
        zzmVar8 = zzfcuVar.zza;
        boolean z15 = true;
        if (!zzmVar8.zzh) {
            z13 = zzfcuVar.zze;
            if (!z13) {
                z15 = false;
            }
        }
        zzmVar9 = zzfcuVar.zza;
        String str2 = zzmVar9.zzi;
        zzmVar10 = zzfcuVar.zza;
        com.google.android.gms.ads.internal.client.zzfz zzfzVar = zzmVar10.zzj;
        zzmVar11 = zzfcuVar.zza;
        Location location = zzmVar11.zzk;
        zzmVar12 = zzfcuVar.zza;
        String str3 = zzmVar12.zzl;
        zzmVar13 = zzfcuVar.zza;
        Bundle bundle3 = zzmVar13.zzm;
        zzmVar14 = zzfcuVar.zza;
        Bundle bundle4 = zzmVar14.zzn;
        zzmVar15 = zzfcuVar.zza;
        List list2 = zzmVar15.zzo;
        zzmVar16 = zzfcuVar.zza;
        String str4 = zzmVar16.zzp;
        zzmVar17 = zzfcuVar.zza;
        String str5 = zzmVar17.zzq;
        zzmVar18 = zzfcuVar.zza;
        boolean z16 = zzmVar18.zzr;
        zzmVar19 = zzfcuVar.zza;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzmVar19.zzs;
        zzmVar20 = zzfcuVar.zza;
        int i14 = zzmVar20.zzt;
        zzmVar21 = zzfcuVar.zza;
        String str6 = zzmVar21.zzu;
        zzmVar22 = zzfcuVar.zza;
        List list3 = zzmVar22.zzv;
        zzmVar23 = zzfcuVar.zza;
        int zza = com.google.android.gms.ads.internal.util.zzs.zza(zzmVar23.zzw);
        zzmVar24 = zzfcuVar.zza;
        String str7 = zzmVar24.zzx;
        zzmVar25 = zzfcuVar.zza;
        int i15 = zzmVar25.zzy;
        zzmVar26 = zzfcuVar.zza;
        long j11 = zzmVar26.zzz;
        zzmVar27 = zzfcuVar.zza;
        com.google.android.gms.ads.internal.client.zzm zzmVar28 = new com.google.android.gms.ads.internal.client.zzm(i11, j10, bundle2, i12, list, z14, i13, z15, str2, zzfzVar, location, str3, bundle3, bundle4, list2, str4, str5, z16, zzcVar, i14, str6, list3, zza, str7, i15, j11, zzmVar27.zzA);
        this.zzd = zzmVar28;
        zzgcVar = zzfcuVar.zzd;
        if (zzgcVar != null) {
            zzgcVar2 = zzfcuVar.zzd;
        } else {
            zzbgeVar = zzfcuVar.zzh;
            if (zzbgeVar != null) {
                zzbgeVar2 = zzfcuVar.zzh;
                zzgcVar2 = zzbgeVar2.zzf;
            } else {
                zzgcVar2 = null;
            }
        }
        this.zza = zzgcVar2;
        arrayList = zzfcuVar.zzf;
        this.zzg = arrayList;
        arrayList2 = zzfcuVar.zzg;
        this.zzh = arrayList2;
        arrayList3 = zzfcuVar.zzf;
        if (arrayList3 != null) {
            zzbgeVar3 = zzfcuVar.zzh;
            if (zzbgeVar3 != null) {
                zzbgeVar4 = zzfcuVar.zzh;
            } else {
                zzbgeVar4 = new zzbge(new NativeAdOptions.Builder().build());
            }
        } else {
            zzbgeVar4 = null;
        }
        this.zzi = zzbgeVar4;
        zzxVar = zzfcuVar.zzi;
        this.zzj = zzxVar;
        i10 = zzfcuVar.zzm;
        this.zzk = i10;
        adManagerAdViewOptions = zzfcuVar.zzj;
        this.zzl = adManagerAdViewOptions;
        publisherAdViewOptions = zzfcuVar.zzk;
        this.zzm = publisherAdViewOptions;
        zzcoVar = zzfcuVar.zzl;
        this.zzn = zzcoVar;
        zzbmpVar = zzfcuVar.zzn;
        this.zzb = zzbmpVar;
        zzfchVar = zzfcuVar.zzo;
        this.zzo = new zzfcj(zzfchVar, null);
        z10 = zzfcuVar.zzp;
        this.zzp = z10;
        z11 = zzfcuVar.zzq;
        this.zzq = z11;
        zzekyVar = zzfcuVar.zzr;
        this.zzc = zzekyVar;
        z12 = zzfcuVar.zzs;
        this.zzr = z12;
        bundle = zzfcuVar.zzt;
        this.zzs = bundle;
        if (zzmVar28.zzA == 0) {
            atomicLong = zzfcuVar.zzu;
            this.zzt = atomicLong;
            return;
        }
        this.zzt = new AtomicLong(zzmVar28.zzA);
    }

    public final boolean zza() {
        zzbcv zzbcvVar = zzbde.zzdx;
        return this.zzf.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar));
    }
}
