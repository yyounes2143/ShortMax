package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzws {
    private final zzen zza = new zzen(32);
    private zzwr zzb;
    private zzwr zzc;
    private zzwr zzd;
    private long zze;
    private final zzzm zzf;

    public zzws(zzzm zzzmVar) {
        this.zzf = zzzmVar;
        zzwr zzwrVar = new zzwr(0L, 65536);
        this.zzb = zzwrVar;
        this.zzc = zzwrVar;
        this.zzd = zzwrVar;
    }

    private final int zzi(int i10) {
        zzwr zzwrVar = this.zzd;
        if (zzwrVar.zzc == null) {
            zzzf zzb = this.zzf.zzb();
            zzwr zzwrVar2 = new zzwr(this.zzd.zzb, 65536);
            zzwrVar.zzc = zzb;
            zzwrVar.zzd = zzwrVar2;
        }
        return Math.min(i10, (int) (this.zzd.zzb - this.zze));
    }

    private static zzwr zzj(zzwr zzwrVar, long j10) {
        while (j10 >= zzwrVar.zzb) {
            zzwrVar = zzwrVar.zzd;
        }
        return zzwrVar;
    }

    private static zzwr zzk(zzwr zzwrVar, long j10, ByteBuffer byteBuffer, int i10) {
        zzwr zzj = zzj(zzwrVar, j10);
        while (i10 > 0) {
            int min = Math.min(i10, (int) (zzj.zzb - j10));
            byteBuffer.put(zzj.zzc.zza, zzj.zza(j10), min);
            i10 -= min;
            j10 += min;
            if (j10 == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zzwr zzl(zzwr zzwrVar, long j10, byte[] bArr, int i10) {
        zzwr zzj = zzj(zzwrVar, j10);
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(i11, (int) (zzj.zzb - j10));
            System.arraycopy(zzj.zzc.zza, zzj.zza(j10), bArr, i10 - i11, min);
            i11 -= min;
            j10 += min;
            if (j10 == zzj.zzb) {
                zzj = zzj.zzd;
            }
        }
        return zzj;
    }

    private static zzwr zzm(zzwr zzwrVar, zzhs zzhsVar, zzwu zzwuVar, zzen zzenVar) {
        zzwr zzwrVar2;
        boolean z10;
        int i10;
        if (zzhsVar.zzl()) {
            long j10 = zzwuVar.zzb;
            zzenVar.zzI(1);
            zzwr zzl = zzl(zzwrVar, j10, zzenVar.zzN(), 1);
            long j11 = j10 + 1;
            byte b10 = zzenVar.zzN()[0];
            int i11 = b10 & ByteCompanionObject.MIN_VALUE;
            int i12 = b10 & ByteCompanionObject.MAX_VALUE;
            zzhp zzhpVar = zzhsVar.zzb;
            byte[] bArr = zzhpVar.zza;
            if (bArr == null) {
                zzhpVar.zza = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            if (i11 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzwrVar2 = zzl(zzl, j11, zzhpVar.zza, i12);
            long j12 = j11 + i12;
            if (z10) {
                zzenVar.zzI(2);
                zzwrVar2 = zzl(zzwrVar2, j12, zzenVar.zzN(), 2);
                j12 += 2;
                i10 = zzenVar.zzq();
            } else {
                i10 = 1;
            }
            int[] iArr = zzhpVar.zzd;
            if (iArr == null || iArr.length < i10) {
                iArr = new int[i10];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzhpVar.zze;
            if (iArr3 == null || iArr3.length < i10) {
                iArr3 = new int[i10];
            }
            int[] iArr4 = iArr3;
            if (z10) {
                int i13 = i10 * 6;
                zzenVar.zzI(i13);
                zzwrVar2 = zzl(zzwrVar2, j12, zzenVar.zzN(), i13);
                j12 += i13;
                zzenVar.zzL(0);
                for (int i14 = 0; i14 < i10; i14++) {
                    iArr2[i14] = zzenVar.zzq();
                    iArr4[i14] = zzenVar.zzp();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzwuVar.zza - ((int) (j12 - zzwuVar.zzb));
            }
            zzafa zzafaVar = zzwuVar.zzc;
            String str = zzex.zza;
            zzhpVar.zzc(i10, iArr2, iArr4, zzafaVar.zzb, zzhpVar.zza, zzafaVar.zza, zzafaVar.zzc, zzafaVar.zzd);
            long j13 = zzwuVar.zzb;
            int i15 = (int) (j12 - j13);
            zzwuVar.zzb = j13 + i15;
            zzwuVar.zza -= i15;
        } else {
            zzwrVar2 = zzwrVar;
        }
        if (zzhsVar.zze()) {
            zzenVar.zzI(4);
            zzwr zzl2 = zzl(zzwrVar2, zzwuVar.zzb, zzenVar.zzN(), 4);
            int zzp = zzenVar.zzp();
            zzwuVar.zzb += 4;
            zzwuVar.zza -= 4;
            zzhsVar.zzj(zzp);
            zzwr zzk = zzk(zzl2, zzwuVar.zzb, zzhsVar.zzc, zzp);
            zzwuVar.zzb += zzp;
            int i16 = zzwuVar.zza - zzp;
            zzwuVar.zza = i16;
            ByteBuffer byteBuffer = zzhsVar.zzf;
            if (byteBuffer != null && byteBuffer.capacity() >= i16) {
                zzhsVar.zzf.clear();
            } else {
                zzhsVar.zzf = ByteBuffer.allocate(i16);
            }
            return zzk(zzk, zzwuVar.zzb, zzhsVar.zzf, zzwuVar.zza);
        }
        zzhsVar.zzj(zzwuVar.zza);
        return zzk(zzwrVar2, zzwuVar.zzb, zzhsVar.zzc, zzwuVar.zza);
    }

    private final void zzn(int i10) {
        long j10 = this.zze + i10;
        this.zze = j10;
        zzwr zzwrVar = this.zzd;
        if (j10 == zzwrVar.zzb) {
            this.zzd = zzwrVar.zzd;
        }
    }

    public final int zza(zzl zzlVar, int i10, boolean z10) throws IOException {
        int zzi = zzi(i10);
        zzwr zzwrVar = this.zzd;
        int zza = zzlVar.zza(zzwrVar.zzc.zza, zzwrVar.zza(this.zze), zzi);
        if (zza == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        zzn(zza);
        return zza;
    }

    public final long zzb() {
        return this.zze;
    }

    public final void zzc(long j10) {
        zzwr zzwrVar;
        if (j10 != -1) {
            while (true) {
                zzwrVar = this.zzb;
                if (j10 < zzwrVar.zzb) {
                    break;
                }
                this.zzf.zzc(zzwrVar.zzc);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza < zzwrVar.zza) {
                this.zzc = zzwrVar;
            }
        }
    }

    public final void zzd(zzhs zzhsVar, zzwu zzwuVar) {
        zzm(this.zzc, zzhsVar, zzwuVar, this.zza);
    }

    public final void zze(zzhs zzhsVar, zzwu zzwuVar) {
        this.zzc = zzm(this.zzc, zzhsVar, zzwuVar, this.zza);
    }

    public final void zzf() {
        zzwr zzwrVar = this.zzb;
        if (zzwrVar.zzc != null) {
            this.zzf.zzd(zzwrVar);
            zzwrVar.zzb();
        }
        this.zzb.zze(0L, 65536);
        zzwr zzwrVar2 = this.zzb;
        this.zzc = zzwrVar2;
        this.zzd = zzwrVar2;
        this.zze = 0L;
        this.zzf.zzg();
    }

    public final void zzg() {
        this.zzc = this.zzb;
    }

    public final void zzh(zzen zzenVar, int i10) {
        while (i10 > 0) {
            int zzi = zzi(i10);
            zzwr zzwrVar = this.zzd;
            zzenVar.zzH(zzwrVar.zzc.zza, zzwrVar.zza(this.zze), zzi);
            i10 -= zzi;
            zzn(zzi);
        }
    }
}
