package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfmh extends zzfmk {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfmh zzb = new zzfmh();

    private zzfmh() {
    }

    public static zzfmh zza() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfmk
    public final void zzb(boolean z10) {
        for (zzflp zzflpVar : zzfmi.zza().zzc()) {
            zzflpVar.zzg().zzk(z10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmk
    public final boolean zzc() {
        for (zzflp zzflpVar : zzfmi.zza().zzb()) {
            View zzf = zzflpVar.zzf();
            if (zzf != null && zzf.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
