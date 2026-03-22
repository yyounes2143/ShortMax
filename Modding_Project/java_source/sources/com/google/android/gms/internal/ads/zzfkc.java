package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkc {
    private final Map zza;
    private final zzfle zzb;
    private final zzfkl zzc;
    private final Clock zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkc(zzfle zzfleVar, zzfkl zzfklVar, Context context, Clock clock) {
        HashMap hashMap = new HashMap();
        this.zza = hashMap;
        hashMap.put(AdFormat.APP_OPEN_AD, new HashMap());
        hashMap.put(AdFormat.INTERSTITIAL, new HashMap());
        hashMap.put(AdFormat.REWARDED, new HashMap());
        this.zzb = zzfleVar;
        this.zzc = zzfklVar;
        this.zzd = clock;
    }

    @Nullable
    private final synchronized Object zzk(Class cls, AdFormat adFormat, String str) {
        Object cast;
        zzfkl zzfklVar = this.zzc;
        Clock clock = this.zzd;
        zzfklVar.zzg(clock.currentTimeMillis(), "2");
        Map map = this.zza;
        if (!map.containsKey(adFormat)) {
            return null;
        }
        zzfld zzfldVar = (zzfld) ((Map) map.get(adFormat)).get(str);
        if (zzfldVar != null && adFormat.equals(zzfldVar.zze())) {
            zzfkr zzfkrVar = new zzfkr(zzfldVar.zze.zza, zzfldVar.zze());
            zzfkrVar.zzb(str);
            zzfkt zzfktVar = new zzfkt(zzfkrVar, null);
            zzfklVar.zzl(clock.currentTimeMillis(), zzfktVar, zzfldVar.zze.zzd, zzfldVar.zzd(), "2");
            try {
                String zzo = zzfldVar.zzo();
                Object zzk = zzfldVar.zzk();
                if (zzk == null) {
                    cast = null;
                } else {
                    cast = cls.cast(zzk);
                }
                if (cast != null) {
                    zzfklVar.zzm(clock.currentTimeMillis(), zzfldVar.zze.zzd, zzfldVar.zzd(), zzo, zzfktVar, "2");
                }
                return cast;
            } catch (ClassCastException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "PreloadAdManager.pollAd");
                com.google.android.gms.ads.internal.util.zze.zzb("Unable to cast ad to the requested type:".concat(cls.getName()), e10);
                return null;
            }
        }
        return null;
    }

    private final synchronized boolean zzl(AdFormat adFormat) {
        int i10;
        int max;
        try {
            Map map = this.zza;
            if (map.containsKey(adFormat)) {
                i10 = ((Map) map.get(adFormat)).size();
            } else {
                i10 = 0;
            }
            int ordinal = adFormat.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        max = 0;
                    } else {
                        max = Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeO)).intValue(), 1);
                    }
                } else {
                    max = Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeN)).intValue(), 1);
                }
            } else {
                max = Math.max(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeM)).intValue(), 1);
            }
        } finally {
        }
        if (i10 >= max) {
            return false;
        }
        return true;
    }

    public final synchronized int zza(AdFormat adFormat, String str) {
        String str2;
        int i10;
        Map map = this.zza;
        int i11 = 0;
        if (!map.containsKey(adFormat)) {
            return 0;
        }
        zzfld zzfldVar = (zzfld) ((Map) map.get(adFormat)).get(str);
        if (zzfldVar != null) {
            i11 = zzfldVar.zzd();
        }
        zzfkl zzfklVar = this.zzc;
        long currentTimeMillis = this.zzd.currentTimeMillis();
        if (zzfldVar == null) {
            str2 = null;
        } else {
            str2 = zzfldVar.zze.zza;
        }
        String str3 = str2;
        if (zzfldVar == null) {
            i10 = -1;
        } else {
            i10 = zzfldVar.zze.zzd;
        }
        zzfklVar.zzf(i11, currentTimeMillis, str, str3, adFormat, i10);
        return i11;
    }

    @Nullable
    public final synchronized zzbaw zzb(String str) {
        return (zzbaw) zzk(zzbaw.class, AdFormat.APP_OPEN_AD, str);
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzbx zzc(String str) {
        return (com.google.android.gms.ads.internal.client.zzbx) zzk(com.google.android.gms.ads.internal.client.zzbx.class, AdFormat.INTERSTITIAL, str);
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzfv zzd(AdFormat adFormat, String str) {
        String str2;
        int i10;
        Map map = this.zza;
        if (map.containsKey(adFormat)) {
            zzfld zzfldVar = (zzfld) ((Map) map.get(adFormat)).get(str);
            zzfkl zzfklVar = this.zzc;
            long currentTimeMillis = this.zzd.currentTimeMillis();
            if (zzfldVar == null) {
                str2 = null;
            } else {
                str2 = zzfldVar.zze.zza;
            }
            int i11 = -1;
            if (zzfldVar == null) {
                i10 = -1;
            } else {
                i10 = zzfldVar.zze.zzd;
            }
            if (zzfldVar != null) {
                i11 = zzfldVar.zzd();
            }
            zzfklVar.zzd(currentTimeMillis, str, str2, adFormat, i10, i11);
            if (zzfldVar != null) {
                return zzfldVar.zze;
            }
        }
        return null;
    }

    @Nullable
    public final synchronized zzbwv zze(String str) {
        return (zzbwv) zzk(zzbwv.class, AdFormat.REWARDED, str);
    }

    public final synchronized Map zzf(int i10) {
        try {
            HashMap hashMap = new HashMap();
            AdFormat adFormat = AdFormat.getAdFormat(i10);
            if (adFormat != null) {
                Map map = this.zza;
                if (map.containsKey(adFormat)) {
                    for (zzfld zzfldVar : ((Map) map.get(adFormat)).values()) {
                        hashMap.put(zzfldVar.zzn(), zzfldVar.zze);
                    }
                    this.zzc.zze(adFormat, this.zzd.currentTimeMillis(), hashMap.size());
                    return hashMap;
                }
            }
            return hashMap;
        } finally {
        }
    }

    public final synchronized void zzg(int i10) {
        try {
            AdFormat adFormat = AdFormat.getAdFormat(i10);
            if (adFormat != null) {
                Map map = this.zza;
                if (map.containsKey(adFormat)) {
                    Map map2 = (Map) map.get(adFormat);
                    int size = map2.size();
                    for (String str : map2.keySet()) {
                        zzfld zzfldVar = (zzfld) map2.get(str);
                        if (zzfldVar != null) {
                            zzfldVar.zzA();
                            zzfldVar.zzv();
                            String valueOf = String.valueOf(str);
                            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Destroyed ad preloader for preloadId: ".concat(valueOf));
                        }
                    }
                    map2.clear();
                    String concat = "Destroyed all ad preloaders for ad format: ".concat(adFormat.toString());
                    int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
                    this.zzc.zzc(this.zzd.currentTimeMillis(), adFormat, size);
                }
            }
        } finally {
        }
    }

    public final synchronized boolean zzh(AdFormat adFormat, String str) {
        zzfld zzfldVar;
        Map map = this.zza;
        if (map.containsKey(adFormat) && (zzfldVar = (zzfld) ((Map) map.get(adFormat)).get(str)) != null) {
            ((Map) map.get(adFormat)).remove(str);
            zzfldVar.zzA();
            zzfldVar.zzv();
            zzfkl zzfklVar = this.zzc;
            long currentTimeMillis = this.zzd.currentTimeMillis();
            com.google.android.gms.ads.internal.client.zzfv zzfvVar = zzfldVar.zze;
            zzfklVar.zzb(currentTimeMillis, str, zzfvVar.zza, adFormat, zzfvVar.zzd, zzfldVar.zzd());
            return true;
        }
        return false;
    }

    public final synchronized boolean zzi(AdFormat adFormat, String str) {
        String zzo;
        boolean z10;
        Long l10;
        zzfkt zzfktVar;
        int i10;
        try {
            Clock clock = this.zzd;
            long currentTimeMillis = clock.currentTimeMillis();
            Map map = this.zza;
            int i11 = 0;
            if (!map.containsKey(adFormat)) {
                return false;
            }
            zzfld zzfldVar = (zzfld) ((Map) map.get(adFormat)).get(str);
            if (zzfldVar == null) {
                zzo = null;
            } else {
                zzo = zzfldVar.zzo();
            }
            if (zzo != null && adFormat.equals(zzfldVar.zze())) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                l10 = Long.valueOf(clock.currentTimeMillis());
            } else {
                l10 = null;
            }
            if (zzfldVar == null) {
                zzfktVar = null;
            } else {
                zzfkr zzfkrVar = new zzfkr(zzfldVar.zze.zza, adFormat);
                zzfkrVar.zzb(str);
                zzfktVar = new zzfkt(zzfkrVar, null);
            }
            zzfkl zzfklVar = this.zzc;
            if (zzfldVar == null) {
                i10 = 0;
            } else {
                i10 = zzfldVar.zze.zzd;
            }
            if (zzfldVar != null) {
                i11 = zzfldVar.zzd();
            }
            zzfklVar.zzh(i10, i11, currentTimeMillis, l10, zzo, zzfktVar, "2");
            return z10;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized boolean zzj(String str, com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzch zzchVar) {
        zzfld zzb;
        AdFormat adFormat = AdFormat.getAdFormat(zzfvVar.zzb);
        if (adFormat != null) {
            Map map = this.zza;
            if (map.containsKey(adFormat) && !((Map) map.get(adFormat)).containsKey(str) && zzl(adFormat) && (zzb = this.zzb.zzb(str, zzfvVar, zzchVar)) != null) {
                zzfkl zzfklVar = this.zzc;
                zzb.zzz(zzfklVar);
                zzb.zzh();
                ((Map) map.get(adFormat)).put(str, zzb);
                zzfkr zzfkrVar = new zzfkr(zzfvVar.zza, adFormat);
                zzfkrVar.zzb(str);
                zzfklVar.zzp(zzfvVar.zzd, this.zzd.currentTimeMillis(), new zzfkt(zzfkrVar, null), "2");
                return true;
            }
        }
        return false;
    }
}
