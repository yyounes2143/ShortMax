package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzehi implements zzgcu {
    private final zzfha zza;
    private final zzcwa zzb;
    private final zzfju zzc;
    private final zzfjy zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzcrd zzg;
    private final zzehb zzh;
    private final zzedr zzi;
    private final Context zzj;
    private final zzfhu zzk;
    private final zzegl zzl;
    private final zzdsd zzm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzehi(Context context, zzfha zzfhaVar, zzehb zzehbVar, zzcwa zzcwaVar, zzfju zzfjuVar, zzfjy zzfjyVar, zzcrd zzcrdVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzedr zzedrVar, zzfhu zzfhuVar, zzegl zzeglVar, zzdsd zzdsdVar) {
        this.zzj = context;
        this.zza = zzfhaVar;
        this.zzh = zzehbVar;
        this.zzb = zzcwaVar;
        this.zzc = zzfjuVar;
        this.zzd = zzfjyVar;
        this.zzg = zzcrdVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzedrVar;
        this.zzk = zzfhuVar;
        this.zzl = zzeglVar;
        this.zzm = zzdsdVar;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzb(zzehi zzehiVar, zzfca zzfcaVar, zzfcn zzfcnVar, zzedm zzedmVar, Throwable th2) {
        zzfhj zza = zzfhi.zza(zzehiVar.zzj, 12);
        zza.zzd(zzfcaVar.zzE);
        zza.zzi();
        com.google.common.util.concurrent.e zzo = zzgdn.zzo(zzedmVar.zza(zzfcnVar, zzfcaVar), zzfcaVar.zzR, TimeUnit.MILLISECONDS, zzehiVar.zzf);
        zzehiVar.zzh.zzf(zzfcnVar, zzfcaVar, zzo, zzehiVar.zzc);
        zzfht.zza(zzo, zzehiVar.zzk, zza);
        return zzo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zzfP)).booleanValue() == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0061 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zzc(com.google.android.gms.internal.ads.zzfcn r5) {
        /*
            com.google.android.gms.internal.ads.zzbcv r0 = com.google.android.gms.internal.ads.zzbde.zzfQ
            com.google.android.gms.internal.ads.zzbdc r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.String r1 = "No fill."
            r2 = 1
            if (r2 == r0) goto L18
            java.lang.String r0 = "No ad config."
            goto L19
        L18:
            r0 = r1
        L19:
            com.google.android.gms.internal.ads.zzfcm r5 = r5.zzb
            com.google.android.gms.internal.ads.zzfcd r5 = r5.zzb
            int r2 = r5.zzf
            if (r2 == 0) goto L57
            r3 = 200(0xc8, float:2.8E-43)
            r4 = 300(0x12c, float:4.2E-43)
            if (r2 < r3) goto L3c
            if (r2 >= r4) goto L3c
            com.google.android.gms.internal.ads.zzbcv r2 = com.google.android.gms.internal.ads.zzbde.zzfP
            com.google.android.gms.internal.ads.zzbdc r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.zzb(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L57
            goto L58
        L3c:
            if (r2 < r4) goto L45
            r0 = 400(0x190, float:5.6E-43)
            if (r2 >= r0) goto L45
            java.lang.String r1 = "No location header to follow redirect or too many redirects."
            goto L58
        L45:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Received error HTTP response code: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r1 = r0.toString()
            goto L58
        L57:
            r1 = r0
        L58:
            com.google.android.gms.internal.ads.zzfcc r5 = r5.zzj
            if (r5 == 0) goto L61
            java.lang.String r5 = r5.zza()
            return r5
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehi.zzc(com.google.android.gms.internal.ads.zzfcn):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* synthetic */ com.google.common.util.concurrent.e zza(Object obj) throws Exception {
        int i10;
        Bundle bundle;
        final zzfcn zzfcnVar = (zzfcn) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcq)).booleanValue() && (bundle = zzfcnVar.zzb.zzd) != null) {
            this.zzm.zza().putAll(bundle);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcr)).booleanValue()) {
            this.zzm.zza().putLong(zzdrr.RENDERING_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        String zzc = zzc(zzfcnVar);
        zzedr zzedrVar = this.zzi;
        zzfcm zzfcmVar = zzfcnVar.zzb;
        zzfcd zzfcdVar = zzfcmVar.zzb;
        zzedrVar.zzi(zzfcdVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziI)).booleanValue() && (i10 = zzfcdVar.zzf) != 0 && (i10 < 200 || i10 >= 300)) {
            return zzgdn.zzg(new zzehf(3, zzc));
        }
        String str = zzfcdVar.zzq;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzdR)).booleanValue() && !TextUtils.isEmpty(str)) {
            zzedrVar.zzh(str, zzfcmVar.zza);
        } else {
            for (zzfca zzfcaVar : zzfcmVar.zza) {
                zzedrVar.zzd(zzfcaVar);
                Iterator it = zzfcaVar.zza.iterator();
                while (true) {
                    if (it.hasNext()) {
                        zzedm zza = this.zzg.zza(zzfcaVar.zzb, (String) it.next());
                        if (zza == null || !zza.zzb(zzfcnVar, zzfcaVar)) {
                        }
                    } else {
                        zzedrVar.zzf(zzfcaVar, 0L, zzfdx.zzd(1, null, null));
                        break;
                    }
                }
            }
        }
        zzcwa zzcwaVar = this.zzb;
        zzcmu zzcmuVar = new zzcmu(zzfcnVar, this.zzd, this.zzc);
        Executor executor = this.zze;
        zzcwaVar.zzo(zzcmuVar, executor);
        if (zzfcdVar.zzr > 1) {
            return this.zzl.zzb(zzfcnVar);
        }
        String zzc2 = zzc(zzfcnVar);
        zzfha zzfhaVar = this.zza;
        zzfgu zzfguVar = zzfgu.RENDER_CONFIG_INIT;
        Objects.requireNonNull(zzfhaVar);
        zzfgg zza2 = zzfgk.zzc(zzgdn.zzg(new zzehf(3, zzc2)), zzfguVar, zzfhaVar).zza();
        final zzehb zzehbVar = this.zzh;
        zzehbVar.zzl();
        int i11 = 0;
        for (final zzfca zzfcaVar2 : zzfcmVar.zza) {
            Iterator it2 = zzfcaVar2.zza.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String str2 = (String) it2.next();
                final zzedm zza3 = this.zzg.zza(zzfcaVar2.zzb, str2);
                if (zza3 != null && zza3.zzb(zzfcnVar, zzfcaVar2)) {
                    zzfgq zzb = zzfhaVar.zzb(zzfgu.RENDER_CONFIG_WATERFALL, zza2);
                    zza2 = zzb.zzh("render-config-" + i11 + "-" + str2).zzc(Throwable.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzehg
                        @Override // com.google.android.gms.internal.ads.zzgcu
                        public final com.google.common.util.concurrent.e zza(Object obj2) {
                            return zzehi.zzb(zzehi.this, zzfcaVar2, zzfcnVar, zza3, (Throwable) obj2);
                        }
                    }).zza();
                    break;
                }
            }
            i11++;
        }
        zza2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehh
            @Override // java.lang.Runnable
            public final void run() {
                zzehb.this.zzj();
            }
        }, executor);
        return zza2;
    }
}
