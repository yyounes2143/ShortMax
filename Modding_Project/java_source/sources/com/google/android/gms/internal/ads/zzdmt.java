package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdmt {
    private final Executor zza;
    private final zzcnx zzb;
    private final zzddx zzc;
    private final zzcmq zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdmt(Executor executor, zzcnx zzcnxVar, zzddx zzddxVar, zzcmq zzcmqVar) {
        this.zza = executor;
        this.zzc = zzddxVar;
        this.zzb = zzcnxVar;
        this.zzd = zzcmqVar;
    }

    public final void zzc(final zzcfg zzcfgVar) {
        if (zzcfgVar == null) {
            return;
        }
        zzddx zzddxVar = this.zzc;
        zzddxVar.zza(zzcfgVar.zzF());
        zzazd zzazdVar = new zzazd() { // from class: com.google.android.gms.internal.ads.zzdmp
            @Override // com.google.android.gms.internal.ads.zzazd
            public final void zzdr(zzazc zzazcVar) {
                zzcgy zzN = zzcfg.this.zzN();
                Rect rect = zzazcVar.zzd;
                zzN.zzr(rect.left, rect.top, false);
            }
        };
        Executor executor = this.zza;
        zzddxVar.zzo(zzazdVar, executor);
        zzddxVar.zzo(new zzazd() { // from class: com.google.android.gms.internal.ads.zzdmq
            @Override // com.google.android.gms.internal.ads.zzazd
            public final void zzdr(zzazc zzazcVar) {
                String str;
                HashMap hashMap = new HashMap();
                if (true != zzazcVar.zzj) {
                    str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                } else {
                    str = "1";
                }
                hashMap.put("isVisible", str);
                zzcfg.this.zzd("onAdVisibilityChanged", hashMap);
            }
        }, executor);
        zzcnx zzcnxVar = this.zzb;
        zzddxVar.zzo(zzcnxVar, executor);
        zzcnxVar.zzf(zzcfgVar);
        zzcgy zzN = zzcfgVar.zzN();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkC)).booleanValue() && zzN != null) {
            zzcmq zzcmqVar = this.zzd;
            zzN.zzN(zzcmqVar);
            zzN.zzO(zzcmqVar, null, null);
        }
        zzcfgVar.zzag("/trackActiveViewUnit", new zzbkf() { // from class: com.google.android.gms.internal.ads.zzdmr
            @Override // com.google.android.gms.internal.ads.zzbkf
            public final void zza(Object obj, Map map) {
                zzcfg zzcfgVar2 = (zzcfg) obj;
                zzdmt.this.zzb.zzd();
            }
        });
        zzcfgVar.zzag("/untrackActiveViewUnit", new zzbkf() { // from class: com.google.android.gms.internal.ads.zzdms
            @Override // com.google.android.gms.internal.ads.zzbkf
            public final void zza(Object obj, Map map) {
                zzcfg zzcfgVar2 = (zzcfg) obj;
                zzdmt.this.zzb.zzb();
            }
        });
    }
}
