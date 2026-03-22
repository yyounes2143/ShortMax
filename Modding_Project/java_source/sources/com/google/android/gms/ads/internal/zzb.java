package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzbya;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzb {
    private final Context zza;
    private boolean zzb;
    @Nullable
    private final zzbya zzc;
    private final zzbuy zzd = new zzbuy(false, Collections.emptyList());

    public zzb(Context context, @Nullable zzbya zzbyaVar, @Nullable zzbuy zzbuyVar) {
        this.zza = context;
        this.zzc = zzbyaVar;
    }

    private final boolean zzd() {
        zzbya zzbyaVar = this.zzc;
        if ((zzbyaVar != null && zzbyaVar.zza().zzf) || this.zzd.zza) {
            return true;
        }
        return false;
    }

    public final void zza() {
        this.zzb = true;
    }

    public final void zzb(@Nullable String str) {
        List<String> list;
        if (zzd()) {
            if (str == null) {
                str = "";
            }
            zzbya zzbyaVar = this.zzc;
            if (zzbyaVar != null) {
                zzbyaVar.zze(str, null, 3);
                return;
            }
            zzbuy zzbuyVar = this.zzd;
            if (zzbuyVar.zza && (list = zzbuyVar.zzb) != null) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        Context context = this.zza;
                        zzv.zzr();
                        com.google.android.gms.ads.internal.util.zzs.zzM(context, "", replace);
                    }
                }
            }
        }
    }

    public final boolean zzc() {
        if (zzd() && !this.zzb) {
            return false;
        }
        return true;
    }
}
