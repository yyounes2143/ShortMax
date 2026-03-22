package com.google.android.gms.internal.fido;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzdu implements Closeable {
    private final InputStream zza;
    private zzdt zzb;
    private final byte[] zzc = new byte[8];
    private final zzdv zzd = zzdv.zza();

    public zzdu(InputStream inputStream) {
        this.zza = inputStream;
    }

    private final long zzh() throws IOException {
        byte[] bArr;
        if (this.zzb.zza() < 24) {
            long zza = this.zzb.zza();
            this.zzb = null;
            return zza;
        } else if (this.zzb.zza() == 24) {
            int read = this.zza.read();
            if (read != -1) {
                this.zzb = null;
                return read & 255;
            }
            throw new EOFException();
        } else if (this.zzb.zza() == 25) {
            zzk(this.zzc, 2);
            byte[] bArr2 = this.zzc;
            return ((bArr2[0] & 255) << 8) | (bArr2[1] & 255);
        } else if (this.zzb.zza() == 26) {
            zzk(this.zzc, 4);
            return (bArr[3] & 255) | ((bArr[1] & 255) << 16) | ((this.zzc[0] & 255) << 24) | ((bArr[2] & 255) << 8);
        } else if (this.zzb.zza() == 27) {
            zzk(this.zzc, 8);
            byte[] bArr3 = this.zzc;
            long j10 = bArr3[0];
            long j11 = bArr3[1];
            long j12 = bArr3[2];
            return (bArr3[7] & 255) | ((bArr3[6] & 255) << 8) | ((j11 & 255) << 48) | ((j10 & 255) << 56) | ((j12 & 255) << 40) | ((bArr3[3] & 255) << 32) | ((bArr3[4] & 255) << 24) | ((bArr3[5] & 255) << 16);
        } else {
            throw new IOException(String.format("invalid additional information %s for major type %s", Byte.valueOf(this.zzb.zza()), Integer.valueOf(this.zzb.zzc())));
        }
    }

    private final void zzi() throws IOException {
        zzd();
        if (this.zzb.zza() != 31) {
            return;
        }
        throw new IllegalStateException(String.format("expected definite length but found %s", Byte.valueOf(this.zzb.zza())));
    }

    private final void zzj(byte b10) throws IOException {
        zzd();
        if (this.zzb.zzb() == b10) {
            return;
        }
        throw new IllegalStateException(String.format("expected major type %s but found %s", Integer.valueOf((b10 >> 5) & 7), Integer.valueOf(this.zzb.zzc())));
    }

    private final void zzk(byte[] bArr, int i10) throws IOException {
        int i11 = 0;
        while (i11 != i10) {
            int read = this.zza.read(bArr, i11, i10 - i11);
            if (read != -1) {
                i11 += read;
            } else {
                throw new EOFException();
            }
        }
        this.zzb = null;
    }

    private final byte[] zzl() throws IOException {
        zzi();
        long zzh = zzh();
        if (zzh >= 0 && zzh <= SieveCacheKt.NodeLinkMask) {
            if (this.zza.available() >= zzh) {
                int i10 = (int) zzh;
                byte[] bArr = new byte[i10];
                zzk(bArr, i10);
                return bArr;
            }
            throw new EOFException();
        }
        throw new UnsupportedOperationException(String.format("the maximum supported byte/text string length is %s bytes", Integer.MAX_VALUE));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza.close();
        this.zzd.zzb();
    }

    public final long zza() throws IOException {
        zzj(ByteCompanionObject.MIN_VALUE);
        zzi();
        long zzh = zzh();
        int i10 = (zzh > 0L ? 1 : (zzh == 0L ? 0 : -1));
        if (i10 >= 0) {
            if (i10 > 0) {
                this.zzd.zzg(zzh);
            }
            return zzh;
        }
        throw new UnsupportedOperationException(String.format("the maximum supported array length is %s", Long.MAX_VALUE));
    }

    public final long zzb() throws IOException {
        boolean z10;
        zzd();
        if (this.zzb.zzb() == 0) {
            z10 = true;
        } else if (this.zzb.zzb() == 32) {
            z10 = false;
        } else {
            throw new IllegalStateException(String.format("expected major type 0 or 1 but found %s", Integer.valueOf(this.zzb.zzc())));
        }
        long zzh = zzh();
        if (zzh >= 0) {
            if (z10) {
                return zzh;
            }
            return ~zzh;
        }
        throw new UnsupportedOperationException(String.format("the maximum supported unsigned/negative integer is %s", Long.MAX_VALUE));
    }

    public final long zzc() throws IOException {
        zzj((byte) -96);
        zzi();
        long zzh = zzh();
        int i10 = (zzh > 0L ? 1 : (zzh == 0L ? 0 : -1));
        if (i10 >= 0 && zzh <= 4611686018427387903L) {
            if (i10 > 0) {
                this.zzd.zzg(zzh + zzh);
            }
            return zzh;
        }
        throw new UnsupportedOperationException("the maximum supported map length is 4611686018427387903L");
    }

    public final zzdt zzd() throws IOException {
        if (this.zzb == null) {
            int read = this.zza.read();
            if (read == -1) {
                this.zzd.zzb();
                return null;
            }
            zzdt zzdtVar = new zzdt(read);
            this.zzb = zzdtVar;
            byte zzb = zzdtVar.zzb();
            if (zzb != Byte.MIN_VALUE && zzb != -96 && zzb != -64) {
                if (zzb != -32) {
                    if (zzb != 0 && zzb != 32) {
                        if (zzb != 64) {
                            if (zzb == 96) {
                                this.zzd.zze(-2L);
                            } else {
                                throw new IllegalStateException(String.format("invalid major type: %s", Integer.valueOf(this.zzb.zzc())));
                            }
                        } else {
                            this.zzd.zze(-1L);
                        }
                        this.zzd.zzf();
                    }
                } else if (this.zzb.zza() == 31) {
                    this.zzd.zzc();
                }
            }
            this.zzd.zzd();
            this.zzd.zzf();
        }
        return this.zzb;
    }

    public final String zze() throws IOException {
        zzj((byte) 96);
        return new String(zzl(), StandardCharsets.UTF_8);
    }

    public final boolean zzf() throws IOException {
        zzj((byte) -32);
        if (this.zzb.zza() <= 24) {
            int zzh = (int) zzh();
            if (zzh == 20) {
                return false;
            }
            if (zzh == 21) {
                return true;
            }
            throw new IllegalStateException(String.format("expected FALSE or TRUE", new Object[0]));
        }
        throw new IllegalStateException("expected simple value");
    }

    public final byte[] zzg() throws IOException {
        zzj((byte) 64);
        return zzl();
    }
}
