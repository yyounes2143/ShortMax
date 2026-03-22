package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbis extends zzbhz {
    private final OnAdManagerAdViewLoadedListener zza;

    public zzbis(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zza = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zze(com.google.android.gms.ads.internal.client.zzbx zzbxVar, IObjectWrapper iObjectWrapper) {
        AdListener adListener;
        if (zzbxVar != null && iObjectWrapper != null) {
            AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
            AppEventListener appEventListener = null;
            try {
                if (zzbxVar.zzj() instanceof com.google.android.gms.ads.internal.client.zzg) {
                    com.google.android.gms.ads.internal.client.zzg zzgVar = (com.google.android.gms.ads.internal.client.zzg) zzbxVar.zzj();
                    if (zzgVar != null) {
                        adListener = zzgVar.zzb();
                    } else {
                        adListener = null;
                    }
                    adManagerAdView.setAdListener(adListener);
                }
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            }
            try {
                if (zzbxVar.zzk() instanceof zzazr) {
                    zzazr zzazrVar = (zzazr) zzbxVar.zzk();
                    if (zzazrVar != null) {
                        appEventListener = zzazrVar.zzb();
                    }
                    adManagerAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e11) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e11);
            }
            com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzbir(this, adManagerAdView, zzbxVar));
        }
    }
}
