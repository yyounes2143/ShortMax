package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdwf extends com.google.android.gms.ads.internal.client.zzdv {
    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final WeakReference zzc;
    private final zzdvt zzd;
    private final zzgdy zze;
    private zzdvi zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdwf(Context context, WeakReference weakReference, zzdvt zzdvtVar, zzdwh zzdwhVar, zzgdy zzgdyVar) {
        this.zzb = context;
        this.zzc = weakReference;
        this.zzd = zzdvtVar;
        this.zze = zzgdyVar;
    }

    private final Context zzj() {
        Context context = (Context) this.zzc.get();
        if (context == null) {
            return this.zzb;
        }
        return context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzk(Object obj) {
        ResponseInfo responseInfo;
        com.google.android.gms.ads.internal.client.zzea zzc;
        if (obj instanceof LoadAdError) {
            responseInfo = ((LoadAdError) obj).getResponseInfo();
        } else if (obj instanceof AppOpenAd) {
            responseInfo = ((AppOpenAd) obj).getResponseInfo();
        } else if (obj instanceof InterstitialAd) {
            responseInfo = ((InterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedAd) {
            responseInfo = ((RewardedAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedInterstitialAd) {
            responseInfo = ((RewardedInterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof AdView) {
            responseInfo = ((AdView) obj).getResponseInfo();
        } else if (obj instanceof NativeAd) {
            responseInfo = ((NativeAd) obj).getResponseInfo();
        } else {
            return "";
        }
        if (responseInfo != null && (zzc = responseInfo.zzc()) != null) {
            try {
                return zzc.zzh();
            } catch (RemoteException unused) {
                return "";
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzl(String str) {
        try {
            zzgdn.zzr(this.zzf.zzb(str), new zzdwd(this), this.zze);
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "OutOfContextTester.setAdAsOutOfContext");
            this.zzd.zzk();
        }
    }

    private final synchronized void zzm(String str) {
        try {
            zzgdn.zzr(this.zzf.zzb(str), new zzdwe(this), this.zze);
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "OutOfContextTester.setAdAsShown");
            this.zzd.zzk();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdw
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        ViewGroup viewGroup = (ViewGroup) ObjectWrapper.unwrap(iObjectWrapper2);
        if (context != null && viewGroup != null) {
            Map map = this.zza;
            Object obj = map.get(str);
            if (obj != null) {
                map.remove(str);
            }
            if (obj instanceof AdView) {
                zzdwh.zza(context, viewGroup, (AdView) obj);
            } else if (obj instanceof NativeAd) {
                zzdwh.zzb(context, viewGroup, (NativeAd) obj);
            }
        }
    }

    public final void zzf(zzdvi zzdviVar) {
        this.zzf = zzdviVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void zzg(String str, Object obj) {
        this.zza.put(str, obj);
        zzl(zzk(obj));
    }

    public final synchronized void zzh(zzdwg zzdwgVar) {
        char c10;
        BaseAdView adView;
        try {
            String zzf = zzdwgVar.zzf();
            switch (zzf.hashCode()) {
                case -1999289321:
                    if (zzf.equals("NATIVE")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1372958932:
                    if (zzf.equals("INTERSTITIAL")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -428325382:
                    if (zzf.equals("APP_OPEN_AD")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 543046670:
                    if (zzf.equals("REWARDED")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1854800829:
                    if (zzf.equals("REWARDED_INTERSTITIAL")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1951953708:
                    if (zzf.equals("BANNER")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            if (c10 != 0) {
                if (c10 != 1) {
                    if (c10 != 2) {
                        if (c10 != 3) {
                            if (c10 != 4) {
                                if (c10 != 5) {
                                    return;
                                }
                                String zze = zzdwgVar.zze();
                                RewardedInterstitialAd.load(zzj(), zze, zzdwgVar.zza(), new zzdwb(this, zze));
                                return;
                            }
                            String zze2 = zzdwgVar.zze();
                            RewardedAd.load(zzj(), zze2, zzdwgVar.zza(), new zzdwa(this, zze2));
                            return;
                        }
                        final String zze3 = zzdwgVar.zze();
                        AdLoader.Builder builder = new AdLoader.Builder(zzj(), zze3);
                        builder.forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.google.android.gms.internal.ads.zzdvw
                            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                            public final void onNativeAdLoaded(NativeAd nativeAd) {
                                zzdwf.this.zzg(zze3, nativeAd);
                            }
                        });
                        builder.withAdListener(new zzdwc(this));
                        NativeAdOptions zzd = zzdwgVar.zzd();
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjP)).booleanValue() && zzd != null) {
                            builder.withNativeAdOptions(zzd);
                        }
                        builder.build().loadAd(zzdwgVar.zza());
                        return;
                    }
                    String zze4 = zzdwgVar.zze();
                    InterstitialAd.load(zzj(), zze4, zzdwgVar.zza(), new zzdvz(this, zze4));
                    return;
                }
                String zze5 = zzdwgVar.zze();
                zzbcv zzbcvVar = zzbde.zzjP;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue() && zzdwgVar.zzn()) {
                    adView = new AdManagerAdView(zzj());
                } else {
                    adView = new AdView(zzj());
                }
                adView.setAdSize(zzdwgVar.zzb());
                adView.setAdUnitId(zze5);
                adView.setAdListener(new zzdvy(this, zze5, adView));
                VideoOptions zzc = zzdwgVar.zzc();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue() && zzdwgVar.zzn() && zzc != null) {
                    ((AdManagerAdView) adView).setVideoOptions(zzc);
                }
                adView.loadAd(zzdwgVar.zza());
                return;
            }
            String zze6 = zzdwgVar.zze();
            AppOpenAd.load(zzj(), zze6, zzdwgVar.zza(), new zzdvx(this, zze6));
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0046 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:6:0x000b, B:8:0x0013, B:10:0x0025, B:12:0x0029, B:14:0x002d, B:16:0x0031, B:22:0x003b, B:24:0x0046, B:27:0x004d, B:29:0x0051, B:32:0x0058, B:34:0x005c, B:37:0x0068, B:39:0x006c, B:42:0x0078, B:44:0x0088, B:46:0x008c, B:48:0x0090, B:21:0x0038), top: B:55:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:6:0x000b, B:8:0x0013, B:10:0x0025, B:12:0x0029, B:14:0x002d, B:16:0x0031, B:22:0x003b, B:24:0x0046, B:27:0x004d, B:29:0x0051, B:32:0x0058, B:34:0x005c, B:37:0x0068, B:39:0x006c, B:42:0x0078, B:44:0x0088, B:46:0x008c, B:48:0x0090, B:21:0x0038), top: B:55:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzi(java.lang.String r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            com.google.android.gms.internal.ads.zzdvt r0 = r5.zzd     // Catch: java.lang.Throwable -> L36
            android.app.Activity r0 = r0.zzg()     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto Lb
            goto Lab
        Lb:
            java.util.Map r1 = r5.zza     // Catch: java.lang.Throwable -> L36
            java.lang.Object r2 = r1.get(r6)     // Catch: java.lang.Throwable -> L36
            if (r2 == 0) goto Lab
            com.google.android.gms.internal.ads.zzbcv r3 = com.google.android.gms.internal.ads.zzbde.zzjO     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = r4.zzb(r3)     // Catch: java.lang.Throwable -> L36
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Throwable -> L36
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r4 == 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.appopen.AppOpenAd     // Catch: java.lang.Throwable -> L36
            if (r4 != 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.interstitial.InterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r4 != 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.rewarded.RewardedAd     // Catch: java.lang.Throwable -> L36
            if (r4 != 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r4 == 0) goto L3b
            goto L38
        L36:
            r6 = move-exception
            goto Lad
        L38:
            r1.remove(r6)     // Catch: java.lang.Throwable -> L36
        L3b:
            java.lang.String r1 = zzk(r2)     // Catch: java.lang.Throwable -> L36
            r5.zzm(r1)     // Catch: java.lang.Throwable -> L36
            boolean r1 = r2 instanceof com.google.android.gms.ads.appopen.AppOpenAd     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L4d
            com.google.android.gms.ads.appopen.AppOpenAd r2 = (com.google.android.gms.ads.appopen.AppOpenAd) r2     // Catch: java.lang.Throwable -> L36
            r2.show(r0)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L4d:
            boolean r1 = r2 instanceof com.google.android.gms.ads.interstitial.InterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L58
            com.google.android.gms.ads.interstitial.InterstitialAd r2 = (com.google.android.gms.ads.interstitial.InterstitialAd) r2     // Catch: java.lang.Throwable -> L36
            r2.show(r0)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L58:
            boolean r1 = r2 instanceof com.google.android.gms.ads.rewarded.RewardedAd     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L68
            com.google.android.gms.ads.rewarded.RewardedAd r2 = (com.google.android.gms.ads.rewarded.RewardedAd) r2     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.internal.ads.zzdvu r6 = new com.google.android.gms.internal.ads.zzdvu     // Catch: java.lang.Throwable -> L36
            r6.<init>()     // Catch: java.lang.Throwable -> L36
            r2.show(r0, r6)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L68:
            boolean r1 = r2 instanceof com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L78
            com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd r2 = (com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd) r2     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.internal.ads.zzdvv r6 = new com.google.android.gms.internal.ads.zzdvv     // Catch: java.lang.Throwable -> L36
            r6.<init>()     // Catch: java.lang.Throwable -> L36
            r2.show(r0, r6)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L78:
            com.google.android.gms.internal.ads.zzbdc r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L36
            java.lang.Object r0 = r0.zzb(r3)     // Catch: java.lang.Throwable -> L36
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L36
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r0 == 0) goto Lab
            boolean r0 = r2 instanceof com.google.android.gms.ads.AdView     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L90
            boolean r0 = r2 instanceof com.google.android.gms.ads.nativead.NativeAd     // Catch: java.lang.Throwable -> L36
            if (r0 == 0) goto Lab
        L90:
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L36
            r0.<init>()     // Catch: java.lang.Throwable -> L36
            android.content.Context r1 = r5.zzj()     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = "com.google.android.gms.ads.OutOfContextTestingActivity"
            r0.setClassName(r1, r2)     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = "adUnit"
            r0.putExtra(r2, r6)     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.ads.internal.zzv.zzr()     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.ads.internal.util.zzs.zzU(r1, r0)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        Lab:
            monitor-exit(r5)
            return
        Lad:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L36
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwf.zzi(java.lang.String):void");
    }
}
