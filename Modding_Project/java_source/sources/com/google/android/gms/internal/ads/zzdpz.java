package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdpz {
    private final zzfds zza;
    private final zzdpw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdpz(zzfds zzfdsVar, zzdpw zzdpwVar) {
        this.zza = zzfdsVar;
        this.zzb = zzdpwVar;
    }

    @VisibleForTesting
    final zzbpq zza() throws RemoteException {
        zzbpq zzb = this.zza.zzb();
        if (zzb != null) {
            return zzb;
        }
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbrp zzb(String str) throws RemoteException {
        zzbrp zzc = zza().zzc(str);
        this.zzb.zzd(str, zzc);
        return zzc;
    }

    public final zzfdu zzc(String str, JSONObject jSONObject) throws zzfdd {
        zzbpt zzb;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzb = new zzbqr(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzb = new zzbqr(new zzbsi());
            } else {
                zzbpq zza = zza();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        if (zza.zze(string)) {
                            zzb = zza.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                        } else if (zza.zzd(string)) {
                            zzb = zza.zzb(string);
                        } else {
                            zzb = zza.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                        }
                    } catch (JSONException e10) {
                        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Invalid custom event.", e10);
                    }
                }
                zzb = zza.zzb(str);
            }
            zzfdu zzfduVar = new zzfdu(zzb);
            this.zzb.zzc(str, zzfduVar);
            return zzfduVar;
        } catch (Throwable th2) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjM)).booleanValue()) {
                this.zzb.zzc(str, null);
            }
            throw new zzfdd(th2);
        }
    }

    public final boolean zzd() {
        if (this.zza.zzb() != null) {
            return true;
        }
        return false;
    }
}
