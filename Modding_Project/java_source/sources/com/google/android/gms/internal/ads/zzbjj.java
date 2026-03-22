package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbjj implements zzbkf {
    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfg zzcfgVar = (zzcfg) obj;
        com.google.android.gms.ads.internal.zzv.zzr();
        DisplayMetrics zzu = com.google.android.gms.ads.internal.util.zzs.zzu((WindowManager) zzcfgVar.getContext().getSystemService("window"));
        int i10 = zzu.widthPixels;
        int i11 = zzu.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        ((View) zzcfgVar).getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i10));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i11));
        zzcfgVar.zzd("locationReady", hashMap);
        int i12 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("GET LOCATION COMPILED");
    }
}
