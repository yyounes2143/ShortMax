package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.net.Uri;
import com.huawei.hms.support.api.entity.common.CommonConstant;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzchr implements zzhgr {
    private zzchr(zzchh zzchhVar) {
    }

    public static zzchr zza(zzchh zzchhVar) {
        return new zzchr(zzchhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    public final /* synthetic */ Object zzb() {
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
        intent.setPackage("com.android.vending");
        intent.setData(Uri.parse("https://play.google.com/d"));
        return intent;
    }
}
