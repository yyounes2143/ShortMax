package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcbh extends TextureView implements zzcce {
    protected final zzcbv zza;
    protected final zzccf zzb;

    public zzcbh(Context context) {
        super(context);
        this.zza = new zzcbv();
        this.zzb = new zzccf(context, this);
    }

    public void zzC(@Nullable String str, @Nullable String[] strArr, @Nullable Integer num) {
        zzs(str);
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract int zzc();

    public abstract int zzd();

    public abstract int zze();

    public abstract long zzf();

    public abstract long zzg();

    public abstract long zzh();

    public abstract String zzj();

    public abstract void zzn();

    public abstract void zzo();

    public abstract void zzp();

    public abstract void zzq(int i10);

    public abstract void zzr(zzcbg zzcbgVar);

    public abstract void zzs(@Nullable String str);

    public abstract void zzt();

    public abstract void zzu(float f10, float f11);

    @Nullable
    public Integer zzw() {
        return null;
    }

    public void zzA(int i10) {
    }

    public void zzB(int i10) {
    }

    public void zzx(int i10) {
    }

    public void zzy(int i10) {
    }

    public void zzz(int i10) {
    }
}
