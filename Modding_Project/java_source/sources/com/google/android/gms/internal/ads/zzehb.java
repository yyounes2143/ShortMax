package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzehb {
    private final Clock zza;
    private final zzehd zzb;
    private final zzfjy zzc;
    @GuardedBy("this")
    private final LinkedHashMap zzd = new LinkedHashMap();
    private final boolean zze = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzha)).booleanValue();
    private final zzedr zzf;
    private boolean zzg;
    private long zzh;
    private long zzi;

    public zzehb(Clock clock, zzehd zzehdVar, zzedr zzedrVar, zzfjy zzfjyVar) {
        this.zza = clock;
        this.zzb = zzehdVar;
        this.zzf = zzedrVar;
        this.zzc = zzfjyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean zzq(zzfca zzfcaVar) {
        zzeha zzehaVar = (zzeha) this.zzd.get(zzfcaVar);
        if (zzehaVar == null) {
            return false;
        }
        if (zzehaVar.zzc != 8) {
            return false;
        }
        return true;
    }

    public final synchronized long zza() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized com.google.common.util.concurrent.e zzf(zzfcn zzfcnVar, zzfca zzfcaVar, com.google.common.util.concurrent.e eVar, zzfju zzfjuVar) {
        zzfcd zzfcdVar = zzfcnVar.zzb.zzb;
        long elapsedRealtime = this.zza.elapsedRealtime();
        String str = zzfcaVar.zzw;
        if (str != null) {
            this.zzd.put(zzfcaVar, new zzeha(str, zzfcaVar.zzaf, 9, 0L, null));
            zzgdn.zzr(eVar, new zzegz(this, elapsedRealtime, zzfcdVar, zzfcaVar, str, zzfjuVar, zzfcnVar), zzcaf.zzg);
        }
        return eVar;
    }

    public final synchronized String zzg() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Map.Entry entry : this.zzd.entrySet()) {
                zzeha zzehaVar = (zzeha) entry.getValue();
                if (zzehaVar.zzc != Integer.MAX_VALUE) {
                    arrayList.add(zzehaVar.toString());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized void zzi(@Nullable zzfca zzfcaVar) {
        try {
            this.zzh = this.zza.elapsedRealtime() - this.zzi;
            if (zzfcaVar != null) {
                this.zzf.zze(zzfcaVar);
            }
            this.zzg = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void zzj() {
        this.zzh = this.zza.elapsedRealtime() - this.zzi;
    }

    public final synchronized void zzk(List list) {
        this.zzi = this.zza.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfca zzfcaVar = (zzfca) it.next();
            String str = zzfcaVar.zzw;
            if (!TextUtils.isEmpty(str)) {
                this.zzd.put(zzfcaVar, new zzeha(str, zzfcaVar.zzaf, Integer.MAX_VALUE, 0L, null));
            }
        }
    }

    public final synchronized void zzl() {
        this.zzi = this.zza.elapsedRealtime();
    }

    public final synchronized void zzm(zzfca zzfcaVar) {
        zzeha zzehaVar = (zzeha) this.zzd.get(zzfcaVar);
        if (zzehaVar != null && !this.zzg) {
            zzehaVar.zzc = 8;
        }
    }
}
