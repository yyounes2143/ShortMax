package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbcs extends zzbcv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcs(int i10, String str, Float f10, Float f11) {
        super(1, str, f10, f11, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ Object zza(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(zzm(), ((Float) zzl()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ Object zzb(Bundle bundle) {
        if (bundle.containsKey("com.google.android.gms.ads.flag.".concat(zzm()))) {
            return Float.valueOf(bundle.getFloat("com.google.android.gms.ads.flag.".concat(zzm())));
        }
        return (Float) zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ Object zzc(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(zzm(), ((Float) zzl()).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final /* bridge */ /* synthetic */ void zzd(SharedPreferences.Editor editor, Object obj) {
        editor.putFloat(zzm(), ((Float) obj).floatValue());
    }
}
