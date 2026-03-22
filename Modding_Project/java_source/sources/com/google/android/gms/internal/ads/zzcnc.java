package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcnc implements zzcvy, zzcxm, zzcws, com.google.android.gms.ads.internal.client.zza, zzcwo, zzddu, zzcyo {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzfcn zze;
    private final zzfca zzf;
    private final zzfju zzg;
    private final zzfdi zzh;
    private final zzavu zzi;
    private final zzbel zzj;
    private final WeakReference zzk;
    private final WeakReference zzl;
    @Nullable
    private final zzcuy zzm;
    private final zzcyi zzn;
    private final zzcuu zzo;
    private boolean zzp;
    private final AtomicBoolean zzq = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcnc(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfcn zzfcnVar, zzfca zzfcaVar, zzfju zzfjuVar, zzfdi zzfdiVar, @Nullable View view, @Nullable zzcfg zzcfgVar, zzavu zzavuVar, zzbel zzbelVar, zzben zzbenVar, zzfhu zzfhuVar, @Nullable zzcuy zzcuyVar, zzcyi zzcyiVar, zzcuu zzcuuVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfcnVar;
        this.zzf = zzfcaVar;
        this.zzg = zzfjuVar;
        this.zzh = zzfdiVar;
        this.zzi = zzavuVar;
        this.zzk = new WeakReference(view);
        this.zzl = new WeakReference(zzcfgVar);
        this.zzj = zzbelVar;
        this.zzm = zzcuyVar;
        this.zzn = zzcyiVar;
        this.zzo = zzcuuVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List zzx() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlP)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            Context context = this.zza;
            if (com.google.android.gms.ads.internal.util.zzs.zzC(context)) {
                com.google.android.gms.ads.internal.zzv.zzr();
                Integer zzt = com.google.android.gms.ads.internal.util.zzs.zzt(context);
                if (zzt != null) {
                    int min = Math.min(zzt.intValue(), 20);
                    ArrayList arrayList = new ArrayList();
                    for (String str : this.zzf.zzd) {
                        arrayList.add(Uri.parse(str).buildUpon().appendQueryParameter("dspct", Integer.toString(min)).toString());
                    }
                    return arrayList;
                }
            }
        }
        return this.zzf.zzd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzy() {
        String str;
        int i10;
        zzfca zzfcaVar = this.zzf;
        List list = zzfcaVar.zzd;
        if (list != null && !list.isEmpty()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdO)).booleanValue()) {
                str = this.zzi.zzc().zzh(this.zza, (View) this.zzk.get(), null);
            } else {
                str = null;
            }
            if ((((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaH)).booleanValue() && this.zze.zzb.zzb.zzh) || !((Boolean) zzbfd.zzh.zze()).booleanValue()) {
                this.zzh.zza(this.zzg.zze(this.zze, zzfcaVar, false, str, null, zzx(), this.zzo), this.zzn);
                return;
            }
            if (((Boolean) zzbfd.zzg.zze()).booleanValue() && ((i10 = zzfcaVar.zzb) == 1 || i10 == 2 || i10 == 5)) {
                zzcfg zzcfgVar = (zzcfg) this.zzl.get();
            }
            zzgdn.zzr((zzgde) zzgdn.zzo(zzgde.zzw(zzgdn.zzh(null)), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbi)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcnb(this, str), this.zzb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzz(final int i10, final int i11) {
        View view;
        if (i10 > 0 && ((view = (View) this.zzk.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmy
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmz
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcnc.this.zzz(r2 - 1, r3);
                        }
                    });
                }
            }, i11, TimeUnit.MILLISECONDS);
        } else {
            zzy();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if ((!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaH)).booleanValue() || !this.zze.zzb.zzb.zzh) && ((Boolean) zzbfd.zzd.zze()).booleanValue()) {
            zzgdn.zzr((zzgde) zzgdn.zze(zzgde.zzw(this.zzj.zza()), Throwable.class, new zzfve() { // from class: com.google.android.gms.internal.ads.zzcmw
                @Override // com.google.android.gms.internal.ads.zzfve
                public final Object apply(Object obj) {
                    Throwable th2 = (Throwable) obj;
                    return "failure_click_attok";
                }
            }, zzcaf.zzg), new zzcna(this), this.zzb);
            return;
        }
        zzfdi zzfdiVar = this.zzh;
        zzfju zzfjuVar = this.zzg;
        zzfcn zzfcnVar = this.zze;
        zzfca zzfcaVar = this.zzf;
        Context context = this.zza;
        List zzd = zzfjuVar.zzd(zzfcnVar, zzfcaVar, zzfcaVar.zzc);
        int i10 = 1;
        if (true == com.google.android.gms.ads.internal.zzv.zzp().zzA(context)) {
            i10 = 2;
        }
        zzfdiVar.zzc(zzd, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzdu(zzbwc zzbwcVar, String str, String str2) {
        zzfju zzfjuVar = this.zzg;
        zzfdi zzfdiVar = this.zzh;
        zzfca zzfcaVar = this.zzf;
        zzfdiVar.zza(zzfjuVar.zzf(zzfcaVar, zzfcaVar.zzh, zzbwcVar), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zze() {
        zzfju zzfjuVar = this.zzg;
        zzfcn zzfcnVar = this.zze;
        zzfdi zzfdiVar = this.zzh;
        zzfca zzfcaVar = this.zzf;
        zzfdiVar.zza(zzfjuVar.zzd(zzfcnVar, zzfcaVar, zzfcaVar.zzi), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzf() {
        zzfju zzfjuVar = this.zzg;
        zzfcn zzfcnVar = this.zze;
        zzfdi zzfdiVar = this.zzh;
        zzfca zzfcaVar = this.zzf;
        zzfdiVar.zza(zzfjuVar.zzd(zzfcnVar, zzfcaVar, zzfcaVar.zzg), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzs(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbH)).booleanValue()) {
            int i10 = zzeVar.zza;
            zzfca zzfcaVar = this.zzf;
            ArrayList arrayList = new ArrayList();
            for (String str : zzfcaVar.zzo) {
                arrayList.add(zzfju.zzc(str, "@gw_mpe@", "2." + i10));
            }
            this.zzh.zza(this.zzg.zzd(this.zze, zzfcaVar, arrayList), null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcws
    public final void zzt() {
        if (!this.zzq.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdX)).intValue();
        if (intValue > 0) {
            zzz(intValue, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdY)).intValue());
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdW)).booleanValue()) {
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmv
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmx
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcnc.this.zzy();
                        }
                    });
                }
            });
        } else {
            zzy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxm
    public final synchronized void zzu() {
        zzcuy zzcuyVar;
        try {
            if (this.zzp) {
                ArrayList arrayList = new ArrayList(zzx());
                zzfca zzfcaVar = this.zzf;
                arrayList.addAll(zzfcaVar.zzf);
                this.zzh.zza(this.zzg.zze(this.zze, zzfcaVar, true, null, null, arrayList, null), null);
            } else {
                zzfdi zzfdiVar = this.zzh;
                zzfju zzfjuVar = this.zzg;
                zzfcn zzfcnVar = this.zze;
                zzfca zzfcaVar2 = this.zzf;
                zzfdiVar.zza(zzfjuVar.zzd(zzfcnVar, zzfcaVar2, zzfcaVar2.zzm), null);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdT)).booleanValue() && (zzcuyVar = this.zzm) != null) {
                    List<String> list = zzcuyVar.zzb().zzm;
                    String zzg = zzcuyVar.zza().zzg();
                    ArrayList<String> arrayList2 = new ArrayList();
                    for (String str : list) {
                        arrayList2.add(zzfju.zzc(str, "@gw_adnetstatus@", zzg));
                    }
                    long zza = zzcuyVar.zza().zza();
                    ArrayList arrayList3 = new ArrayList();
                    for (String str2 : arrayList2) {
                        arrayList3.add(zzfju.zzc(str2, "@gw_ttr@", Long.toString(zza, 10)));
                    }
                    zzfdiVar.zza(zzfjuVar.zzd(zzcuyVar.zzc(), zzcuyVar.zzb(), arrayList3), null);
                }
                zzfdiVar.zza(zzfjuVar.zzd(zzfcnVar, zzfcaVar2, zzfcaVar2.zzf), null);
            }
            this.zzp = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyo
    public final void zzv() {
        zzfca zzfcaVar = this.zzf;
        if (zzfcaVar.zze == 4) {
            this.zzh.zza(this.zzg.zzd(this.zze, zzfcaVar, zzfcaVar.zzaA), null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddu
    public final void zzw() {
        zzfju zzfjuVar = this.zzg;
        zzfcn zzfcnVar = this.zze;
        zzfdi zzfdiVar = this.zzh;
        zzfca zzfcaVar = this.zzf;
        zzfdiVar.zza(zzfjuVar.zzd(zzfcnVar, zzfcaVar, zzfcaVar.zzau), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzc() {
    }
}
