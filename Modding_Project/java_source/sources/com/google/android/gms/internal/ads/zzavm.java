package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.ss.ttvideoengine.ITTVideoEngineInternal;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzavm implements zzavp {
    @Nullable
    private static zzavm zzb;
    private final Context zzc;
    private final zzfpv zzd;
    private final zzfqc zze;
    private final zzfqe zzf;
    private final zzawr zzg;
    private final zzfoi zzh;
    private final Executor zzi;
    private final zzfqb zzj;
    private final zzaxg zzl;
    @Nullable
    private final zzawy zzm;
    @Nullable
    private final zzawp zzn;
    private volatile boolean zzp;
    private volatile boolean zzq;
    private final int zzr;
    @VisibleForTesting
    volatile long zza = 0;
    private final Object zzo = new Object();
    private final CountDownLatch zzk = new CountDownLatch(1);

    @VisibleForTesting
    zzavm(@NonNull Context context, @NonNull zzfoi zzfoiVar, @NonNull zzfpv zzfpvVar, @NonNull zzfqc zzfqcVar, @NonNull zzfqe zzfqeVar, @NonNull zzawr zzawrVar, @NonNull Executor executor, @NonNull zzfod zzfodVar, int i10, @Nullable zzaxg zzaxgVar, @Nullable zzawy zzawyVar, @Nullable zzawp zzawpVar) {
        this.zzq = false;
        this.zzc = context;
        this.zzh = zzfoiVar;
        this.zzd = zzfpvVar;
        this.zze = zzfqcVar;
        this.zzf = zzfqeVar;
        this.zzg = zzawrVar;
        this.zzi = executor;
        this.zzr = i10;
        this.zzl = zzaxgVar;
        this.zzm = zzawyVar;
        this.zzn = zzawpVar;
        this.zzq = false;
        this.zzj = new zzavk(this, zzfodVar);
    }

    public static synchronized zzavm zza(@NonNull Context context, @NonNull zzarx zzarxVar, boolean z10) {
        zzavm zzs;
        synchronized (zzavm.class) {
            zzfoj zzc = zzfok.zzc();
            zzc.zza(zzarxVar.zzf());
            zzc.zzg(zzarxVar.zzi());
            zzs = zzs(context, Executors.newCachedThreadPool(), zzc.zzh(), z10);
        }
        return zzs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzj(zzavm zzavmVar) {
        String str;
        String str2;
        int length;
        boolean zza;
        long currentTimeMillis = System.currentTimeMillis();
        zzfpu zzu = zzavmVar.zzu(1);
        if (zzu != null) {
            String zzk = zzu.zza().zzk();
            str2 = zzu.zza().zzj();
            str = zzk;
        } else {
            str = null;
            str2 = null;
        }
        try {
            try {
                Context context = zzavmVar.zzc;
                int i10 = zzavmVar.zzr;
                zzfoi zzfoiVar = zzavmVar.zzh;
                zzfpz zza2 = zzfos.zza(context, 1, i10, str, str2, "1", zzfoiVar);
                byte[] bArr = zza2.zzb;
                if (bArr != null && (length = bArr.length) != 0) {
                    try {
                        zzayp zzb2 = zzayp.zzb(zzgxz.zzv(bArr, 0, length), zzgyr.zza());
                        if (!zzb2.zzc().zzk().isEmpty() && !zzb2.zzc().zzj().isEmpty() && zzb2.zzd().zzA().length != 0) {
                            zzfpu zzu2 = zzavmVar.zzu(1);
                            if (zzu2 != null) {
                                zzays zza3 = zzu2.zza();
                                if (zzb2.zzc().zzk().equals(zza3.zzk())) {
                                    if (!zzb2.zzc().zzj().equals(zza3.zzj())) {
                                    }
                                }
                            }
                            zzfqb zzfqbVar = zzavmVar.zzj;
                            int i11 = zza2.zzc;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcD)).booleanValue()) {
                                if (i11 == 3) {
                                    zza = zzavmVar.zze.zza(zzb2);
                                } else {
                                    if (i11 == 4) {
                                        zza = zzavmVar.zze.zzb(zzb2, zzfqbVar);
                                    }
                                    zzavmVar.zzh.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                                }
                            } else {
                                zza = zzavmVar.zzd.zza(zzb2, zzfqbVar);
                            }
                            if (zza) {
                                zzfpu zzu3 = zzavmVar.zzu(1);
                                if (zzu3 != null) {
                                    if (zzavmVar.zzf.zzc(zzu3)) {
                                        zzavmVar.zzq = true;
                                    }
                                    zzavmVar.zza = System.currentTimeMillis() / 1000;
                                }
                            }
                            zzavmVar.zzh.zzd(4009, System.currentTimeMillis() - currentTimeMillis);
                        }
                        zzavmVar.zzh.zzd(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ENABLE_NATIVE_MDL, System.currentTimeMillis() - currentTimeMillis);
                    } catch (NullPointerException unused) {
                        zzavmVar.zzh.zzd(2030, System.currentTimeMillis() - currentTimeMillis);
                    }
                } else {
                    zzfoiVar.zzd(5009, System.currentTimeMillis() - currentTimeMillis);
                }
            } catch (zzgzw e10) {
                zzavmVar.zzh.zzc(4002, System.currentTimeMillis() - currentTimeMillis, e10);
            }
            zzavmVar.zzk.countDown();
        } catch (Throwable th2) {
            zzavmVar.zzk.countDown();
            throw th2;
        }
    }

    private static synchronized zzavm zzs(@NonNull Context context, @NonNull Executor executor, zzfok zzfokVar, boolean z10) {
        zzavm zzavmVar;
        zzawa zzawaVar;
        zzaxg zzaxgVar;
        zzawy zzawyVar;
        zzfok zzfokVar2;
        zzawp zzawpVar;
        synchronized (zzavm.class) {
            try {
                if (zzb == null) {
                    zzfoi zza = zzfoi.zza(context, executor, z10);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdG)).booleanValue()) {
                        zzawaVar = zzawa.zzc(context);
                    } else {
                        zzawaVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdH)).booleanValue()) {
                        zzaxgVar = zzaxg.zzd(context, executor);
                    } else {
                        zzaxgVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcV)).booleanValue()) {
                        zzawyVar = new zzawy();
                    } else {
                        zzawyVar = null;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdd)).booleanValue()) {
                        zzawpVar = new zzawp();
                        zzfokVar2 = zzfokVar;
                    } else {
                        zzfokVar2 = zzfokVar;
                        zzawpVar = null;
                    }
                    zzfoz zzc = zzfoz.zzc(context, executor, zza, zzfokVar2);
                    zzawq zzawqVar = new zzawq(context);
                    zzawr zzawrVar = new zzawr(zzfokVar, zzc, new zzaxe(context, zzawqVar), zzawqVar, zzawaVar, zzaxgVar, zzawyVar, zzawpVar);
                    int zzb2 = zzfpi.zzb(context, zza);
                    zzfod zzfodVar = new zzfod();
                    zzavm zzavmVar2 = new zzavm(context, zza, new zzfpv(context, zzb2), new zzfqc(context, zzb2, new zzavj(zza), ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcF)).booleanValue()), new zzfqe(context, zzawrVar, zza, zzfodVar, false), zzawrVar, executor, zzfodVar, zzb2, zzaxgVar, zzawyVar, zzawpVar);
                    zzb = zzavmVar2;
                    zzavmVar2.zzm();
                    zzb.zzp();
                }
                zzavmVar = zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzavmVar;
    }

    private final void zzt() {
        zzaxg zzaxgVar = this.zzl;
        if (zzaxgVar != null) {
            zzaxgVar.zzh();
        }
    }

    private final zzfpu zzu(int i10) {
        if (!zzfpi.zza(this.zzr)) {
            return null;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcD)).booleanValue()) {
            return this.zze.zzc(1);
        }
        return this.zzd.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzd(Context context, @Nullable String str, @Nullable View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zze(Context context, String str, @Nullable View view, @Nullable Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcV)).booleanValue()) {
            this.zzm.zzi();
        }
        zzp();
        zzfol zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zza2 = zza.zza(context, null, str, view, activity);
            this.zzh.zzf(5000, System.currentTimeMillis() - currentTimeMillis, zza2, null);
            return zza2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzf(Context context) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcV)).booleanValue()) {
            this.zzm.zzj();
        }
        zzp();
        zzfol zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzc = zza.zzc(context, null);
            this.zzh.zzf(5001, System.currentTimeMillis() - currentTimeMillis, zzc, null);
            return zzc;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzg(Context context) {
        return "19";
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final String zzh(Context context, @Nullable View view, @Nullable Activity activity) {
        zzt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcV)).booleanValue()) {
            this.zzm.zzk(context, view);
        }
        zzp();
        zzfol zza = this.zzf.zza();
        if (zza != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String zzb2 = zza.zzb(context, null, view, activity);
            this.zzh.zzf(5002, System.currentTimeMillis() - currentTimeMillis, zzb2, null);
            return zzb2;
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzk(@Nullable MotionEvent motionEvent) {
        zzfol zza = this.zzf.zza();
        if (zza != null) {
            try {
                zza.zzd(null, motionEvent);
            } catch (zzfqd e10) {
                this.zzh.zzc(e10.zza(), -1L, e10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzl(int i10, int i11, int i12) {
        DisplayMetrics displayMetrics;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmt)).booleanValue() && (displayMetrics = this.zzc.getResources().getDisplayMetrics()) != null) {
            float f10 = i10;
            float f11 = displayMetrics.density;
            float f12 = i11;
            MotionEvent obtain = MotionEvent.obtain(0L, 0L, 0, f10 * f11, f12 * f11, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain);
            obtain.recycle();
            float f13 = displayMetrics.density;
            MotionEvent obtain2 = MotionEvent.obtain(0L, 0L, 2, f10 * f13, f12 * f13, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain2);
            obtain2.recycle();
            float f14 = displayMetrics.density;
            MotionEvent obtain3 = MotionEvent.obtain(0L, i12, 1, f10 * f14, f12 * f14, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            zzk(obtain3);
            obtain3.recycle();
        }
    }

    final synchronized void zzm() {
        long currentTimeMillis = System.currentTimeMillis();
        zzfpu zzu = zzu(1);
        if (zzu != null) {
            if (this.zzf.zzc(zzu)) {
                this.zzq = true;
                this.zzk.countDown();
                return;
            }
            return;
        }
        this.zzh.zzd(TTVideoEngineInterface.PLAYER_OPTION_VC2_THREAD_PRIORITY_VALUE, System.currentTimeMillis() - currentTimeMillis);
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzawp zzawpVar = this.zzn;
        if (zzawpVar != null) {
            zzawpVar.zzb(Arrays.asList(stackTraceElementArr));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavp
    public final void zzo(@Nullable View view) {
        this.zzg.zzd(view);
    }

    public final void zzp() {
        if (!this.zzp) {
            synchronized (this.zzo) {
                try {
                    if (!this.zzp) {
                        if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                            return;
                        }
                        zzfpu zzb2 = this.zzf.zzb();
                        if ((zzb2 == null || zzb2.zzd(3600L)) && zzfpi.zza(this.zzr)) {
                            this.zzi.execute(new zzavl(this));
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final synchronized boolean zzr() {
        return this.zzq;
    }
}
