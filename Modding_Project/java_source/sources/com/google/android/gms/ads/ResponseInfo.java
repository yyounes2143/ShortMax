package com.google.android.gms.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class ResponseInfo {
    @Nullable
    private final zzea zza;
    private final List zzb = new ArrayList();
    @Nullable
    private AdapterResponseInfo zzc;

    private ResponseInfo(@Nullable zzea zzeaVar) {
        this.zza = zzeaVar;
        if (zzeaVar != null) {
            try {
                List<zzv> zzj = zzeaVar.zzj();
                if (zzj != null) {
                    for (zzv zzvVar : zzj) {
                        AdapterResponseInfo zza = AdapterResponseInfo.zza(zzvVar);
                        if (zza != null) {
                            this.zzb.add(zza);
                        }
                    }
                }
            } catch (RemoteException e10) {
                zzo.zzh("Could not forward getAdapterResponseInfo to ResponseInfo.", e10);
            }
        }
        zzea zzeaVar2 = this.zza;
        if (zzeaVar2 != null) {
            try {
                zzv zzf = zzeaVar2.zzf();
                if (zzf != null) {
                    this.zzc = AdapterResponseInfo.zza(zzf);
                }
            } catch (RemoteException e11) {
                zzo.zzh("Could not forward getLoadedAdapterResponse to ResponseInfo.", e11);
            }
        }
    }

    @Nullable
    public static ResponseInfo zza(@Nullable zzea zzeaVar) {
        if (zzeaVar != null) {
            return new ResponseInfo(zzeaVar);
        }
        return null;
    }

    @NonNull
    public static ResponseInfo zzb(@Nullable zzea zzeaVar) {
        return new ResponseInfo(zzeaVar);
    }

    @NonNull
    public List<AdapterResponseInfo> getAdapterResponses() {
        return this.zzb;
    }

    @Nullable
    public AdapterResponseInfo getLoadedAdapterResponseInfo() {
        return this.zzc;
    }

    @Nullable
    public String getMediationAdapterClassName() {
        try {
            zzea zzeaVar = this.zza;
            if (zzeaVar != null) {
                return zzeaVar.zzg();
            }
            return null;
        } catch (RemoteException e10) {
            zzo.zzh("Could not forward getMediationAdapterClassName to ResponseInfo.", e10);
            return null;
        }
    }

    @NonNull
    public Bundle getResponseExtras() {
        try {
            zzea zzeaVar = this.zza;
            if (zzeaVar != null) {
                return zzeaVar.zze();
            }
        } catch (RemoteException e10) {
            zzo.zzh("Could not forward getResponseExtras to ResponseInfo.", e10);
        }
        return new Bundle();
    }

    @Nullable
    public String getResponseId() {
        try {
            zzea zzeaVar = this.zza;
            if (zzeaVar != null) {
                return zzeaVar.zzi();
            }
            return null;
        } catch (RemoteException e10) {
            zzo.zzh("Could not forward getResponseId to ResponseInfo.", e10);
            return null;
        }
    }

    @NonNull
    public String toString() {
        try {
            return zzd().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @Nullable
    public final zzea zzc() {
        return this.zza;
    }

    @NonNull
    public final JSONObject zzd() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        for (AdapterResponseInfo adapterResponseInfo : this.zzb) {
            jSONArray.put(adapterResponseInfo.zzb());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        AdapterResponseInfo adapterResponseInfo2 = this.zzc;
        if (adapterResponseInfo2 != null) {
            jSONObject.put("Loaded Adapter Response", adapterResponseInfo2.zzb());
        }
        Bundle responseExtras = getResponseExtras();
        if (responseExtras != null) {
            jSONObject.put("Response Extras", zzbb.zzb().zzn(responseExtras));
        }
        return jSONObject;
    }
}
