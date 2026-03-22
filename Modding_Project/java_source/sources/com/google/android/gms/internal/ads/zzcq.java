package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcq implements zzcn {
    private int zzb;
    private float zzc = 1.0f;
    private float zzd = 1.0f;
    private zzcl zze;
    private zzcl zzf;
    private zzcl zzg;
    private zzcl zzh;
    private boolean zzi;
    @Nullable
    private zzcp zzj;
    private ByteBuffer zzk;
    private ShortBuffer zzl;
    private ByteBuffer zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;

    public zzcq() {
        zzcl zzclVar = zzcl.zza;
        this.zze = zzclVar;
        this.zzf = zzclVar;
        this.zzg = zzclVar;
        this.zzh = zzclVar;
        ByteBuffer byteBuffer = zzcn.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzcl zza(zzcl zzclVar) throws zzcm {
        if (zzclVar.zzd == 2) {
            int i10 = this.zzb;
            if (i10 == -1) {
                i10 = zzclVar.zzb;
            }
            this.zze = zzclVar;
            zzcl zzclVar2 = new zzcl(i10, zzclVar.zzc, 2);
            this.zzf = zzclVar2;
            this.zzi = true;
            return zzclVar2;
        }
        throw new zzcm("Unhandled input format:", zzclVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final ByteBuffer zzb() {
        int zza;
        zzcp zzcpVar = this.zzj;
        if (zzcpVar != null && (zza = zzcpVar.zza()) > 0) {
            if (this.zzk.capacity() < zza) {
                ByteBuffer order = ByteBuffer.allocateDirect(zza).order(ByteOrder.nativeOrder());
                this.zzk = order;
                this.zzl = order.asShortBuffer();
            } else {
                this.zzk.clear();
                this.zzl.clear();
            }
            zzcpVar.zzd(this.zzl);
            this.zzo += zza;
            this.zzk.limit(zza);
            this.zzm = this.zzk;
        }
        ByteBuffer byteBuffer = this.zzm;
        this.zzm = zzcn.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzc() {
        if (zzg()) {
            zzcl zzclVar = this.zze;
            this.zzg = zzclVar;
            zzcl zzclVar2 = this.zzf;
            this.zzh = zzclVar2;
            if (this.zzi) {
                this.zzj = new zzcp(zzclVar.zzb, zzclVar.zzc, this.zzc, this.zzd, zzclVar2.zzb);
            } else {
                zzcp zzcpVar = this.zzj;
                if (zzcpVar != null) {
                    zzcpVar.zzc();
                }
            }
        }
        this.zzm = zzcn.zza;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzd() {
        zzcp zzcpVar = this.zzj;
        if (zzcpVar != null) {
            zzcpVar.zze();
        }
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zze(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        zzcp zzcpVar = this.zzj;
        zzcpVar.getClass();
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.zzn += remaining;
        zzcpVar.zzf(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzf() {
        this.zzc = 1.0f;
        this.zzd = 1.0f;
        zzcl zzclVar = zzcl.zza;
        this.zze = zzclVar;
        this.zzf = zzclVar;
        this.zzg = zzclVar;
        this.zzh = zzclVar;
        ByteBuffer byteBuffer = zzcn.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
        this.zzi = false;
        this.zzj = null;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final boolean zzg() {
        if (this.zzf.zzb != -1) {
            if (Math.abs(this.zzc - 1.0f) >= 1.0E-4f || Math.abs(this.zzd - 1.0f) >= 1.0E-4f || this.zzf.zzb != this.zze.zzb) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final boolean zzh() {
        if (!this.zzp) {
            return false;
        }
        zzcp zzcpVar = this.zzj;
        if (zzcpVar != null && zzcpVar.zza() != 0) {
            return false;
        }
        return true;
    }

    public final long zzi(long j10) {
        long j11 = this.zzo;
        if (j11 >= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            long j12 = this.zzn;
            zzcp zzcpVar = this.zzj;
            zzcpVar.getClass();
            long zzb = j12 - zzcpVar.zzb();
            int i10 = this.zzh.zzb;
            int i11 = this.zzg.zzb;
            if (i10 == i11) {
                return zzex.zzu(j10, zzb, j11, RoundingMode.DOWN);
            }
            return zzex.zzu(j10, zzb * i10, j11 * i11, RoundingMode.DOWN);
        }
        return (long) (this.zzc * j10);
    }

    public final void zzj(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        boolean z10;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        if (this.zzd != f10) {
            this.zzd = f10;
            this.zzi = true;
        }
    }

    public final void zzk(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        boolean z10;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        if (this.zzc != f10) {
            this.zzc = f10;
            this.zzi = true;
        }
    }
}
