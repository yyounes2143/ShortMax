package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbkm implements zzbkf {
    static final Map zza = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", MRAIDPresenter.SET_ORIENTATION_PROPERTIES, "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzb zzb;
    private final zzbso zzc;
    private final zzbsv zzd;

    public zzbkm(com.google.android.gms.ads.internal.zzb zzbVar, zzbso zzbsoVar, zzbsv zzbsvVar) {
        this.zzb = zzbVar;
        this.zzc = zzbsoVar;
        this.zzd = zzbsvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfg zzcfgVar = (zzcfg) obj;
        int intValue = ((Integer) zza.get((String) map.get("a"))).intValue();
        int i10 = 6;
        boolean z10 = true;
        if (intValue != 5) {
            if (intValue != 7) {
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzb;
                if (zzbVar.zzc()) {
                    if (intValue != 1) {
                        if (intValue != 3) {
                            if (intValue != 4) {
                                if (intValue != 5) {
                                    if (intValue != 6) {
                                        if (intValue != 7) {
                                            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Unknown MRAID command called.");
                                            return;
                                        }
                                    } else {
                                        this.zzc.zzb(true);
                                        return;
                                    }
                                }
                            } else {
                                new zzbsl(zzcfgVar, map).zzc();
                                return;
                            }
                        } else {
                            new zzbsr(zzcfgVar, map).zzb();
                            return;
                        }
                    } else {
                        this.zzc.zzc(map);
                        return;
                    }
                } else {
                    zzbVar.zzb(null);
                    return;
                }
            }
            this.zzd.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            z10 = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        }
        if (zzcfgVar == null) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i10 = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            if (z10) {
                i10 = -1;
            } else {
                i10 = 14;
            }
        }
        zzcfgVar.zzau(i10);
    }
}
