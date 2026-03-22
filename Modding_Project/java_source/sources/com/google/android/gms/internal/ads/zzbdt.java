package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzbdt {
    private final List zza = new LinkedList();
    private final Map zzb;
    private final Object zzc;

    public zzbdt(boolean z10, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        this.zzc = new Object();
        linkedHashMap.put(TextureRenderKeys.KEY_IS_ACTION, "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final zzbdq zzf() {
        return new zzbdq(com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime(), null, null);
    }

    public final zzbds zza() {
        zzbds zzbdsVar;
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue();
        StringBuilder sb2 = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.zzc) {
            try {
                List<zzbdq> list = this.zza;
                for (zzbdq zzbdqVar : list) {
                    long zza = zzbdqVar.zza();
                    String zzc = zzbdqVar.zzc();
                    zzbdq zzb = zzbdqVar.zzb();
                    if (zzb != null && zza > 0) {
                        sb2.append(zzc);
                        sb2.append('.');
                        sb2.append(zza - zzb.zza());
                        sb2.append(',');
                        if (booleanValue) {
                            if (!hashMap.containsKey(Long.valueOf(zzb.zza()))) {
                                hashMap.put(Long.valueOf(zzb.zza()), new StringBuilder(zzc));
                            } else {
                                StringBuilder sb3 = (StringBuilder) hashMap.get(Long.valueOf(zzb.zza()));
                                sb3.append('+');
                                sb3.append(zzc);
                            }
                        }
                    }
                }
                list.clear();
                String str = null;
                if (!TextUtils.isEmpty(null)) {
                    sb2.append((String) null);
                } else if (sb2.length() > 0) {
                    sb2.setLength(sb2.length() - 1);
                }
                StringBuilder sb4 = new StringBuilder();
                if (booleanValue) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        sb4.append((CharSequence) entry.getValue());
                        sb4.append('.');
                        sb4.append(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() + (((Long) entry.getKey()).longValue() - com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime()));
                        sb4.append(',');
                    }
                    if (sb4.length() > 0) {
                        sb4.setLength(sb4.length() - 1);
                    }
                    str = sb4.toString();
                }
                zzbdsVar = new zzbds(sb2.toString(), str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzbdsVar;
    }

    @VisibleForTesting
    public final Map zzb() {
        Map map;
        synchronized (this.zzc) {
            com.google.android.gms.ads.internal.zzv.zzp().zzg();
            map = this.zzb;
        }
        return map;
    }

    public final void zzc(@Nullable zzbdt zzbdtVar) {
        synchronized (this.zzc) {
        }
    }

    public final void zzd(String str, String str2) {
        zzbdj zzg;
        if (!TextUtils.isEmpty(str2) && (zzg = com.google.android.gms.ads.internal.zzv.zzp().zzg()) != null) {
            synchronized (this.zzc) {
                zzbdp zza = zzg.zza(str);
                Map map = this.zzb;
                map.put(str, zza.zza((String) map.get(str), str2));
            }
        }
    }

    public final boolean zze(zzbdq zzbdqVar, long j10, String... strArr) {
        synchronized (this.zzc) {
            this.zza.add(new zzbdq(j10, strArr[0], zzbdqVar));
        }
        return true;
    }
}
