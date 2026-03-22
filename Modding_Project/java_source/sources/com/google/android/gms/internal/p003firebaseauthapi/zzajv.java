package com.google.android.gms.internal.p003firebaseauthapi;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajv  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzajv implements Serializable, Iterable<Byte> {
    public static final zzajv zza = new zzakg(zzalh.zzb);
    private static final zzakc zzb = new zzakf();
    private int zzc = 0;

    static {
        new zzajx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int zza(byte b10) {
        return b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzajv zzb(byte[] bArr) {
        return new zzakg(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzake zzc(int i10) {
        return new zzake(i10);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i10 = this.zzc;
        if (i10 == 0) {
            int zzb2 = zzb();
            i10 = zzb(zzb2, 0, zzb2);
            if (i10 == 0) {
                i10 = 1;
            }
            this.zzc = i10;
        }
        return i10;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzajy(this);
    }

    public final String toString() {
        String str;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer valueOf = Integer.valueOf(zzb());
        if (zzb() <= 50) {
            str = zzann.zza(this);
        } else {
            str = zzann.zza(zza(0, 47)) + "...";
        }
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", hexString, valueOf, str);
    }

    public abstract byte zza(int i10);

    public abstract zzajv zza(int i10, int i11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(zzajw zzajwVar) throws IOException;

    protected abstract void zza(byte[] bArr, int i10, int i11, int i12);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i10);

    public abstract int zzb();

    protected abstract int zzb(int i10, int i11, int i12);

    public abstract zzakh zzc();

    public final byte[] zzd() {
        int zzb2 = zzb();
        if (zzb2 == 0) {
            return zzalh.zzb;
        }
        byte[] bArr = new byte[zzb2];
        zza(bArr, 0, 0, zzb2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) < 0) {
            if (i10 < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
            } else if (i11 < i10) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
            }
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zza() {
        return this.zzc;
    }

    public static zzajv zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    public static zzajv zza(byte[] bArr, int i10, int i11) {
        zza(i10, i10 + i11, bArr.length);
        return new zzakg(zzb.zza(bArr, i10, i11));
    }

    public static zzajv zza(String str) {
        return new zzakg(str.getBytes(zzalh.zza));
    }
}
