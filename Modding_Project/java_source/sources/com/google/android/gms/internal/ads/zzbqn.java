package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbqn implements MediationAdLoadCallback {
    final /* synthetic */ zzbpw zza;
    final /* synthetic */ zzbqr zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbqn(zzbqr zzbqrVar, zzbpw zzbpwVar) {
        this.zza = zzbpwVar;
        Objects.requireNonNull(zzbqrVar);
        this.zzb = zzbqrVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Object obj;
        try {
            obj = this.zzb.zza;
            String canonicalName = obj.getClass().getCanonicalName();
            int code = adError.getCode();
            String message = adError.getMessage();
            String domain = adError.getDomain();
            com.google.android.gms.ads.internal.util.client.zzo.zze(canonicalName + "failed to load mediation ad: ErrorCode = " + code + ". ErrorMessage = " + message + ". ErrorDomain = " + domain);
            zzbpw zzbpwVar = this.zza;
            zzbpwVar.zzh(adError.zza());
            zzbpwVar.zzi(adError.getCode(), adError.getMessage());
            zzbpwVar.zzg(adError.getCode());
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final /* bridge */ /* synthetic */ Object onSuccess(Object obj) {
        try {
            this.zzb.zzg = (UnifiedNativeAdMapper) obj;
            this.zza.zzo();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
        return new zzbqh(this.zza);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        onFailure(new AdError(0, str, AdError.UNDEFINED_DOMAIN));
    }
}
