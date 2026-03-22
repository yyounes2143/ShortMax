package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaji {
    public final zzajp zza;
    public final zzajs zzb;
    public final zzafb zzc;
    @Nullable
    public final zzafc zzd;
    public int zze;

    public zzaji(zzajp zzajpVar, zzajs zzajsVar, zzafb zzafbVar) {
        zzafc zzafcVar;
        this.zza = zzajpVar;
        this.zzb = zzajsVar;
        this.zzc = zzafbVar;
        if (MimeTypes.AUDIO_TRUEHD.equals(zzajpVar.zzg.zzo)) {
            zzafcVar = new zzafc();
        } else {
            zzafcVar = null;
        }
        this.zzd = zzafcVar;
    }
}
