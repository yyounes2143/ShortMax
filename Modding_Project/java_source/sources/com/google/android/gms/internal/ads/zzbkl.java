package com.google.android.gms.internal.ads;

import android.content.Context;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbkl implements zzbkf {
    private final Context zza;
    private final Map zzb;

    public zzbkl(Context context, Map map) {
        this.zza = context;
        this.zzb = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final void zza(Object obj, Map map) {
        char c10;
        zzbyo zzo = com.google.android.gms.ads.internal.zzv.zzo();
        Context context = this.zza;
        if (!zzo.zzp(context)) {
            return;
        }
        String str = (String) map.get(CallAppDataKey.KEY_TRACKING_EVENT_NAME);
        String str2 = (String) map.get("eventId");
        int hashCode = str.hashCode();
        if (hashCode != 94399) {
            if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    c10 = 1;
                }
                c10 = 65535;
            } else {
                if (str.equals("_ac")) {
                    c10 = 0;
                }
                c10 = 65535;
            }
        } else {
            if (str.equals("_aa")) {
                c10 = 2;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("logScionEvent gmsg contained unsupported eventName");
                    return;
                }
                com.google.android.gms.ads.internal.zzv.zzo().zzh(context, str2);
                return;
            }
            com.google.android.gms.ads.internal.zzv.zzo().zzk(context, str2, (Map) this.zzb.get("_ai"));
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzo().zzj(context, str2, (Map) this.zzb.get("_ac"));
    }
}
