package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.GuardedBy;
import com.google.android.gms.internal.ads.zzbde;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcb {
    @GuardedBy("this")
    private final Map zza = new HashMap();
    @GuardedBy("this")
    private final List zzb = new ArrayList();
    private final Context zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcb(Context context) {
        this.zzc = context;
    }

    final synchronized void zzb(String str) {
        SharedPreferences sharedPreferences;
        try {
            Map map = this.zza;
            if (map.containsKey(str)) {
                return;
            }
            if (Objects.equals(str, "__default__")) {
                sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.zzc);
            } else {
                sharedPreferences = this.zzc.getSharedPreferences(str, 0);
            }
            zzca zzcaVar = new zzca(this, str);
            map.put(str, zzcaVar);
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzcaVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void zzc() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkQ)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        Map zzw = zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkV));
        for (String str : zzw.keySet()) {
            zzb(str);
        }
        zzd(new zzbz(zzw));
    }

    final synchronized void zzd(zzbz zzbzVar) {
        this.zzb.add(zzbzVar);
    }
}
