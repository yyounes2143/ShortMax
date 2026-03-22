package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class zzabo implements zzcb {
    private final Context zza;
    private final zzca zzb;
    private final SparseArray zzc;
    private final boolean zzd;
    private final zzaco zze;
    private final zzdj zzf;
    private final CopyOnWriteArraySet zzg;
    private zzet zzh;
    private final zzz zzi;
    private final zzbv zzj;
    private final zzfyq zzk;
    private zzdt zzl;
    @Nullable
    private Pair zzm;
    private int zzn;
    private int zzo;
    private long zzp;
    private long zzq;
    private int zzr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzabo(zzabh zzabhVar, zzabn zzabnVar) {
        Context context;
        zzca zzcaVar;
        boolean z10;
        zzdj zzdjVar;
        zzabs zzabsVar;
        context = zzabhVar.zza;
        this.zza = context;
        this.zzh = new zzet(10);
        zzcaVar = zzabhVar.zzc;
        zzdd.zzb(zzcaVar);
        this.zzb = zzcaVar;
        this.zzc = new SparseArray();
        this.zzk = zzfyq.zzn();
        this.zzj = zzbv.zza;
        z10 = zzabhVar.zzd;
        this.zzd = z10;
        zzdjVar = zzabhVar.zze;
        this.zzf = zzdjVar;
        zzabsVar = zzabhVar.zzb;
        this.zze = new zzaar(zzabsVar, zzdjVar);
        new zzabg(this);
        this.zzg = new CopyOnWriteArraySet();
        this.zzi = new zzx().zzan();
        this.zzp = -9223372036854775807L;
        this.zzq = -9223372036854775807L;
        this.zzr = -1;
        this.zzo = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final zzk zzA(@Nullable zzk zzkVar) {
        if (zzkVar != null && zzkVar.zzf()) {
            return zzkVar;
        }
        return zzk.zza;
    }

    public static /* synthetic */ void zzf(zzabo zzaboVar) {
        zzaboVar.zzn--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzj(final zzabo zzaboVar, boolean z10) {
        if (zzaboVar.zzo == 1) {
            zzaboVar.zzn++;
            zzaco zzacoVar = zzaboVar.zze;
            zzacoVar.zzj(z10);
            while (zzaboVar.zzh.zza() > 1) {
                zzaboVar.zzh.zzb();
            }
            if (zzaboVar.zzh.zza() == 1) {
                zzabm zzabmVar = (zzabm) zzaboVar.zzh.zzb();
                zzabmVar.getClass();
                zzacoVar.zzl(1, zzaboVar.zzi, zzabmVar.zza, zzabmVar.zzb, zzfyq.zzn());
            }
            zzaboVar.zzp = -9223372036854775807L;
            zzaboVar.zzq = -9223372036854775807L;
            zzdt zzdtVar = zzaboVar.zzl;
            zzdd.zzb(zzdtVar);
            zzdtVar.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabe
                @Override // java.lang.Runnable
                public final void run() {
                    zzabo.zzf(zzabo.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean zzy(zzabo zzaboVar, zzz zzzVar, int i10) {
        boolean z10;
        if (zzaboVar.zzo == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzk zzA = zzA(zzzVar.zzE);
        int i11 = zzA.zzd;
        try {
            if (i11 == 7) {
                if (Build.VERSION.SDK_INT >= 34 || !zzdr.zzb()) {
                    i11 = 7;
                } else {
                    zzi zzc = zzA.zzc();
                    zzc.zzd(6);
                    zzA = zzc.zzg();
                    zzk zzkVar = zzA;
                    zzdj zzdjVar = zzaboVar.zzf;
                    Looper myLooper = Looper.myLooper();
                    zzdd.zzb(myLooper);
                    final zzdt zzd = zzdjVar.zzd(myLooper, null);
                    zzaboVar.zzl = zzd;
                    zzca zzcaVar = zzaboVar.zzb;
                    Context context = zzaboVar.zza;
                    zzn zznVar = zzn.zza;
                    Objects.requireNonNull(zzd);
                    zzcaVar.zza(context, zzkVar, zznVar, zzaboVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzabf
                        @Override // java.util.concurrent.Executor
                        public final void execute(Runnable runnable) {
                            zzdt.this.zzi(runnable);
                        }
                    }, zzaboVar.zzj, zzaboVar.zzk, 0L, false);
                    throw null;
                }
            }
            zzca zzcaVar2 = zzaboVar.zzb;
            Context context2 = zzaboVar.zza;
            zzn zznVar2 = zzn.zza;
            Objects.requireNonNull(zzd);
            zzcaVar2.zza(context2, zzkVar, zznVar2, zzaboVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzabf
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    zzdt.this.zzi(runnable);
                }
            }, zzaboVar.zzj, zzaboVar.zzk, 0L, false);
            throw null;
        } catch (zzbw e10) {
            throw new zzacn(e10, zzzVar);
        }
        if (!zzdr.zzc(i11) && Build.VERSION.SDK_INT >= 29) {
            String str = zzex.zza;
            zzea.zzf("PlaybackVidGraphWrapper", String.format(Locale.US, "Color transfer %d is not supported. Falling back to OpenGl tone mapping.", Integer.valueOf(i11)));
            zzA = zzk.zza;
        }
        zzk zzkVar2 = zzA;
        zzdj zzdjVar2 = zzaboVar.zzf;
        Looper myLooper2 = Looper.myLooper();
        zzdd.zzb(myLooper2);
        final zzdt zzd2 = zzdjVar2.zzd(myLooper2, null);
        zzaboVar.zzl = zzd2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean zzz(zzabo zzaboVar) {
        int i10 = zzaboVar.zzr;
        if (i10 != -1 && i10 == 0) {
            return true;
        }
        return false;
    }

    public final zzaco zze(int i10) {
        SparseArray sparseArray = this.zzc;
        if (zzex.zzH(sparseArray, 0)) {
            return (zzaco) sparseArray.get(0);
        }
        zzabi zzabiVar = new zzabi(this, this.zza, 0);
        this.zzg.add(zzabiVar);
        sparseArray.put(0, zzabiVar);
        return zzabiVar;
    }

    public final void zzq() {
        zzeo zzeoVar = zzeo.zza;
        zzeoVar.zzb();
        zzeoVar.zza();
        this.zzm = null;
    }

    public final void zzr() {
        if (this.zzo == 2) {
            return;
        }
        zzdt zzdtVar = this.zzl;
        if (zzdtVar != null) {
            zzdtVar.zzf(null);
        }
        this.zzm = null;
        this.zzo = 2;
    }

    public final void zzs(Surface surface, zzeo zzeoVar) {
        Pair pair = this.zzm;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((zzeo) this.zzm.second).equals(zzeoVar)) {
            return;
        }
        this.zzm = Pair.create(surface, zzeoVar);
        zzeoVar.zzb();
        zzeoVar.zza();
    }

    public final void zzt(int i10) {
        this.zzr = 1;
    }

    public final void zzu() {
        this.zze.zzx();
    }

    public final void zzv() {
        this.zze.zzy();
    }
}
