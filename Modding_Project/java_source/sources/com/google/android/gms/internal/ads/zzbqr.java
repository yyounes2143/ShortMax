package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.ads.internal.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbqr extends zzbps {
    private final Object zza;
    private zzbqt zzb;
    private zzbwn zzc;
    private IObjectWrapper zzd;
    private View zze;
    private MediationInterstitialAd zzf;
    private UnifiedNativeAdMapper zzg;
    private NativeAdMapper zzh;
    private MediationRewardedAd zzi;
    private MediationInterscrollerAd zzj;
    private MediationAppOpenAd zzk;
    private final String zzl = "";

    public zzbqr(@NonNull Adapter adapter) {
        this.zza = adapter;
    }

    private final Bundle zzV(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        Bundle bundle2 = zzmVar.zzm;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.zza.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    private final Bundle zzW(String str, com.google.android.gms.ads.internal.client.zzm zzmVar, String str2) throws RemoteException {
        com.google.android.gms.ads.internal.util.client.zzo.zze("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.zza instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzmVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzmVar.zzg);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
            throw new RemoteException();
        }
    }

    private static final boolean zzX(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        if (!zzmVar.zzf) {
            com.google.android.gms.ads.internal.client.zzbb.zzb();
            if (!com.google.android.gms.ads.internal.util.client.zzf.zzw()) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Nullable
    private static final String zzY(String str, com.google.android.gms.ads.internal.client.zzm zzmVar) {
        String str2 = zzmVar.zzu;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzA(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpw zzbpwVar) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) obj).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, null), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), ""), new zzbqp(this, zzbpwVar));
                return;
            } catch (Exception e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                zzbpn.zza(iObjectWrapper, e10, "adapter.loadRewardedAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzB(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzA(this.zzd, zzmVar, str, new zzbqu((Adapter) obj, this.zzc));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzC(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpw zzbpwVar) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) obj).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, null), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), ""), new zzbqp(this, zzbpwVar));
                return;
            } catch (Exception e10) {
                zzbpn.zza(iObjectWrapper, e10, "adapter.loadRewardedInterstitialAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzD(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zza;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzE() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onPause();
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzF() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onResume();
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzG(boolean z10) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z10);
                return;
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zze(canonicalName + " #009 Class mismatch: " + canonicalName2);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Show app open ad from adapter.");
            MediationAppOpenAd mediationAppOpenAd = this.zzk;
            if (mediationAppOpenAd != null) {
                try {
                    mediationAppOpenAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                    return;
                } catch (RuntimeException e10) {
                    zzbpn.zza(iObjectWrapper, e10, "adapter.appOpen.showAd");
                    throw e10;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Can not show null mediation app open ad.");
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzI() throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof MediationInterstitialAdapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) obj).showInterstitial();
                return;
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzJ(IObjectWrapper iObjectWrapper) throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " or " + canonicalName2 + " #009 Class mismatch: " + canonicalName3);
            throw new RemoteException();
        } else if (obj instanceof MediationInterstitialAdapter) {
            zzI();
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Show interstitial ad from adapter.");
            MediationInterstitialAd mediationInterstitialAd = this.zzf;
            if (mediationInterstitialAd != null) {
                try {
                    mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                    return;
                } catch (RuntimeException e10) {
                    zzbpn.zza(iObjectWrapper, e10, "adapter.interstitial.showAd");
                    throw e10;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Can not show null mediation interstitial ad.");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzK(IObjectWrapper iObjectWrapper) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzi;
            if (mediationRewardedAd != null) {
                try {
                    mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                    return;
                } catch (RuntimeException e10) {
                    zzbpn.zza(iObjectWrapper, e10, "adapter.rewarded.showAd");
                    throw e10;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Can not show null mediation rewarded ad.");
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzL() throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzi;
            if (mediationRewardedAd != null) {
                try {
                    mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzd));
                    return;
                } catch (RuntimeException e10) {
                    zzbpn.zza(this.zzd, e10, "adapter.showVideo");
                    throw e10;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Can not show null mediated rewarded ad.");
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final boolean zzM() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final boolean zzN() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !Objects.equals(obj.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = obj.getClass().getCanonicalName();
            com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
            throw new RemoteException();
        } else if (this.zzc != null) {
            return true;
        } else {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbqb zzO() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbqc zzP() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final Bundle zze() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final Bundle zzf() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final Bundle zzg() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzed zzh() {
        Object obj = this.zza;
        if (obj instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbhj zzi() {
        zzbhk zzc;
        zzbqt zzbqtVar = this.zzb;
        if (zzbqtVar != null && (zzc = zzbqtVar.zzc()) != null) {
            return zzc.zza();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbpz zzj() {
        MediationInterscrollerAd mediationInterscrollerAd = this.zzj;
        if (mediationInterscrollerAd != null) {
            return new zzbqs(mediationInterscrollerAd);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbqf zzk() {
        UnifiedNativeAdMapper zza;
        Object obj = this.zza;
        if (obj instanceof MediationNativeAdapter) {
            zzbqt zzbqtVar = this.zzb;
            if (zzbqtVar != null && (zza = zzbqtVar.zza()) != null) {
                return new zzbqx(zza);
            }
            return null;
        } else if (obj instanceof Adapter) {
            NativeAdMapper nativeAdMapper = this.zzh;
            if (nativeAdMapper != null) {
                return new zzbqv(nativeAdMapper);
            }
            UnifiedNativeAdMapper unifiedNativeAdMapper = this.zzg;
            if (unifiedNativeAdMapper != null) {
                return new zzbqx(unifiedNativeAdMapper);
            }
            return null;
        } else {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbse zzl() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzbse.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    @Nullable
    public final zzbse zzm() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzbse.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final IObjectWrapper zzn() throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return ObjectWrapper.wrap(this.zze);
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " or " + canonicalName2 + " #009 Class mismatch: " + canonicalName3);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzo() throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onDestroy();
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzp(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbwn zzbwnVar, String str2) throws RemoteException {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !Objects.equals(obj.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = obj.getClass().getCanonicalName();
            com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
            throw new RemoteException();
        }
        this.zzd = iObjectWrapper;
        this.zzc = zzbwnVar;
        zzbwnVar.zzl(ObjectWrapper.wrap(obj));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzq(IObjectWrapper iObjectWrapper, zzbmh zzbmhVar, List list) throws RemoteException {
        char c10;
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzbqk zzbqkVar = new zzbqk(this, zzbmhVar);
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbmn zzbmnVar = (zzbmn) it.next();
                String str = zzbmnVar.zza;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals("banner")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -239580146:
                        if (str.equals(Constants.PLACEMENT_TYPE_REWARDED)) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 604727084:
                        if (str.equals(Constants.PLACEMENT_TYPE_INTERSTITIAL)) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1167692200:
                        if (str.equals("app_open")) {
                            c10 = 5;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1778294298:
                        if (str.equals("app_open_ad")) {
                            c10 = 6;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1911491517:
                        if (str.equals("rewarded_interstitial")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                AdFormat adFormat = null;
                switch (c10) {
                    case 0:
                        adFormat = AdFormat.BANNER;
                        break;
                    case 1:
                        adFormat = AdFormat.INTERSTITIAL;
                        break;
                    case 2:
                        adFormat = AdFormat.REWARDED;
                        break;
                    case 3:
                        adFormat = AdFormat.REWARDED_INTERSTITIAL;
                        break;
                    case 4:
                        adFormat = AdFormat.NATIVE;
                        break;
                    case 5:
                        adFormat = AdFormat.APP_OPEN_AD;
                        break;
                    case 6:
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmm)).booleanValue()) {
                            adFormat = AdFormat.APP_OPEN_AD;
                            break;
                        }
                        break;
                }
                if (adFormat != null) {
                    arrayList.add(new MediationConfiguration(adFormat, zzbmnVar.zzb));
                }
            }
            ((Adapter) obj).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbqkVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzr(IObjectWrapper iObjectWrapper, zzbwn zzbwnVar, List list) throws RemoteException {
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzs(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) throws RemoteException {
        zzB(zzmVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzt(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpw zzbpwVar) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting app open ad from adapter.");
            try {
                ((Adapter) obj).loadAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, null), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), ""), new zzbqq(this, zzbpwVar));
                return;
            } catch (Exception e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                zzbpn.zza(iObjectWrapper, e10, "adapter.loadAppOpenAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpw zzbpwVar) throws RemoteException {
        zzv(iObjectWrapper, zzrVar, zzmVar, str, null, zzbpwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpw zzbpwVar) throws RemoteException {
        AdSize zzc;
        String str3;
        MediationBannerAdapter mediationBannerAdapter;
        HashSet hashSet;
        zzbqi zzbqiVar;
        Date date;
        Bundle bundle;
        Object obj = this.zza;
        boolean z10 = obj instanceof MediationBannerAdapter;
        if (!z10 && !(obj instanceof Adapter)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj(MediationBannerAdapter.class.getCanonicalName() + " or " + Adapter.class.getCanonicalName() + " #009 Class mismatch: " + obj.getClass().getCanonicalName());
            throw new RemoteException();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting banner ad from adapter.");
        if (zzrVar.zzn) {
            zzc = com.google.android.gms.ads.zzc.zzd(zzrVar.zze, zzrVar.zzb);
        } else {
            zzc = com.google.android.gms.ads.zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza);
        }
        AdSize adSize = zzc;
        if (z10) {
            try {
                mediationBannerAdapter = (MediationBannerAdapter) obj;
                List list = zzmVar.zze;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j10 = zzmVar.zzb;
                if (j10 == -1) {
                    date = null;
                } else {
                    date = new Date(j10);
                }
                zzbqiVar = new zzbqi(date, zzmVar.zzd, hashSet, zzmVar.zzk, zzX(zzmVar), zzmVar.zzg, zzmVar.zzr, zzmVar.zzt, zzY(str, zzmVar));
                Bundle bundle2 = zzmVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationBannerAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                str3 = "";
            } catch (Throwable th2) {
                th = th2;
                str3 = "";
            }
            try {
                mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzbqt(zzbpwVar), zzW(str, zzmVar, str2), adSize, zzbqiVar, bundle);
                return;
            } catch (Throwable th3) {
                th = th3;
                com.google.android.gms.ads.internal.util.client.zzo.zzh(str3, th);
                zzbpn.zza(iObjectWrapper, th, "adapter.requestBannerAd");
                throw new RemoteException();
            }
        }
        Object obj2 = this.zza;
        if (obj2 instanceof Adapter) {
            try {
                ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, str2), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), adSize, this.zzl), new zzbql(this, zzbpwVar));
            } catch (Throwable th4) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th4);
                zzbpn.zza(iObjectWrapper, th4, "adapter.loadBannerAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpw zzbpwVar) throws RemoteException {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) obj;
                zzbqj zzbqjVar = new zzbqj(this, zzbpwVar, adapter);
                Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
                zzW(str, zzmVar, str2);
                zzV(zzmVar);
                zzX(zzmVar);
                Location location = zzmVar.zzk;
                zzY(str, zzmVar);
                com.google.android.gms.ads.zzc.zze(zzrVar.zze, zzrVar.zzb);
                zzbqjVar.onFailure(new AdError(7, adapter.getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN));
                return;
            } catch (Exception e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                zzbpn.zza(iObjectWrapper, e10, "adapter.loadInterscrollerAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " #009 Class mismatch: " + canonicalName2);
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzx(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbpw zzbpwVar) throws RemoteException {
        zzy(iObjectWrapper, zzmVar, str, null, zzbpwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzy(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpw zzbpwVar) throws RemoteException {
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.zza;
        boolean z10 = obj instanceof MediationInterstitialAdapter;
        if (!z10 && !(obj instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " or " + canonicalName2 + " #009 Class mismatch: " + canonicalName3);
            throw new RemoteException();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting interstitial ad from adapter.");
        if (z10) {
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj;
                List list = zzmVar.zze;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j10 = zzmVar.zzb;
                if (j10 == -1) {
                    date = null;
                } else {
                    date = new Date(j10);
                }
                zzbqi zzbqiVar = new zzbqi(date, zzmVar.zzd, hashSet, zzmVar.zzk, zzX(zzmVar), zzmVar.zzg, zzmVar.zzr, zzmVar.zzt, zzY(str, zzmVar));
                Bundle bundle2 = zzmVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationInterstitialAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzbqt(zzbpwVar), zzW(str, zzmVar, str2), zzbqiVar, bundle);
                return;
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
                zzbpn.zza(iObjectWrapper, th2, "adapter.requestInterstitialAd");
                throw new RemoteException();
            }
        }
        Object obj2 = this.zza;
        if (obj2 instanceof Adapter) {
            try {
                ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, str2), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), this.zzl), new zzbqm(this, zzbpwVar));
            } catch (Throwable th3) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th3);
                zzbpn.zza(iObjectWrapper, th3, "adapter.loadInterstitialAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzz(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbpw zzbpwVar, zzbge zzbgeVar, List list) throws RemoteException {
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.zza;
        boolean z10 = obj instanceof MediationNativeAdapter;
        if (!z10 && !(obj instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            com.google.android.gms.ads.internal.util.client.zzo.zzj(canonicalName + " or " + canonicalName2 + " #009 Class mismatch: " + canonicalName3);
            throw new RemoteException();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zze("Requesting native ad from adapter.");
        if (z10) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                List list2 = zzmVar.zze;
                if (list2 != null) {
                    hashSet = new HashSet(list2);
                } else {
                    hashSet = null;
                }
                long j10 = zzmVar.zzb;
                if (j10 == -1) {
                    date = null;
                } else {
                    date = new Date(j10);
                }
                zzbqw zzbqwVar = new zzbqw(date, zzmVar.zzd, hashSet, zzmVar.zzk, zzX(zzmVar), zzmVar.zzg, zzbgeVar, list, zzmVar.zzr, zzmVar.zzt, zzY(str, zzmVar));
                Bundle bundle2 = zzmVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationNativeAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                this.zzb = new zzbqt(zzbpwVar);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzb, zzW(str, zzmVar, str2), zzbqwVar, bundle);
                return;
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th2);
                zzbpn.zza(iObjectWrapper, th2, "adapter.requestNativeAd");
                throw new RemoteException();
            }
        }
        Object obj2 = this.zza;
        if (obj2 instanceof Adapter) {
            try {
                ((Adapter) obj2).loadNativeAdMapper(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, str2), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), this.zzl, zzbgeVar), new zzbqo(this, zzbpwVar));
            } catch (Throwable th3) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", th3);
                zzbpn.zza(iObjectWrapper, th3, "adapter.loadNativeAdMapper");
                String message = th3.getMessage();
                if (!TextUtils.isEmpty(message) && message.equals("Method is not found")) {
                    try {
                        ((Adapter) this.zza).loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zzW(str, zzmVar, str2), zzV(zzmVar), zzX(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzY(str, zzmVar), this.zzl, zzbgeVar), new zzbqn(this, zzbpwVar));
                        return;
                    } catch (Throwable th4) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("", th4);
                        zzbpn.zza(iObjectWrapper, th4, "adapter.loadNativeAd");
                        throw new RemoteException();
                    }
                }
                throw new RemoteException();
            }
        }
    }

    public zzbqr(@NonNull MediationAdapter mediationAdapter) {
        this.zza = mediationAdapter;
    }
}
