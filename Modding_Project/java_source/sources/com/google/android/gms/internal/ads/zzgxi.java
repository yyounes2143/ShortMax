package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxh;
import com.google.android.gms.internal.ads.zzgxi;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgxi<MessageType extends zzgxi<MessageType, BuilderType>, BuilderType extends zzgxh<MessageType, BuilderType>> implements zzhas {
    protected int zzq = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void zzaQ(Iterable<T> iterable, List<? super T> list) {
        zzgxh.zzbd(iterable, list);
    }

    protected static void zzaR(zzgxz zzgxzVar) throws IllegalArgumentException {
        if (zzgxzVar.zzp()) {
            return;
        }
        throw new IllegalArgumentException("Byte string is not UTF-8.");
    }

    private String zzdI(String str) {
        String name = getClass().getName();
        return "Serializing " + name + " to a " + str + " threw an IOException (should never happen).";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzaL() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzaM(zzhbl zzhblVar) {
        return zzaL();
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public zzgxz zzaN() {
        try {
            int zzaY = zzaY();
            zzgxz zzgxzVar = zzgxz.zzb;
            byte[] bArr = new byte[zzaY];
            int i10 = zzgym.zzf;
            zzgyi zzgyiVar = new zzgyi(bArr, 0, zzaY);
            zzcZ(zzgyiVar);
            zzgyiVar.zzF();
            return new zzgxw(bArr);
        } catch (IOException e10) {
            throw new RuntimeException(zzdI("ByteString"), e10);
        }
    }

    public zzhax zzaO() {
        throw new UnsupportedOperationException("mutableCopy() is not implemented.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhbw zzaP() {
        return new zzhbw(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzaS(int i10) {
        throw new UnsupportedOperationException();
    }

    public void zzaT(OutputStream outputStream) throws IOException {
        int zzaY = zzaY();
        zzgyk zzgykVar = new zzgyk(outputStream, zzgym.zzB(zzgym.zzD(zzaY) + zzaY));
        zzgykVar.zzu(zzaY);
        zzcZ(zzgykVar);
        zzgykVar.zzK();
    }

    public void zzaU(OutputStream outputStream) throws IOException {
        zzgyk zzgykVar = new zzgyk(outputStream, zzgym.zzB(zzaY()));
        zzcZ(zzgykVar);
        zzgykVar.zzK();
    }

    public byte[] zzaV() {
        try {
            int zzaY = zzaY();
            byte[] bArr = new byte[zzaY];
            int i10 = zzgym.zzf;
            zzgyi zzgyiVar = new zzgyi(bArr, 0, zzaY);
            zzcZ(zzgyiVar);
            zzgyiVar.zzF();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException(zzdI("byte array"), e10);
        }
    }
}
