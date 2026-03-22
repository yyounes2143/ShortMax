package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbcr extends zzbcv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcr(int i10, String str, Long l10, Long l11) {
        super(1, str, l10, l11, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(zzm(), ((Long) zzl()).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzm()))) {
            return Long.valueOf(bundle.getLong("com.google.android.gms.ads.flag.".concat(zzm())));
        }
        return (Long) zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(zzm(), ((Long) zzl()).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        editor.putLong(zzm(), ((Long) obj).longValue());
    }
}
