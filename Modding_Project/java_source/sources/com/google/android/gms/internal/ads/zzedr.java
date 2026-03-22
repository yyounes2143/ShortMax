package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzedr {
    private final String zzc;
    @Nullable
    private zzfcd zzd = null;
    @Nullable
    private zzfca zze = null;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzv zzf = null;
    private final Map zzb = Collections.synchronizedMap(new HashMap());
    private final List zza = Collections.synchronizedList(new ArrayList());

    public zzedr(String str) {
        this.zzc = str;
    }

    private static String zzj(zzfca zzfcaVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdR)).booleanValue()) {
            return zzfcaVar.zzap;
        }
        return zzfcaVar.zzw;
    }

    private final synchronized void zzk(zzfca zzfcaVar, int i10) {
        Map map = this.zzb;
        String zzj = zzj(zzfcaVar);
        if (map.containsKey(zzj)) {
            return;
        }
        Bundle bundle = new Bundle();
        JSONObject jSONObject = zzfcaVar.zzv;
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, jSONObject.getString(next));
            } catch (JSONException unused) {
            }
        }
        com.google.android.gms.ads.internal.client.zzv zzvVar = new com.google.android.gms.ads.internal.client.zzv(zzfcaVar.zzE, 0L, null, bundle, zzfcaVar.zzF, zzfcaVar.zzG, zzfcaVar.zzH, zzfcaVar.zzI);
        try {
            this.zza.add(i10, zzvVar);
        } catch (IndexOutOfBoundsException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation");
        }
        this.zzb.put(zzj, zzvVar);
    }

    private final void zzl(zzfca zzfcaVar, long j10, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar, boolean z10) {
        Map map = this.zzb;
        String zzj = zzj(zzfcaVar);
        if (map.containsKey(zzj)) {
            if (this.zze == null) {
                this.zze = zzfcaVar;
            }
            com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) map.get(zzj);
            zzvVar.zzb = j10;
            zzvVar.zzc = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgX)).booleanValue() && z10) {
                this.zzf = zzvVar;
            }
        }
    }

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzv zza() {
        return this.zzf;
    }

    public final zzcvr zzb() {
        return new zzcvr(this.zze, "", this, this.zzd, this.zzc);
    }

    public final List zzc() {
        return this.zza;
    }

    public final void zzd(zzfca zzfcaVar) {
        zzk(zzfcaVar, this.zza.size());
    }

    public final void zze(zzfca zzfcaVar) {
        Map map = this.zzb;
        Object obj = map.get(zzj(zzfcaVar));
        List list = this.zza;
        int indexOf = list.indexOf(obj);
        if (indexOf < 0 || indexOf >= map.size()) {
            indexOf = list.indexOf(this.zzf);
        }
        if (indexOf >= 0 && indexOf < map.size()) {
            this.zzf = (com.google.android.gms.ads.internal.client.zzv) list.get(indexOf);
            while (true) {
                indexOf++;
                if (indexOf < list.size()) {
                    com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) list.get(indexOf);
                    zzvVar.zzb = 0L;
                    zzvVar.zzc = null;
                } else {
                    return;
                }
            }
        }
    }

    public final void zzf(zzfca zzfcaVar, long j10, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfcaVar, j10, zzeVar, false);
    }

    public final void zzg(zzfca zzfcaVar, long j10, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfcaVar, j10, null, true);
    }

    public final synchronized void zzh(String str, List list) {
        Map map = this.zzb;
        if (map.containsKey(str)) {
            List list2 = this.zza;
            int indexOf = list2.indexOf((com.google.android.gms.ads.internal.client.zzv) map.get(str));
            try {
                list2.remove(indexOf);
            } catch (IndexOutOfBoundsException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry");
            }
            this.zzb.remove(str);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzk((zzfca) it.next(), indexOf);
                indexOf++;
            }
        }
    }

    public final void zzi(zzfcd zzfcdVar) {
        this.zzd = zzfcdVar;
    }
}
