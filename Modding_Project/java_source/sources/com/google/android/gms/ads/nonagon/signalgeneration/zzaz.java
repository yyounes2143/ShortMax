package com.google.android.gms.ads.nonagon.signalgeneration;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbcj;
import com.google.android.gms.internal.ads.zzbze;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaz {
    private final String zza;
    @Nullable
    private final String zzb;
    @Nullable
    private final zzbze zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaz(zzax zzaxVar, zzay zzayVar) {
        String str;
        String str2;
        zzbze zzbzeVar;
        str = zzaxVar.zza;
        this.zza = str;
        str2 = zzaxVar.zzb;
        this.zzb = str2;
        zzbzeVar = zzaxVar.zzc;
        this.zzc = zzbzeVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbcj.zza.EnumC0294zza zza() {
        char c10;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    if (c10 != 3) {
                        return zzbcj.zza.EnumC0294zza.AD_INITIATER_UNSPECIFIED;
                    }
                    return zzbcj.zza.EnumC0294zza.REWARD_BASED_VIDEO_AD;
                }
                return zzbcj.zza.EnumC0294zza.AD_LOADER;
            }
            return zzbcj.zza.EnumC0294zza.INTERSTITIAL;
        }
        return zzbcj.zza.EnumC0294zza.BANNER;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzbze zzb() {
        return this.zzc;
    }

    public final String zzc() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final String zzd() {
        return this.zzb;
    }

    public final Set zze() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}
