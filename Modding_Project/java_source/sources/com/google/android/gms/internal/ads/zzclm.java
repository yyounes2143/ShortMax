package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzclm implements zzclg {
    private final zzdvi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzclm(zzdvi zzdviVar) {
        this.zza = zzdviVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclg
    public final void zza(Map map) {
        char c10;
        String str = (String) map.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals("shake")) {
                c10 = 0;
            }
            c10 = 65535;
        } else {
            if (str.equals("flick")) {
                c10 = 1;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                this.zza.zzm(zzdve.NONE);
                return;
            } else {
                this.zza.zzm(zzdve.FLICK);
                return;
            }
        }
        this.zza.zzm(zzdve.SHAKE);
    }
}
