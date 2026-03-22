package com.google.android.gms.internal.fido;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public abstract class zzcz implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzcz zzb = new zzcw(zzde.zzd);
    private static final zzcy zzd;
    private int zzc = 0;

    static {
        int i10 = zzcp.zza;
        zzd = new zzcy(null);
        zza = new zzcr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) < 0) {
            if (i10 >= 0) {
                if (i11 < i10) {
                    throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
                }
                throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
            }
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        return i13;
    }

    public static zzcz zzl(byte[] bArr, int i10, int i11) {
        zzj(0, i11, bArr.length);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, 0, bArr2, 0, i11);
        return new zzcw(bArr2);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i10 = this.zzc;
        if (i10 == 0) {
            int zzd2 = zzd();
            i10 = zzf(zzd2, 0, zzd2);
            if (i10 == 0) {
                i10 = 1;
            }
            this.zzc = i10;
        }
        return i10;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzcq(this);
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer valueOf = Integer.valueOf(zzd());
        if (zzd() <= 50) {
            concat = zzdg.zza(this);
        } else {
            concat = zzdg.zza(zzg(0, 47)).concat("...");
        }
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", hexString, valueOf, concat);
    }

    public abstract byte zza(int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i10);

    public abstract int zzd();

    protected abstract void zze(byte[] bArr, int i10, int i11, int i12);

    protected abstract int zzf(int i10, int i11, int i12);

    public abstract zzcz zzg(int i10, int i11);

    public abstract InputStream zzh();

    public abstract ByteBuffer zzi();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzk() {
        return this.zzc;
    }

    public final byte[] zzm() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return zzde.zzd;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }
}
