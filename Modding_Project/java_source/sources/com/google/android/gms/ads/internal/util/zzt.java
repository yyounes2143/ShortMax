package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzcfg;
import com.google.android.gms.internal.ads.zzcfo;
import com.google.android.gms.internal.ads.zzcgp;
import com.google.android.gms.internal.ads.zzecl;
import java.io.InputStream;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@TargetApi(21)
/* loaded from: classes4.dex */
public class zzt extends zzaa {
    public zzt() {
        super(null);
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    @Nullable
    public final CookieManager zza(Context context) {
        com.google.android.gms.ads.internal.zzv.zzr();
        if (zzs.zzG()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th2) {
            int i10 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to obtain CookieManager.", th2);
            com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final WebResourceResponse zzb(String str, String str2, int i10, String str3, Map map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i10, str3, map, inputStream);
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final zzcfo zzc(zzcfg zzcfgVar, zzbcc zzbccVar, boolean z10, @Nullable zzecl zzeclVar) {
        return new zzcgp(zzcfgVar, zzbccVar, z10, zzeclVar);
    }
}
