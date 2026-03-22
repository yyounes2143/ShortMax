package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgym extends zzgxq {
    private static final Logger zza = Logger.getLogger(zzgym.class.getName());
    private static final boolean zzb = zzhce.zzA();
    public static final /* synthetic */ int zzf = 0;
    zzgyn zze;

    private zzgym() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzA(zzhas zzhasVar, zzhbl zzhblVar) {
        int zzaM = ((zzgxi) zzhasVar).zzaM(zzhblVar);
        return zzD(zzaM) + zzaM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzB(int i10) {
        if (i10 > 4096) {
            return 4096;
        }
        return i10;
    }

    public static int zzC(String str) {
        int length;
        try {
            length = zzhcj.zze(str);
        } catch (zzhci unused) {
            length = str.getBytes(zzgzu.zza).length;
        }
        return zzD(length) + length;
    }

    public static int zzD(int i10) {
        return (352 - (Integer.numberOfLeadingZeros(i10) * 9)) >>> 6;
    }

    public static int zzE(long j10) {
        return (640 - (Long.numberOfLeadingZeros(j10) * 9)) >>> 6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int zzy(int i10, zzhas zzhasVar, zzhbl zzhblVar) {
        int zzD = zzD(i10 << 3);
        return zzD + zzD + ((zzgxi) zzhasVar).zzaM(zzhblVar);
    }

    public static int zzz(zzhas zzhasVar) {
        int zzaY = zzhasVar.zzaY();
        return zzD(zzaY) + zzaY;
    }

    public final void zzF() {
        if (zzb() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzG(String str, zzhci zzhciVar) throws IOException {
        zza.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhciVar);
        byte[] bytes = str.getBytes(zzgzu.zza);
        try {
            int length = bytes.length;
            zzu(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzgyj(e10);
        }
    }

    public abstract void zzK() throws IOException;

    public abstract void zzL(byte b10) throws IOException;

    public abstract void zzM(int i10, boolean z10) throws IOException;

    public abstract void zzN(int i10, zzgxz zzgxzVar) throws IOException;

    @Override // com.google.android.gms.internal.ads.zzgxq
    public abstract void zza(byte[] bArr, int i10, int i11) throws IOException;

    public abstract int zzb();

    public abstract void zzh(int i10, int i11) throws IOException;

    public abstract void zzi(int i10) throws IOException;

    public abstract void zzj(int i10, long j10) throws IOException;

    public abstract void zzk(long j10) throws IOException;

    public abstract void zzl(int i10, int i11) throws IOException;

    public abstract void zzm(int i10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzn(int i10, zzhas zzhasVar, zzhbl zzhblVar) throws IOException;

    public abstract void zzo(int i10, zzhas zzhasVar) throws IOException;

    public abstract void zzp(int i10, zzgxz zzgxzVar) throws IOException;

    public abstract void zzq(int i10, String str) throws IOException;

    public abstract void zzs(int i10, int i11) throws IOException;

    public abstract void zzt(int i10, int i11) throws IOException;

    public abstract void zzu(int i10) throws IOException;

    public abstract void zzv(int i10, long j10) throws IOException;

    public abstract void zzw(long j10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgym(zzgyl zzgylVar) {
    }
}
