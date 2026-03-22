package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfbx extends zzbwe {
    private final zzfbn zza;
    private final zzfbd zzb;
    private final zzfco zzc;
    @Nullable
    private zzdon zzd;
    private boolean zze = false;

    public zzfbx(zzfbn zzfbnVar, zzfbd zzfbdVar, zzfco zzfcoVar) {
        this.zza = zzfbnVar;
        this.zzb = zzfbdVar;
        this.zzc = zzfcoVar;
    }

    private final synchronized boolean zzy() {
        zzdon zzdonVar = this.zzd;
        if (zzdonVar != null) {
            if (!zzdonVar.zze()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final Bundle zzb() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzdon zzdonVar = this.zzd;
        if (zzdonVar != null) {
            return zzdonVar.zza();
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzea zzc() throws RemoteException {
        zzdon zzdonVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgW)).booleanValue() && (zzdonVar = this.zzd) != null) {
            return zzdonVar.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    @Nullable
    public final synchronized String zzd() throws RemoteException {
        zzdon zzdonVar = this.zzd;
        if (zzdonVar != null && zzdonVar.zzm() != null) {
            return zzdonVar.zzm().zzg();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final void zze() throws RemoteException {
        zzf(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        Context context = null;
        this.zzb.zzg(null);
        if (this.zzd != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzn().zza(context);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zzfN)).booleanValue() == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (java.util.regex.Pattern.matches(r1, r0) != false) goto L9;
     */
    @Override // com.google.android.gms.internal.ads.zzbwf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzg(com.google.android.gms.internal.ads.zzbwj r5) throws android.os.RemoteException {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L20
            java.lang.String r0 = r5.zzb     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzbcv r1 = com.google.android.gms.internal.ads.zzbde.zzfL     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzbdc r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L20
            java.lang.Object r1 = r2.zzb(r1)     // Catch: java.lang.Throwable -> L20
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L20
            if (r1 == 0) goto L2c
            if (r0 != 0) goto L19
            goto L2c
        L19:
            boolean r0 = java.util.regex.Pattern.matches(r1, r0)     // Catch: java.lang.Throwable -> L20 java.lang.RuntimeException -> L22
            if (r0 == 0) goto L2c
            goto L44
        L20:
            r5 = move-exception
            goto L62
        L22:
            r0 = move-exception
            java.lang.String r1 = "NonagonUtil.isPatternMatched"
            com.google.android.gms.internal.ads.zzbzs r2 = com.google.android.gms.ads.internal.zzv.zzp()     // Catch: java.lang.Throwable -> L20
            r2.zzw(r0, r1)     // Catch: java.lang.Throwable -> L20
        L2c:
            boolean r0 = r4.zzy()     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L46
            com.google.android.gms.internal.ads.zzbcv r0 = com.google.android.gms.internal.ads.zzbde.zzfN     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzbdc r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L20
            java.lang.Object r0 = r1.zzb(r0)     // Catch: java.lang.Throwable -> L20
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L20
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L20
            if (r0 != 0) goto L46
        L44:
            monitor-exit(r4)
            return
        L46:
            com.google.android.gms.internal.ads.zzfbf r0 = new com.google.android.gms.internal.ads.zzfbf     // Catch: java.lang.Throwable -> L20
            r1 = 0
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L20
            r4.zzd = r1     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzfbn r1 = r4.zza     // Catch: java.lang.Throwable -> L20
            r2 = 1
            r1.zzj(r2)     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.ads.internal.client.zzm r2 = r5.zza     // Catch: java.lang.Throwable -> L20
            java.lang.String r5 = r5.zzb     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.internal.ads.zzfbv r3 = new com.google.android.gms.internal.ads.zzfbv     // Catch: java.lang.Throwable -> L20
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L20
            r1.zzb(r2, r5, r0, r3)     // Catch: java.lang.Throwable -> L20
            monitor-exit(r4)
            return
        L62:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L20
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfbx.zzg(com.google.android.gms.internal.ads.zzbwj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final void zzh() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        if (this.zzd != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzn().zzb(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final void zzj() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzk(IObjectWrapper iObjectWrapper) {
        Context context;
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        if (this.zzd != null) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.zzn().zzc(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final void zzl(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzcbVar == null) {
            this.zzb.zzg(null);
        } else {
            this.zzb.zzg(new zzfbw(this, zzcbVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzm(String str) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
        this.zzc.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzn(boolean z10) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zze = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final void zzo(zzbwi zzbwiVar) throws RemoteException {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzb.zzm(zzbwiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzp(String str) throws RemoteException {
        Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
        this.zzc.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzq() throws RemoteException {
        zzr(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final synchronized void zzr(@Nullable IObjectWrapper iObjectWrapper) throws RemoteException {
        try {
            Preconditions.checkMainThread("showAd must be called on the main UI thread.");
            if (this.zzd != null) {
                Activity activity = null;
                if (iObjectWrapper != null) {
                    Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                    if (unwrap instanceof Activity) {
                        activity = (Activity) unwrap;
                    }
                }
                this.zzd.zzh(this.zze, activity);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final boolean zzs() throws RemoteException {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final boolean zzt() {
        zzdon zzdonVar = this.zzd;
        if (zzdonVar != null && zzdonVar.zzg()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwf
    public final void zzu(zzbwd zzbwdVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzb.zzn(zzbwdVar);
    }
}
