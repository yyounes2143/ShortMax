package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbyt {
    @GuardedBy("this")
    private final Map zza = new HashMap();
    @GuardedBy("this")
    private final List zzb = new ArrayList();
    private final Context zzc;
    private final zzbyf zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyt(Context context, zzbyf zzbyfVar) {
        this.zzc = context;
        this.zzd = zzbyfVar;
    }

    public static /* synthetic */ void zzb(zzbyt zzbytVar, Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            zzbytVar.zzd.zzd();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzc(String str) {
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
            zzbys zzbysVar = new zzbys(this, str);
            map.put(str, zzbysVar);
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzbysVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzd(zzbyr zzbyrVar) {
        this.zzb.add(zzbyrVar);
    }
}
