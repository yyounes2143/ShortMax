package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzqo {
    boolean zzA();

    boolean zzB(zzz zzzVar);

    int zza(zzz zzzVar);

    long zzb();

    long zzc(boolean z10);

    zzbb zzd();

    zzps zze(zzz zzzVar);

    void zzf(zzz zzzVar, int i10, @Nullable int[] iArr) throws zzqj;

    void zzg();

    void zzh();

    void zzi();

    void zzj();

    void zzk() throws zzqn;

    void zzl();

    void zzm();

    void zzn(zze zzeVar);

    void zzo(int i10);

    void zzp(zzf zzfVar);

    void zzq(zzdj zzdjVar);

    void zzr(zzql zzqlVar);

    @RequiresApi(29)
    void zzs(int i10, int i11);

    void zzt(zzbb zzbbVar);

    void zzu(@Nullable zzph zzphVar);

    @RequiresApi(23)
    void zzv(@Nullable AudioDeviceInfo audioDeviceInfo);

    void zzw(boolean z10);

    void zzx(float f10);

    boolean zzy(ByteBuffer byteBuffer, long j10, int i10) throws zzqk, zzqn;

    boolean zzz();
}
