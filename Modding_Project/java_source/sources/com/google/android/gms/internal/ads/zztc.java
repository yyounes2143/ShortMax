package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zztc {
    public final zzti zza;
    public final MediaFormat zzb;
    public final zzz zzc;
    @Nullable
    public final Surface zzd;
    @Nullable
    public final MediaCrypto zze = null;
    @Nullable
    public final zztb zzf;

    private zztc(zzti zztiVar, MediaFormat mediaFormat, zzz zzzVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, @Nullable zztb zztbVar) {
        this.zza = zztiVar;
        this.zzb = mediaFormat;
        this.zzc = zzzVar;
        this.zzd = surface;
        this.zzf = zztbVar;
    }

    public static zztc zza(zzti zztiVar, MediaFormat mediaFormat, zzz zzzVar, @Nullable MediaCrypto mediaCrypto, @Nullable zztb zztbVar) {
        return new zztc(zztiVar, mediaFormat, zzzVar, null, null, zztbVar);
    }

    public static zztc zzb(zzti zztiVar, MediaFormat mediaFormat, zzz zzzVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
        return new zztc(zztiVar, mediaFormat, zzzVar, surface, null, null);
    }
}
