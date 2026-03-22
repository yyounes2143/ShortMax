package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzevd implements zzeub {
    @Nullable
    private final AdvertisingIdClient.Info zza;
    @Nullable
    private final String zzb;
    private final zzfsa zzc;

    public zzevd(@Nullable AdvertisingIdClient.Info info, @Nullable String str, zzfsa zzfsaVar) {
        this.zza = info;
        this.zzb = str;
        this.zzc = zzfsaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            JSONObject zzg = com.google.android.gms.ads.internal.util.zzbs.zzg((JSONObject) obj, "pii");
            AdvertisingIdClient.Info info = this.zza;
            if (info != null && !TextUtils.isEmpty(info.getId())) {
                zzg.put("rdid", info.getId());
                zzg.put("is_lat", info.isLimitAdTrackingEnabled());
                zzg.put("idtype", "adid");
                zzfsa zzfsaVar = this.zzc;
                if (zzfsaVar.zzc()) {
                    zzg.put("paidv1_id_android_3p", zzfsaVar.zzb());
                    zzg.put("paidv1_creation_time_android_3p", zzfsaVar.zza());
                    return;
                }
                return;
            }
            String str = this.zzb;
            if (str != null) {
                zzg.put("pdid", str);
                zzg.put("pdidtype", "ssaid");
            }
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed putting Ad ID.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
