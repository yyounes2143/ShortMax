package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbsu;
import com.google.android.gms.internal.ads.zzbtj;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzcfg;
import com.google.android.gms.internal.ads.zzdsi;
import com.google.android.gms.internal.ads.zzdsj;
import com.google.android.gms.internal.ads.zzecm;
import com.google.android.gms.internal.ads.zzecn;
import com.google.android.gms.internal.ads.zzedf;
import com.google.android.gms.internal.ads.zzedh;
import com.google.android.gms.internal.ads.zzfrw;
import com.google.android.gms.internal.ads.zzfwg;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzm extends zzbtp implements zzah {
    @VisibleForTesting
    static final int zza = Color.argb(0, 0, 0, 0);
    protected final Activity zzb;
    @Nullable
    @VisibleForTesting
    AdOverlayInfoParcel zzc;
    @VisibleForTesting
    zzcfg zzd;
    @VisibleForTesting
    zzi zze;
    @VisibleForTesting
    zzu zzf;
    @VisibleForTesting
    FrameLayout zzh;
    @VisibleForTesting
    WebChromeClient.CustomViewCallback zzi;
    @VisibleForTesting
    zzh zzl;
    private Runnable zzq;
    private boolean zzr;
    private boolean zzs;
    private Toolbar zzw;
    @VisibleForTesting
    boolean zzg = false;
    @VisibleForTesting
    boolean zzj = false;
    @VisibleForTesting
    boolean zzk = false;
    @VisibleForTesting
    boolean zzm = false;
    @VisibleForTesting
    int zzn = 1;
    private final Object zzo = new Object();
    private final View.OnClickListener zzp = new zzf(this);
    private boolean zzt = false;
    private boolean zzu = false;
    private boolean zzv = true;

    public zzm(Activity activity) {
        this.zzb = activity;
    }

    private final void zzJ(View view) {
        zzedh zzQ;
        zzedf zzP;
        zzcfg zzcfgVar = this.zzd;
        if (zzcfgVar != null) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzfC)).booleanValue() && (zzP = zzcfgVar.zzP()) != null) {
                zzP.zza(view);
            } else if (((Boolean) zzbd.zzc().zzb(zzbde.zzfB)).booleanValue() && (zzQ = zzcfgVar.zzQ()) != null && zzQ.zzb()) {
                com.google.android.gms.ads.internal.zzv.zzC().zzg(zzQ.zza(), view);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zzaU)).booleanValue() != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zzaT)).booleanValue() != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzK(android.content.res.Configuration r6) {
        /*
            r5 = this;
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r5.zzc
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            com.google.android.gms.ads.internal.zzl r0 = r0.zzo
            if (r0 == 0) goto L10
            boolean r0 = r0.zzb
            if (r0 == 0) goto L10
            r0 = r1
            goto L11
        L10:
            r0 = r2
        L11:
            android.app.Activity r3 = r5.zzb
            com.google.android.gms.ads.internal.util.zzaa r4 = com.google.android.gms.ads.internal.zzv.zzs()
            boolean r6 = r4.zzd(r3, r6)
            boolean r4 = r5.zzk
            if (r4 == 0) goto L36
            if (r0 != 0) goto L36
            com.google.android.gms.internal.ads.zzbcv r0 = com.google.android.gms.internal.ads.zzbde.zzaU
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r4.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L34
            goto L36
        L34:
            r1 = r2
            goto L57
        L36:
            if (r6 == 0) goto L4a
            com.google.android.gms.internal.ads.zzbcv r6 = com.google.android.gms.internal.ads.zzbde.zzaT
            com.google.android.gms.internal.ads.zzbdc r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r6 = r0.zzb(r6)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L34
        L4a:
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r6 = r5.zzc
            if (r6 == 0) goto L57
            com.google.android.gms.ads.internal.zzl r6 = r6.zzo
            if (r6 == 0) goto L57
            boolean r6 = r6.zzg
            if (r6 == 0) goto L57
            r2 = r1
        L57:
            android.view.Window r6 = r3.getWindow()
            com.google.android.gms.internal.ads.zzbcv r0 = com.google.android.gms.internal.ads.zzbde.zzbr
            com.google.android.gms.internal.ads.zzbdc r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r3.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L81
            android.view.View r6 = r6.getDecorView()
            if (r1 == 0) goto L7b
            if (r2 == 0) goto L78
            r0 = 5894(0x1706, float:8.259E-42)
            goto L7d
        L78:
            r0 = 5380(0x1504, float:7.539E-42)
            goto L7d
        L7b:
            r0 = 256(0x100, float:3.59E-43)
        L7d:
            r6.setSystemUiVisibility(r0)
            return
        L81:
            r0 = 2048(0x800, float:2.87E-42)
            r3 = 1024(0x400, float:1.435E-42)
            if (r1 == 0) goto L99
            r6.addFlags(r3)
            r6.clearFlags(r0)
            if (r2 == 0) goto L98
            android.view.View r6 = r6.getDecorView()
            r0 = 4098(0x1002, float:5.743E-42)
            r6.setSystemUiVisibility(r0)
        L98:
            return
        L99:
            r6.addFlags(r0)
            r6.clearFlags(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzK(android.content.res.Configuration):void");
    }

    private static final void zzL(@Nullable zzedh zzedhVar, @Nullable View view) {
        if (zzedhVar != null && view != null) {
            if (!((Boolean) zzbd.zzc().zzb(zzbde.zzfB)).booleanValue() || !zzedhVar.zzb()) {
                com.google.android.gms.ads.internal.zzv.zzC().zzj(zzedhVar.zza(), view);
            }
        }
    }

    public final void zzA(int i10) {
        Activity activity = this.zzb;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzbd.zzc().zzb(zzbde.zzgk)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzbd.zzc().zzb(zzbde.zzgl)).intValue()) {
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= ((Integer) zzbd.zzc().zzb(zzbde.zzgm)).intValue()) {
                    if (i11 <= ((Integer) zzbd.zzc().zzb(zzbde.zzgn)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i10);
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzB(boolean z10) {
        if (z10) {
            this.zzl.setBackgroundColor(0);
        } else {
            this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public final void zzC(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.zzb;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzh.addView(view, -1, -1);
        activity.setContentView(this.zzh);
        this.zzs = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzD(boolean r43) throws com.google.android.gms.ads.internal.overlay.zzg {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzD(boolean):void");
    }

    public final void zzE() {
        synchronized (this.zzo) {
            try {
                this.zzr = true;
                Runnable runnable = this.zzq;
                if (runnable != null) {
                    zzfrw zzfrwVar = com.google.android.gms.ads.internal.util.zzs.zza;
                    zzfrwVar.removeCallbacks(runnable);
                    zzfrwVar.post(this.zzq);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final void zzF() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (this.zzb.isFinishing() && !this.zzt) {
            this.zzt = true;
            zzcfg zzcfgVar = this.zzd;
            if (zzcfgVar != null) {
                zzcfgVar.zzZ(this.zzn - 1);
                synchronized (this.zzo) {
                    try {
                        if (!this.zzr && this.zzd.zzaC()) {
                            if (((Boolean) zzbd.zzc().zzb(zzbde.zzfn)).booleanValue() && !this.zzu && (adOverlayInfoParcel = this.zzc) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                                zzrVar.zzds();
                            }
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzd
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzm.this.zzc();
                                }
                            };
                            this.zzq = runnable;
                            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(runnable, ((Long) zzbd.zzc().zzb(zzbde.zzbk)).longValue());
                            return;
                        }
                    } finally {
                    }
                }
            }
            zzc();
        }
    }

    public final void zzG(String str) {
        Toolbar toolbar = this.zzw;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final boolean zzH() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzjp)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zzaH = this.zzd.zzaH();
        if (!zzaH) {
            this.zzd.zzd("onbackblocked", Collections.emptyMap());
        }
        return zzaH;
    }

    public final void zzb() {
        this.zzn = 3;
        Activity activity = this.zzb;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzk == 5) {
            activity.overridePendingTransition(0, 0);
            zzcfg zzcfgVar = this.zzd;
            if (zzcfgVar != null) {
                zzcfgVar.zzai(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzc() {
        zzcfg zzcfgVar;
        zzr zzrVar;
        if (!this.zzu) {
            this.zzu = true;
            zzcfg zzcfgVar2 = this.zzd;
            if (zzcfgVar2 != null) {
                this.zzl.removeView(zzcfgVar2.zzF());
                zzi zziVar = this.zze;
                if (zziVar != null) {
                    this.zzd.zzan(zziVar.zzd);
                    this.zzd.zzaq(false);
                    if (((Boolean) zzbd.zzc().zzb(zzbde.zznc)).booleanValue() && this.zzd.getParent() != null) {
                        ((ViewGroup) this.zzd.getParent()).removeView(this.zzd.zzF());
                    }
                    ViewGroup viewGroup = this.zze.zzc;
                    View zzF = this.zzd.zzF();
                    zzi zziVar2 = this.zze;
                    viewGroup.addView(zzF, zziVar2.zza, zziVar2.zzb);
                    this.zze = null;
                } else {
                    Activity activity = this.zzb;
                    if (activity.getApplicationContext() != null) {
                        this.zzd.zzan(activity.getApplicationContext());
                    }
                }
                this.zzd = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
            if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                zzrVar.zzdw(this.zzn);
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
            if (adOverlayInfoParcel2 != null && (zzcfgVar = adOverlayInfoParcel2.zzd) != null) {
                zzL(zzcfgVar.zzQ(), this.zzc.zzd.zzF());
            }
        }
    }

    public final void zzd() {
        this.zzl.zzb = true;
    }

    protected final void zze() {
        this.zzd.zzaa();
    }

    public final void zzf(zzecn zzecnVar) throws zzg, RemoteException {
        zzbtj zzbtjVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzbtjVar = adOverlayInfoParcel.zzv) != null) {
            zzbtjVar.zzg(ObjectWrapper.wrap(zzecnVar));
            return;
        }
        throw new zzg("noioou");
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzA(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzs = true;
            this.zzh.removeAllViews();
            this.zzh = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzi;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzi = null;
        }
        this.zzg = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzh(int i10, int i11, Intent intent) {
        zzdsj zze;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i10 == 236) {
            zzbcv zzbcvVar = zzbde.zzny;
            if (((Boolean) zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Callback from intent launch with requestCode: 236 and resultCode: " + i11);
                zzcfg zzcfgVar = this.zzd;
                if (zzcfgVar != null && zzcfgVar.zzN() != null && (zze = zzcfgVar.zzN().zze()) != null && (adOverlayInfoParcel = this.zzc) != null && ((Boolean) zzbd.zzc().zzb(zzbcvVar)).booleanValue()) {
                    zzdsi zza2 = zze.zza();
                    zza2.zzb(TextureRenderKeys.KEY_IS_ACTION, "hilca");
                    zza2.zzb("gqi", zzfwg.zzc(adOverlayInfoParcel.zzq));
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i11);
                    zza2.zzb("hilr", sb2.toString());
                    if (i11 == -1 && intent != null) {
                        String stringExtra = intent.getStringExtra("callerPackage");
                        String stringExtra2 = intent.getStringExtra("loadingStage");
                        if (stringExtra != null) {
                            zza2.zzb("hilcp", stringExtra);
                        }
                        if (stringExtra2 != null) {
                            zza2.zzb("hills", stringExtra2);
                        }
                    }
                    zza2.zzi();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzi() {
        this.zzn = 1;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzah
    public final void zzj() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzk(IObjectWrapper iObjectWrapper) {
        zzK((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008d A[Catch: zzg -> 0x0037, TryCatch #0 {zzg -> 0x0037, blocks: (B:12:0x001b, B:14:0x0029, B:16:0x002d, B:18:0x0033, B:21:0x003a, B:22:0x0043, B:24:0x004e, B:25:0x0050, B:27:0x0056, B:28:0x0062, B:30:0x0069, B:36:0x0076, B:38:0x007a, B:40:0x007f, B:43:0x008d, B:45:0x0091, B:47:0x0097, B:48:0x009a, B:50:0x00a0, B:51:0x00a3, B:53:0x00a9, B:55:0x00ad, B:56:0x00b0, B:58:0x00b6, B:59:0x00b9, B:66:0x00e4, B:68:0x00e8, B:69:0x00ef, B:70:0x00f0, B:72:0x00f4, B:74:0x0101, B:33:0x0070, B:35:0x0074, B:41:0x0089, B:76:0x0105, B:77:0x010c), top: B:80:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0101 A[Catch: zzg -> 0x0037, TryCatch #0 {zzg -> 0x0037, blocks: (B:12:0x001b, B:14:0x0029, B:16:0x002d, B:18:0x0033, B:21:0x003a, B:22:0x0043, B:24:0x004e, B:25:0x0050, B:27:0x0056, B:28:0x0062, B:30:0x0069, B:36:0x0076, B:38:0x007a, B:40:0x007f, B:43:0x008d, B:45:0x0091, B:47:0x0097, B:48:0x009a, B:50:0x00a0, B:51:0x00a3, B:53:0x00a9, B:55:0x00ad, B:56:0x00b0, B:58:0x00b6, B:59:0x00b9, B:66:0x00e4, B:68:0x00e8, B:69:0x00ef, B:70:0x00f0, B:72:0x00f4, B:74:0x0101, B:33:0x0070, B:35:0x0074, B:41:0x0089, B:76:0x0105, B:77:0x010c), top: B:80:0x001b }] */
    @Override // com.google.android.gms.internal.ads.zzbtq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzl(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzl(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzm() {
        zzcfg zzcfgVar = this.zzd;
        if (zzcfgVar != null) {
            try {
                this.zzl.removeView(zzcfgVar.zzF());
            } catch (NullPointerException unused) {
            }
        }
        zzF();
    }

    public final void zzn() {
        if (this.zzm) {
            this.zzm = false;
            zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzo() {
        zzr zzrVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdk();
        }
        if (!((Boolean) zzbd.zzc().zzb(zzbde.zzfp)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzp(int i10, String[] strArr, int[] iArr) {
        zzm zzmVar;
        if (i10 == 12345) {
            Activity activity = this.zzb;
            zzecm zze = zzecn.zze();
            zze.zza(activity);
            if (this.zzc.zzk == 5) {
                zzmVar = this;
            } else {
                zzmVar = null;
            }
            zze.zzb(zzmVar);
            try {
                this.zzc.zzv.zzf(strArr, iArr, ObjectWrapper.wrap(zze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzr() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzd();
        }
        zzK(this.zzb.getResources().getConfiguration());
        if (!((Boolean) zzbd.zzc().zzb(zzbde.zzfp)).booleanValue()) {
            zzcfg zzcfgVar = this.zzd;
            if (zzcfgVar != null && !zzcfgVar.zzaE()) {
                this.zzd.onResume();
                return;
            }
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzt() {
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzfp)).booleanValue()) {
            zzcfg zzcfgVar = this.zzd;
            if (zzcfgVar != null && !zzcfgVar.zzaE()) {
                this.zzd.onResume();
                return;
            }
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzu() {
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzfp)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzv() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdv();
        }
    }

    public final void zzw(boolean z10) {
        boolean z11;
        int i10;
        int i11;
        if (this.zzc.zzw) {
            return;
        }
        int intValue = ((Integer) zzbd.zzc().zzb(zzbde.zzfs)).intValue();
        int i12 = 0;
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzbn)).booleanValue() || z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        if (true != z11) {
            i10 = 0;
        } else {
            i10 = intValue;
        }
        zztVar.zza = i10;
        if (true != z11) {
            i12 = intValue;
        }
        zztVar.zzb = i12;
        zztVar.zzc = intValue;
        this.zzf = new zzu(this.zzb, zztVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        if (true != z11) {
            i11 = 9;
        } else {
            i11 = 11;
        }
        layoutParams.addRule(i11);
        zzy(z10, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
        zzJ(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzx() {
        this.zzs = true;
    }

    public final void zzy(boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z14 = true;
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzbl)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzbm)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z10 && z11 && z12 && !z13) {
            new zzbsu(this.zzd, "useCustomClose").zzh("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzu zzuVar = this.zzf;
        if (zzuVar != null) {
            if (!z13 && (!z11 || z12)) {
                z14 = false;
            }
            zzuVar.zzb(z14);
        }
    }

    public final void zzz() {
        this.zzl.removeView(this.zzf);
        zzw(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbtq
    public final void zzq() {
    }
}
