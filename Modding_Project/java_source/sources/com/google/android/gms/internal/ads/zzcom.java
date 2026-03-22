package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcom extends zzcra {
    @Nullable
    private final zzcfg zzc;
    private final int zzd;
    private final Context zze;
    private final zzcoa zzf;
    private final zzdgn zzg;
    private final zzddh zzh;
    private final zzcwl zzi;
    private final boolean zzj;
    private final zzbzw zzk;
    private boolean zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcom(zzcqz zzcqzVar, Context context, @Nullable zzcfg zzcfgVar, int i10, zzcoa zzcoaVar, zzdgn zzdgnVar, zzddh zzddhVar, zzcwl zzcwlVar, zzbzw zzbzwVar) {
        super(zzcqzVar);
        this.zzl = false;
        this.zzc = zzcfgVar;
        this.zze = context;
        this.zzd = i10;
        this.zzf = zzcoaVar;
        this.zzg = zzdgnVar;
        this.zzh = zzddhVar;
        this.zzi = zzcwlVar;
        this.zzj = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfK)).booleanValue();
        this.zzk = zzbzwVar;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcra
    public final void zzb() {
        super.zzb();
        zzcfg zzcfgVar = this.zzc;
        if (zzcfgVar != null) {
            zzcfgVar.destroy();
        }
    }

    public final void zzc(zzbaq zzbaqVar) {
        zzcfg zzcfgVar = this.zzc;
        if (zzcfgVar != null) {
            zzcfgVar.zzak(zzbaqVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r5 = r5;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v13, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.app.Activity r5, com.google.android.gms.internal.ads.zzbbd r6, boolean r7) throws android.os.RemoteException {
        /*
            r4 = this;
            if (r5 != 0) goto L4
            android.content.Context r5 = r4.zze
        L4:
            boolean r6 = r4.zzj
            if (r6 == 0) goto Ld
            com.google.android.gms.internal.ads.zzddh r0 = r4.zzh
            r0.zzb()
        Ld:
            com.google.android.gms.ads.internal.zzv.zzr()
            com.google.android.gms.internal.ads.zzdgn r0 = r4.zzg
            com.google.android.gms.internal.ads.zzfca r1 = r0.zza()
            boolean r1 = com.google.android.gms.ads.internal.util.zzs.zzO(r1)
            if (r1 != 0) goto L72
            com.google.android.gms.internal.ads.zzbcv r1 = com.google.android.gms.internal.ads.zzbde.zzaQ
            com.google.android.gms.internal.ads.zzbdc r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L72
            com.google.android.gms.ads.internal.zzv.zzr()
            boolean r1 = com.google.android.gms.ads.internal.util.zzs.zzH(r5)
            if (r1 == 0) goto L72
            int r6 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r6 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.client.zzo.zzj(r6)
            com.google.android.gms.internal.ads.zzcwl r6 = r4.zzi
            r6.zzd()
            com.google.android.gms.internal.ads.zzbcv r6 = com.google.android.gms.internal.ads.zzbde.zzaR
            com.google.android.gms.internal.ads.zzbdc r7 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r6 = r7.zzb(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto Le5
            com.google.android.gms.internal.ads.zzfot r6 = new com.google.android.gms.internal.ads.zzfot
            android.content.Context r5 = r5.getApplicationContext()
            com.google.android.gms.ads.internal.util.zzbt r7 = com.google.android.gms.ads.internal.zzv.zzv()
            android.os.Looper r7 = r7.zzb()
            r6.<init>(r5, r7)
            com.google.android.gms.internal.ads.zzfcn r5 = r4.zza
            com.google.android.gms.internal.ads.zzfcm r5 = r5.zzb
            com.google.android.gms.internal.ads.zzfcd r5 = r5.zzb
            java.lang.String r5 = r5.zzb
            r6.zza(r5)
            return
        L72:
            com.google.android.gms.internal.ads.zzbcv r1 = com.google.android.gms.internal.ads.zzbde.zzmp
            com.google.android.gms.internal.ads.zzbdc r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r2 = 0
            if (r1 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzcfg r1 = r4.zzc
            if (r1 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzfca r1 = r1.zzD()
            if (r1 == 0) goto Lb3
            boolean r3 = r1.zzar
            if (r3 == 0) goto Lb3
            int r1 = r1.zzas
            com.google.android.gms.internal.ads.zzbzw r3 = r4.zzk
            int r3 = r3.zzb()
            if (r1 != r3) goto L9e
            goto Lb3
        L9e:
            int r5 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r5 = "The app open consent form has been shown."
            com.google.android.gms.ads.internal.util.client.zzo.zzj(r5)
            com.google.android.gms.internal.ads.zzcwl r5 = r4.zzi
            r6 = 12
            java.lang.String r7 = "The consent form has already been shown."
            com.google.android.gms.ads.internal.client.zze r6 = com.google.android.gms.internal.ads.zzfdx.zzd(r6, r7, r2)
            r5.zzc(r6)
            return
        Lb3:
            boolean r1 = r4.zzl
            if (r1 == 0) goto Lc9
            int r1 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r1 = "App open interstitial ad is already visible."
            com.google.android.gms.ads.internal.util.client.zzo.zzj(r1)
            com.google.android.gms.internal.ads.zzcwl r1 = r4.zzi
            r3 = 10
            com.google.android.gms.ads.internal.client.zze r2 = com.google.android.gms.internal.ads.zzfdx.zzd(r3, r2, r2)
            r1.zzc(r2)
        Lc9:
            boolean r1 = r4.zzl
            if (r1 != 0) goto Le5
            com.google.android.gms.internal.ads.zzcwl r1 = r4.zzi     // Catch: com.google.android.gms.internal.ads.zzdgm -> Lda
            r0.zzb(r7, r5, r1)     // Catch: com.google.android.gms.internal.ads.zzdgm -> Lda
            if (r6 == 0) goto Ldc
            com.google.android.gms.internal.ads.zzddh r5 = r4.zzh     // Catch: com.google.android.gms.internal.ads.zzdgm -> Lda
            r5.zza()     // Catch: com.google.android.gms.internal.ads.zzdgm -> Lda
            goto Ldc
        Lda:
            r5 = move-exception
            goto Le0
        Ldc:
            r5 = 1
            r4.zzl = r5
            return
        Le0:
            com.google.android.gms.internal.ads.zzcwl r6 = r4.zzi
            r6.zze(r5)
        Le5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcom.zzd(android.app.Activity, com.google.android.gms.internal.ads.zzbbd, boolean):void");
    }

    public final void zze(long j10, int i10) {
        this.zzf.zza(j10, i10);
    }
}
