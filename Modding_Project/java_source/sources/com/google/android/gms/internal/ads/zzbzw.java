package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbzw implements zzazw {
    @VisibleForTesting
    final zzbzt zza;
    private final com.google.android.gms.ads.internal.util.zzg zze;
    private final Object zzd = new Object();
    @VisibleForTesting
    final HashSet zzb = new HashSet();
    @VisibleForTesting
    final HashSet zzc = new HashSet();
    private boolean zzg = false;
    private final zzbzu zzf = new zzbzu();

    public zzbzw(String str, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = new zzbzt(str, zzgVar);
        this.zze = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zza(boolean z10) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        if (z10) {
            com.google.android.gms.ads.internal.util.zzg zzgVar = this.zze;
            if (currentTimeMillis - zzgVar.zzd() > ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbh)).longValue()) {
                this.zza.zzd = -1;
            } else {
                this.zza.zzd = zzgVar.zzc();
            }
            this.zzg = true;
            return;
        }
        com.google.android.gms.ads.internal.util.zzg zzgVar2 = this.zze;
        zzgVar2.zzr(currentTimeMillis);
        zzgVar2.zzG(this.zza.zzd);
    }

    public final int zzb() {
        int zza;
        synchronized (this.zzd) {
            zza = this.zza.zza();
        }
        return zza;
    }

    public final zzbzl zzc(Clock clock, String str) {
        return new zzbzl(clock, this, this.zzf.zza(), str);
    }

    public final String zzd() {
        return this.zzf.zzb();
    }

    public final void zze(zzbzl zzbzlVar) {
        synchronized (this.zzd) {
            this.zzb.add(zzbzlVar);
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            this.zza.zzc();
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zza.zzd();
        }
    }

    public final void zzh() {
        synchronized (this.zzd) {
            this.zza.zze();
        }
    }

    public final void zzi() {
        synchronized (this.zzd) {
            this.zza.zzf();
        }
    }

    public final void zzj(com.google.android.gms.ads.internal.client.zzm zzmVar, long j10) {
        synchronized (this.zzd) {
            this.zza.zzg(zzmVar, j10);
        }
    }

    public final void zzk() {
        synchronized (this.zzd) {
            this.zza.zzh();
        }
    }

    public final void zzl(HashSet hashSet) {
        synchronized (this.zzd) {
            this.zzb.addAll(hashSet);
        }
    }

    public final boolean zzm() {
        return this.zzg;
    }

    public final Bundle zzn(Context context, zzfed zzfedVar) {
        HashSet hashSet = new HashSet();
        synchronized (this.zzd) {
            HashSet hashSet2 = this.zzb;
            hashSet.addAll(hashSet2);
            hashSet2.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zza.zzb(context, this.zzf.zzb()));
        Bundle bundle2 = new Bundle();
        Iterator it = this.zzc.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(((zzbzl) it2.next()).zza());
            }
            bundle.putParcelableArrayList(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, arrayList);
            zzfedVar.zzc(hashSet);
            return bundle;
        }
        zzbzv zzbzvVar = (zzbzv) it.next();
        throw null;
    }
}
