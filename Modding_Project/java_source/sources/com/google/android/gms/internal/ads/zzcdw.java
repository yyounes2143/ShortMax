package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdw extends zzcdn implements zzcbr {
    public static final /* synthetic */ int zzd = 0;
    private zzcbs zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcdf zzi;
    private long zzj;
    private long zzk;

    public zzcdw(zzccb zzccbVar, zzcca zzccaVar) {
        super(zzccbVar);
        zzceo zzceoVar = new zzceo(zzccbVar.getContext(), zzccaVar, (zzccb) this.zzc.get(), null);
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("ExoPlayerAdapter initialized.");
        this.zze = zzceoVar;
        zzceoVar.zzL(this);
    }

    public static /* synthetic */ void zzb(zzcdw zzcdwVar) {
        String str;
        zzcdw zzcdwVar2;
        zzcdw zzcdwVar3;
        long longValue;
        long intValue;
        boolean booleanValue;
        zzcdw zzcdwVar4;
        long j10;
        long j11;
        String str2;
        zzcdw zzcdwVar5;
        long j12;
        boolean z10;
        long j13;
        long j14;
        long j15;
        String zzc = zzc(zzcdwVar.zzf);
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzP)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzu)).intValue();
            booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue();
            try {
            } catch (Throwable th2) {
                th = th2;
                zzcdwVar2 = booleanValue;
            }
        } catch (Exception e10) {
            e = e10;
            str = zzc;
            zzcdwVar2 = zzcdwVar;
        }
        synchronized (zzcdwVar) {
            try {
                if (com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - zzcdwVar.zzj <= longValue) {
                    if (!zzcdwVar.zzg) {
                        if (zzcdwVar.zzh) {
                            zzcdwVar3 = zzcdwVar;
                        } else if (zzcdwVar.zze.zzV()) {
                            long zzz = zzcdwVar.zze.zzz();
                            if (zzz > 0) {
                                long zzv = zzcdwVar.zze.zzv();
                                if (zzv != zzcdwVar.zzk) {
                                    if (zzv > 0) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    boolean z11 = z10;
                                    try {
                                        String str3 = zzcdwVar.zzf;
                                        if (booleanValue) {
                                            j13 = zzcdwVar.zze.zzA();
                                        } else {
                                            j13 = -1;
                                        }
                                        if (booleanValue) {
                                            j14 = zzcdwVar.zze.zzx();
                                        } else {
                                            j14 = -1;
                                        }
                                        if (booleanValue) {
                                            j15 = zzcdwVar.zze.zzB();
                                        } else {
                                            j15 = -1;
                                        }
                                        long j16 = j13;
                                        j11 = intValue;
                                        str2 = zzc;
                                        try {
                                            zzcdwVar.zzo(str3, zzc, zzv, zzz, z11, j16, j14, j15, zzcbs.zzs(), zzcbs.zzu());
                                            zzcdwVar5 = zzcdwVar;
                                            j10 = zzv;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zzcdwVar5 = zzcdwVar;
                                            str = str2;
                                            zzcdwVar2 = zzcdwVar5;
                                            try {
                                                throw th;
                                            } catch (Exception e11) {
                                                e = e11;
                                                String str4 = "Failed to preload url " + zzcdwVar2.zzf + " Exception: " + e.getMessage();
                                                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                                                com.google.android.gms.ads.internal.util.client.zzo.zzj(str4);
                                                com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
                                                zzcdwVar.release();
                                                zzcdwVar2.zzg(zzcdwVar2.zzf, str, "error", zzd("error", e));
                                                zzcdwVar3 = zzcdwVar2;
                                                com.google.android.gms.ads.internal.zzv.zzA().zzc(zzcdwVar3.zzi);
                                                return;
                                            }
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        str2 = zzc;
                                        zzcdwVar5 = zzcdwVar;
                                    }
                                    try {
                                        zzcdwVar5.zzk = j10;
                                        j12 = zzz;
                                        zzcdwVar5 = zzcdwVar5;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        str = str2;
                                        zzcdwVar2 = zzcdwVar5;
                                        throw th;
                                    }
                                } else {
                                    j10 = zzv;
                                    j11 = intValue;
                                    str2 = zzc;
                                    zzcdwVar5 = zzcdwVar;
                                    j12 = zzz;
                                }
                                if (j10 >= j12) {
                                    zzcdwVar5.zzj(zzcdwVar5.zzf, str2, j12);
                                    zzcdwVar3 = zzcdwVar5;
                                } else {
                                    int i11 = (zzcdwVar5.zze.zzw() > j11 ? 1 : (zzcdwVar5.zze.zzw() == j11 ? 0 : -1));
                                    zzcdwVar4 = zzcdwVar5;
                                    if (i11 >= 0) {
                                        zzcdwVar4 = zzcdwVar5;
                                        if (j10 > 0) {
                                            zzcdwVar3 = zzcdwVar5;
                                        }
                                    }
                                }
                            } else {
                                zzcdwVar4 = zzcdwVar;
                            }
                            zzcdwVar4.zzx(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzQ)).longValue());
                            return;
                        } else {
                            throw new IOException("ExoPlayer was released during preloading.");
                        }
                        com.google.android.gms.ads.internal.zzv.zzA().zzc(zzcdwVar3.zzi);
                        return;
                    }
                    throw new IOException("Abort requested before buffering finished. ");
                }
                throw new IOException("Timeout reached. Limit: " + longValue + " ms");
            } catch (Throwable th6) {
                th = th6;
                str = zzc;
                zzcdwVar2 = zzcdwVar;
            }
        }
    }

    protected static final String zzc(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzk(str)));
    }

    private static String zzd(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        return str + DomExceptionUtils.SEPARATOR + canonicalName + ":" + message;
    }

    private final void zzx(long j10) {
        com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdv
            @Override // java.lang.Runnable
            public final void run() {
                zzcdw.zzb(zzcdw.this);
            }
        }, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcbs zzcbsVar = this.zze;
        if (zzcbsVar != null) {
            zzcbsVar.zzL(null);
            this.zze.zzH();
        }
    }

    public final zzcbs zza() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzL(null);
        zzcbs zzcbsVar = this.zze;
        this.zze = null;
        return zzcbsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzf() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzg(this.zzf, zzc(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzi(final boolean z10, final long j10) {
        final zzccb zzccbVar = (zzccb) this.zzc.get();
        if (zzccbVar != null) {
            zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcdu
                @Override // java.lang.Runnable
                public final void run() {
                    zzccb.this.zzv(z10, j10);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzk(String str, Exception exc) {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Precache error", exc);
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzl(String str, Exception exc) {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzk("Precache exception", exc);
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzp(int i10) {
        this.zze.zzJ(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzq(int i10) {
        this.zze.zzK(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzr(int i10) {
        this.zze.zzM(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzs(int i10) {
        this.zze.zzN(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final boolean zzt(String str) {
        return zzu(str, new String[]{str});
    }

    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v24, types: [int] */
    /* JADX WARN: Type inference failed for: r3v31 */
    @Override // com.google.android.gms.internal.ads.zzcdn
    public final boolean zzu(String str, String[] strArr) {
        String str2;
        String str3;
        zzcdw zzcdwVar;
        long j10;
        long j11;
        zzcdw zzcdwVar2;
        long j12;
        long j13;
        long j14;
        String str4;
        boolean z10;
        long j15;
        long j16;
        long j17;
        zzcdw zzcdwVar3 = this;
        String str5 = str;
        zzcdwVar3.zzf = str5;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i10 = 0; i10 < strArr.length; i10++) {
                uriArr[i10] = Uri.parse(strArr[i10]);
            }
            zzcdwVar3.zze.zzF(uriArr, zzcdwVar3.zzb);
            zzccb zzccbVar = (zzccb) zzcdwVar3.zzc.get();
            if (zzccbVar != null) {
                zzccbVar.zzt(zzc, zzcdwVar3);
            }
            Clock zzD = com.google.android.gms.ads.internal.zzv.zzD();
            long currentTimeMillis = zzD.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzQ)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzP)).longValue() * 1000;
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzu)).intValue();
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue();
            long j18 = -1;
            while (true) {
                synchronized (this) {
                    try {
                        if (zzD.currentTimeMillis() - currentTimeMillis <= longValue2) {
                            if (!zzcdwVar3.zzg) {
                                if (zzcdwVar3.zzh) {
                                    break;
                                } else if (zzcdwVar3.zze.zzV()) {
                                    long zzz = zzcdwVar3.zze.zzz();
                                    if (zzz > 0) {
                                        long zzv = zzcdwVar3.zze.zzv();
                                        if (zzv != j18) {
                                            if (zzv > 0) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            if (booleanValue) {
                                                j15 = zzcdwVar3.zze.zzA();
                                            } else {
                                                j15 = -1;
                                            }
                                            if (booleanValue) {
                                                j16 = zzcdwVar3.zze.zzx();
                                            } else {
                                                j16 = -1;
                                            }
                                            if (booleanValue) {
                                                j17 = zzcdwVar3.zze.zzB();
                                            } else {
                                                j17 = -1;
                                            }
                                            try {
                                                j13 = zzz;
                                                long j19 = zzv;
                                                j10 = intValue;
                                                j11 = longValue2;
                                                j14 = longValue;
                                                str4 = zzc;
                                                try {
                                                    zzo(str, zzc, j19, j13, z10, j15, j16, j17, zzcbs.zzs(), zzcbs.zzu());
                                                    j18 = zzv;
                                                    str2 = j19;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    zzcdwVar = this;
                                                    str2 = str;
                                                    str3 = str4;
                                                    try {
                                                        throw th;
                                                    } catch (Exception e10) {
                                                        e = e10;
                                                        int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                                                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str2 + " Exception: " + e.getMessage());
                                                        com.google.android.gms.ads.internal.zzv.zzp().zzv(e, "VideoStreamExoPlayerCache.preload");
                                                        release();
                                                        zzcdwVar.zzg(str2, str3, "error", zzd("error", e));
                                                        return false;
                                                    }
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                str4 = zzc;
                                            }
                                        } else {
                                            j13 = zzz;
                                            j10 = intValue;
                                            j11 = longValue2;
                                            j14 = longValue;
                                            str4 = zzc;
                                            str2 = zzz;
                                        }
                                        zzcdwVar2 = (zzv > j13 ? 1 : (zzv == j13 ? 0 : -1));
                                        if (zzcdwVar2 >= 0) {
                                            zzj(str, str4, j13);
                                        } else {
                                            try {
                                                zzcdw zzcdwVar4 = this;
                                                str2 = str;
                                                str3 = str4;
                                                if (zzcdwVar4.zze.zzw() < j10 || zzv <= 0) {
                                                    j12 = j14;
                                                    zzcdwVar2 = zzcdwVar4;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                zzcdwVar = zzcdwVar2;
                                                throw th;
                                            }
                                        }
                                    } else {
                                        j10 = intValue;
                                        j11 = longValue2;
                                        str2 = str5;
                                        str3 = zzc;
                                        zzcdwVar2 = zzcdwVar3;
                                        j12 = longValue;
                                    }
                                    try {
                                        zzcdwVar2.wait(j12);
                                    } catch (InterruptedException unused) {
                                        throw new IOException("Wait interrupted.");
                                    }
                                } else {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                            } else {
                                throw new IOException("Abort requested before buffering finished. ");
                            }
                        } else {
                            throw new IOException("Timeout reached. Limit: " + longValue2 + " ms");
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        str2 = str5;
                        str3 = zzc;
                        zzcdwVar = zzcdwVar3;
                    }
                }
                zzcdwVar3 = zzcdwVar2;
                str5 = str2;
                zzc = str3;
                longValue = j12;
                intValue = j10;
                longValue2 = j11;
            }
            return true;
        } catch (Exception e11) {
            e = e11;
            str2 = str5;
            str3 = zzc;
            zzcdwVar = zzcdwVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzv() {
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final boolean zzw(String str, String[] strArr, zzcdf zzcdfVar) {
        this.zzf = str;
        this.zzi = zzcdfVar;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i10 = 0; i10 < strArr.length; i10++) {
                uriArr[i10] = Uri.parse(strArr[i10]);
            }
            this.zze.zzF(uriArr, this.zzb);
            zzccb zzccbVar = (zzccb) this.zzc.get();
            if (zzccbVar != null) {
                zzccbVar.zzt(zzc, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e10) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to preload url " + str + " Exception: " + e10.getMessage());
            com.google.android.gms.ads.internal.zzv.zzp().zzv(e10, "VideoStreamExoPlayerCache.preload");
            release();
            zzg(str, zzc, "error", zzd("error", e10));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzm(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzD(int i10, int i11) {
    }
}
