package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbrx implements MediationAdLoadCallback {
    final /* synthetic */ zzbrj zza;
    final /* synthetic */ zzbpw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbrx(zzbsc zzbscVar, zzbrj zzbrjVar, zzbpw zzbpwVar) {
        this.zza = zzbrjVar;
        this.zzb = zzbpwVar;
        Objects.requireNonNull(zzbscVar);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        try {
            this.zza.zzf(adError.zza());
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    @Nullable
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        NativeAdMapper nativeAdMapper = (NativeAdMapper) obj;
        if (nativeAdMapper == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.zza.zze("Adapter returned null.");
                return null;
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
                return null;
            }
        }
        try {
            this.zza.zzg(new zzbqv(nativeAdMapper));
        } catch (RemoteException e11) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e11);
        }
        return new zzbsd(this.zzb);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
