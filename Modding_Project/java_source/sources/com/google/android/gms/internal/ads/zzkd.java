package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.annotation.Nullable;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzkd implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzacj, zzqh, zzxn, zzuf, zzhw {
    public static final /* synthetic */ int zzb = 0;
    final /* synthetic */ zzkh zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzkd(zzkh zzkhVar, zzkg zzkgVar) {
        Objects.requireNonNull(zzkhVar);
        this.zza = zzkhVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        zzkh zzkhVar = this.zza;
        zzkh.zzP(zzkhVar, surfaceTexture);
        zzkhVar.zzac(i10, i11);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzkh zzkhVar = this.zza;
        zzkhVar.zzae(null);
        zzkhVar.zzac(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.zza.zzac(i10, i11);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        this.zza.zzac(i11, i12);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.zza.zzac(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zza(Exception exc) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzw(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzb(String str, long j10, long j11) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzx(str, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzc(String str) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzy(str);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzd(zzid zzidVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzz(zzidVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zze(zzid zzidVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzA(zzidVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzf(zzz zzzVar, @Nullable zzie zzieVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzB(zzzVar, zzieVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzg(long j10) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzC(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzh(final int i10) {
        zzdi zzdiVar;
        zzdiVar = this.zza.zzA;
        zzdiVar.zzf(new zzfve() { // from class: com.google.android.gms.internal.ads.zzjz
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                Integer num = (Integer) obj;
                return Integer.valueOf(i10);
            }
        }, new zzfve() { // from class: com.google.android.gms.internal.ads.zzka
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                Integer num = (Integer) obj;
                return Integer.valueOf(i10);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzi(Exception exc) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzD(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzj(zzqi zzqiVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzE(zzqiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzk(zzqi zzqiVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzF(zzqiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzl(int i10, long j10, long j11) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzG(i10, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzm(int i10, long j10) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzH(i10, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzn(Object obj, long j10) {
        zzmo zzmoVar;
        Object obj2;
        zzdz zzdzVar;
        zzkh zzkhVar = this.zza;
        zzmoVar = zzkhVar.zzr;
        zzmoVar.zzI(obj, j10);
        obj2 = zzkhVar.zzJ;
        if (obj2 == obj) {
            zzdzVar = zzkhVar.zzm;
            zzdzVar.zzd(26, new zzdw() { // from class: com.google.android.gms.internal.ads.zzjy
                @Override // com.google.android.gms.internal.ads.zzdw
                public final void zza(Object obj3) {
                    zzbe zzbeVar = (zzbe) obj3;
                }
            });
            zzdzVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqh
    public final void zzo(final boolean z10) {
        boolean z11;
        zzdz zzdzVar;
        zzkh zzkhVar = this.zza;
        z11 = zzkhVar.zzP;
        if (z11 != z10) {
            zzkhVar.zzP = z10;
            zzdzVar = zzkhVar.zzm;
            zzdzVar.zzd(23, new zzdw() { // from class: com.google.android.gms.internal.ads.zzkb
                @Override // com.google.android.gms.internal.ads.zzdw
                public final void zza(Object obj) {
                    ((zzbe) obj).zzo(z10);
                }
            });
            zzdzVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzp(Exception exc) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzK(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzq(String str, long j10, long j11) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzL(str, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzr(String str) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzM(str);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzs(zzid zzidVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzN(zzidVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzt(zzid zzidVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzO(zzidVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzu(long j10, int i10) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzP(j10, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzv(zzz zzzVar, @Nullable zzie zzieVar) {
        zzmo zzmoVar;
        zzmoVar = this.zza.zzr;
        zzmoVar.zzQ(zzzVar, zzieVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void zzw(final zzcd zzcdVar) {
        zzdz zzdzVar;
        zzdzVar = this.zza.zzm;
        zzdzVar.zzd(25, new zzdw() { // from class: com.google.android.gms.internal.ads.zzkc
            @Override // com.google.android.gms.internal.ads.zzdw
            public final void zza(Object obj) {
                ((zzbe) obj).zzs(zzcd.this);
            }
        });
        zzdzVar.zzc();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }
}
