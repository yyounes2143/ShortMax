package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbiu implements zzbkf {
    private final zzbiv zza;

    public zzbiu(zzbiv zzbivVar) {
        this.zza = zzbivVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final void zza(Object obj, Map map) {
        if (this.zza == null) {
            return;
        }
        String str = (String) map.get("name");
        if (str == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad metadata with no name parameter.");
            str = "";
        }
        Bundle bundle = null;
        if (map.containsKey("info")) {
            try {
                bundle = com.google.android.gms.ads.internal.util.zzbs.zza(new JSONObject((String) map.get("info")));
            } catch (JSONException e10) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to convert ad metadata to JSON.", e10);
            }
        }
        if (bundle == null) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to convert ad metadata to Bundle.");
            return;
        }
        this.zza.zza(str, bundle);
    }
}
