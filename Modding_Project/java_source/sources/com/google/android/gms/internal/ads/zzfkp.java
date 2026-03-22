package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.EnumMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkp {
    private final ConcurrentMap zza = new ConcurrentHashMap();
    private final ConcurrentMap zzb = new ConcurrentHashMap();
    private final zzfle zzc;
    private final zzfkl zzd;
    private final Context zze;
    @Nullable
    private volatile ConnectivityManager zzf;
    private final Clock zzg;
    private AtomicInteger zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkp(zzfle zzfleVar, zzfkl zzfklVar, Context context, Clock clock) {
        this.zzc = zzfleVar;
        this.zzd = zzfklVar;
        this.zze = context;
        this.zzg = clock;
    }

    static String zzd(String str, @Nullable AdFormat adFormat) {
        String name;
        if (adFormat == null) {
            name = "NULL";
        } else {
            name = adFormat.name();
        }
        return str + "#" + name;
    }

    @Nullable
    private final synchronized zzfld zzm(String str, AdFormat adFormat) {
        return (zzfld) this.zza.get(zzd(str, adFormat));
    }

    @Nullable
    private final synchronized Object zzn(Class cls, String str, AdFormat adFormat) {
        Object cast;
        zzfkt zzfktVar = new zzfkt(new zzfkr(str, adFormat), null);
        zzfkl zzfklVar = this.zzd;
        Clock clock = this.zzg;
        zzfklVar.zzl(clock.currentTimeMillis(), zzfktVar, -1, -1, "1");
        zzfld zzm = zzm(str, adFormat);
        if (zzm == null) {
            return null;
        }
        try {
            String zzo = zzm.zzo();
            Object zzk = zzm.zzk();
            if (zzk == null) {
                cast = null;
            } else {
                cast = cls.cast(zzk);
            }
            if (cast != null) {
                zzfklVar.zzm(clock.currentTimeMillis(), zzm.zze.zzd, zzm.zzd(), zzo, zzfktVar, "1");
            }
            return cast;
        } catch (ClassCastException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "PreloadAdManager.pollAd");
            com.google.android.gms.ads.internal.util.zze.zzb("Unable to cast ad to the requested type:".concat(cls.getName()), e10);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f6, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zzz)).booleanValue() != false) goto L59;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized java.util.List zzo(java.util.List r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.util.HashSet r0 = new java.util.HashSet     // Catch: java.lang.Throwable -> L48
            r0.<init>()     // Catch: java.lang.Throwable -> L48
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L48
            r1.<init>()     // Catch: java.lang.Throwable -> L48
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L48
        Lf:
            boolean r2 = r9.hasNext()     // Catch: java.lang.Throwable -> L48
            if (r2 == 0) goto L7e
            java.lang.Object r2 = r9.next()     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.ads.internal.client.zzfv r2 = (com.google.android.gms.ads.internal.client.zzfv) r2     // Catch: java.lang.Throwable -> L48
            java.lang.String r3 = r2.zza     // Catch: java.lang.Throwable -> L48
            int r4 = r2.zzb     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.ads.AdFormat r4 = com.google.android.gms.ads.AdFormat.getAdFormat(r4)     // Catch: java.lang.Throwable -> L48
            java.lang.String r3 = zzd(r3, r4)     // Catch: java.lang.Throwable -> L48
            r0.add(r3)     // Catch: java.lang.Throwable -> L48
            java.util.concurrent.ConcurrentMap r4 = r8.zza     // Catch: java.lang.Throwable -> L48
            java.lang.Object r5 = r4.get(r3)     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzfld r5 = (com.google.android.gms.internal.ads.zzfld) r5     // Catch: java.lang.Throwable -> L48
            if (r5 == 0) goto L51
            com.google.android.gms.ads.internal.client.zzfv r6 = r5.zze     // Catch: java.lang.Throwable -> L48
            boolean r6 = r6.equals(r2)     // Catch: java.lang.Throwable -> L48
            if (r6 != 0) goto L4b
            java.util.concurrent.ConcurrentMap r6 = r8.zzb     // Catch: java.lang.Throwable -> L48
            r6.put(r3, r5)     // Catch: java.lang.Throwable -> L48
            r4.remove(r3)     // Catch: java.lang.Throwable -> L48
            r1.add(r2)     // Catch: java.lang.Throwable -> L48
            goto Lf
        L48:
            r9 = move-exception
            goto L107
        L4b:
            int r2 = r2.zzd     // Catch: java.lang.Throwable -> L48
            r5.zzB(r2)     // Catch: java.lang.Throwable -> L48
            goto Lf
        L51:
            java.util.concurrent.ConcurrentMap r5 = r8.zzb     // Catch: java.lang.Throwable -> L48
            boolean r6 = r5.containsKey(r3)     // Catch: java.lang.Throwable -> L48
            if (r6 == 0) goto L7a
            java.lang.Object r6 = r5.get(r3)     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzfld r6 = (com.google.android.gms.internal.ads.zzfld) r6     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.ads.internal.client.zzfv r7 = r6.zze     // Catch: java.lang.Throwable -> L48
            boolean r7 = r7.equals(r2)     // Catch: java.lang.Throwable -> L48
            if (r7 == 0) goto L76
            int r2 = r2.zzd     // Catch: java.lang.Throwable -> L48
            r6.zzB(r2)     // Catch: java.lang.Throwable -> L48
            r6.zzy()     // Catch: java.lang.Throwable -> L48
            r4.put(r3, r6)     // Catch: java.lang.Throwable -> L48
            r5.remove(r3)     // Catch: java.lang.Throwable -> L48
            goto Lf
        L76:
            r1.add(r2)     // Catch: java.lang.Throwable -> L48
            goto Lf
        L7a:
            r1.add(r2)     // Catch: java.lang.Throwable -> L48
            goto Lf
        L7e:
            java.util.concurrent.ConcurrentMap r9 = r8.zza     // Catch: java.lang.Throwable -> L48
            java.util.Set r9 = r9.entrySet()     // Catch: java.lang.Throwable -> L48
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L48
        L88:
            boolean r2 = r9.hasNext()     // Catch: java.lang.Throwable -> L48
            if (r2 == 0) goto Lb5
            java.lang.Object r2 = r9.next()     // Catch: java.lang.Throwable -> L48
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> L48
            java.lang.Object r3 = r2.getKey()     // Catch: java.lang.Throwable -> L48
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> L48
            boolean r3 = r0.contains(r3)     // Catch: java.lang.Throwable -> L48
            if (r3 != 0) goto L88
            java.util.concurrent.ConcurrentMap r3 = r8.zzb     // Catch: java.lang.Throwable -> L48
            java.lang.Object r4 = r2.getKey()     // Catch: java.lang.Throwable -> L48
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L48
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzfld r2 = (com.google.android.gms.internal.ads.zzfld) r2     // Catch: java.lang.Throwable -> L48
            r3.put(r4, r2)     // Catch: java.lang.Throwable -> L48
            r9.remove()     // Catch: java.lang.Throwable -> L48
            goto L88
        Lb5:
            java.util.concurrent.ConcurrentMap r9 = r8.zzb     // Catch: java.lang.Throwable -> L48
            java.util.Set r9 = r9.entrySet()     // Catch: java.lang.Throwable -> L48
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L48
        Lbf:
            boolean r0 = r9.hasNext()     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L105
            java.lang.Object r0 = r9.next()     // Catch: java.lang.Throwable -> L48
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L48
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzfld r0 = (com.google.android.gms.internal.ads.zzfld) r0     // Catch: java.lang.Throwable -> L48
            r0.zzA()     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzbcv r2 = com.google.android.gms.internal.ads.zzbde.zzy     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzbdc r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L48
            java.lang.Object r2 = r3.zzb(r2)     // Catch: java.lang.Throwable -> L48
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L48
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L48
            if (r2 != 0) goto Lf8
            com.google.android.gms.internal.ads.zzbcv r2 = com.google.android.gms.internal.ads.zzbde.zzz     // Catch: java.lang.Throwable -> L48
            com.google.android.gms.internal.ads.zzbdc r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L48
            java.lang.Object r2 = r3.zzb(r2)     // Catch: java.lang.Throwable -> L48
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L48
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L48
            if (r2 == 0) goto Lfb
        Lf8:
            r0.zzv()     // Catch: java.lang.Throwable -> L48
        Lfb:
            boolean r0 = r0.zzC()     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto Lbf
            r9.remove()     // Catch: java.lang.Throwable -> L48
            goto Lbf
        L105:
            monitor-exit(r8)
            return r1
        L107:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L48
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfkp.zzo(java.util.List):java.util.List");
    }

    private final synchronized void zzp(String str, zzfld zzfldVar) {
        zzfldVar.zzh();
        this.zza.put(str, zzfldVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzq(boolean z10) {
        try {
            if (z10) {
                for (zzfld zzfldVar : this.zza.values()) {
                    zzfldVar.zzy();
                }
            } else {
                for (zzfld zzfldVar2 : this.zza.values()) {
                    zzfldVar2.zzf.set(false);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzr(boolean z10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzw)).booleanValue()) {
            zzq(z10);
        }
    }

    private final synchronized boolean zzs(String str, AdFormat adFormat) {
        boolean z10;
        Long l10;
        int i10;
        int zzd;
        String zzo;
        try {
            Clock clock = this.zzg;
            long currentTimeMillis = clock.currentTimeMillis();
            zzfld zzm = zzm(str, adFormat);
            if (zzm != null && zzm.zzC()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                l10 = Long.valueOf(clock.currentTimeMillis());
            } else {
                l10 = null;
            }
            zzfkt zzfktVar = new zzfkt(new zzfkr(str, adFormat), null);
            zzfkl zzfklVar = this.zzd;
            if (zzm == null) {
                i10 = 0;
            } else {
                i10 = zzm.zze.zzd;
            }
            if (zzm == null) {
                zzd = 0;
            } else {
                zzd = zzm.zzd();
            }
            if (zzm == null) {
                zzo = null;
            } else {
                zzo = zzm.zzo();
            }
            zzfklVar.zzh(i10, zzd, currentTimeMillis, l10, zzo, zzfktVar, "1");
        } catch (Throwable th2) {
            throw th2;
        }
        return z10;
    }

    @Nullable
    public final synchronized zzbaw zza(String str) {
        return (zzbaw) zzn(zzbaw.class, str, AdFormat.APP_OPEN_AD);
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzbx zzb(String str) {
        return (com.google.android.gms.ads.internal.client.zzbx) zzn(com.google.android.gms.ads.internal.client.zzbx.class, str, AdFormat.INTERSTITIAL);
    }

    @Nullable
    public final synchronized zzbwv zzc(String str) {
        return (zzbwv) zzn(zzbwv.class, str, AdFormat.REWARDED);
    }

    public final void zzg(zzbpq zzbpqVar) {
        this.zzc.zzc(zzbpqVar);
    }

    public final synchronized void zzh(List list, com.google.android.gms.ads.internal.client.zzce zzceVar) {
        try {
            List<com.google.android.gms.ads.internal.client.zzfv> zzo = zzo(list);
            EnumMap enumMap = new EnumMap(AdFormat.class);
            for (com.google.android.gms.ads.internal.client.zzfv zzfvVar : zzo) {
                String str = zzfvVar.zza;
                AdFormat adFormat = AdFormat.getAdFormat(zzfvVar.zzb);
                zzfld zza = this.zzc.zza(zzfvVar, zzceVar);
                if (adFormat != null && zza != null) {
                    AtomicInteger atomicInteger = this.zzh;
                    if (atomicInteger != null) {
                        zza.zzx(atomicInteger.get());
                    }
                    zzfkl zzfklVar = this.zzd;
                    zza.zzz(zzfklVar);
                    zzp(zzd(str, adFormat), zza);
                    enumMap.put((EnumMap) adFormat, (AdFormat) Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzi(enumMap, adFormat, 0)).intValue() + 1));
                    zzfklVar.zzp(zzfvVar.zzd, this.zzg.currentTimeMillis(), new zzfkt(new zzfkr(str, adFormat), null), "1");
                }
            }
            this.zzd.zzo(enumMap, this.zzg.currentTimeMillis(), "1");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void zzi() {
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
                    try {
                        this.zzf = (ConnectivityManager) this.zze.getSystemService("connectivity");
                    } catch (ClassCastException e10) {
                        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get connectivity manager", e10);
                    }
                }
            }
        }
        if (PlatformVersion.isAtLeastO() && this.zzf != null) {
            try {
                this.zzf.registerDefaultNetworkCallback(new zzfko(this));
            } catch (RuntimeException e11) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to register network callback", e11);
                this.zzh = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzD)).intValue());
            }
        } else {
            this.zzh = new AtomicInteger(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzD)).intValue());
        }
        com.google.android.gms.ads.internal.zzv.zzb().zzc(new zzfkn(this));
    }

    public final synchronized boolean zzj(String str) {
        return zzs(str, AdFormat.APP_OPEN_AD);
    }

    public final synchronized boolean zzk(String str) {
        return zzs(str, AdFormat.INTERSTITIAL);
    }

    public final synchronized boolean zzl(String str) {
        return zzs(str, AdFormat.REWARDED);
    }
}
