package com.google.android.gms.internal.ads;

import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhbk extends zzgxz {
    static final int[] zza = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_QUERY, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private final int zzc;
    private final zzgxz zzd;
    private final zzgxz zze;
    private final int zzf;
    private final int zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgxz zzC(zzgxz zzgxzVar, zzgxz zzgxzVar2) {
        if (zzgxzVar2.zzd() == 0) {
            return zzgxzVar;
        }
        if (zzgxzVar.zzd() == 0) {
            return zzgxzVar2;
        }
        int zzd = zzgxzVar.zzd() + zzgxzVar2.zzd();
        if (zzd < 128) {
            return zzD(zzgxzVar, zzgxzVar2);
        }
        if (zzgxzVar instanceof zzhbk) {
            zzhbk zzhbkVar = (zzhbk) zzgxzVar;
            zzgxz zzgxzVar3 = zzhbkVar.zze;
            if (zzgxzVar3.zzd() + zzgxzVar2.zzd() < 128) {
                return new zzhbk(zzhbkVar.zzd, zzD(zzgxzVar3, zzgxzVar2));
            }
            zzgxz zzgxzVar4 = zzhbkVar.zzd;
            if (zzgxzVar4.zzf() > zzgxzVar3.zzf() && zzhbkVar.zzg > zzgxzVar2.zzf()) {
                return new zzhbk(zzgxzVar4, new zzhbk(zzgxzVar3, zzgxzVar2));
            }
        }
        if (zzd >= zzc(Math.max(zzgxzVar.zzf(), zzgxzVar2.zzf()) + 1)) {
            return new zzhbk(zzgxzVar, zzgxzVar2);
        }
        return zzhbh.zza(new zzhbh(null), zzgxzVar, zzgxzVar2);
    }

    private static zzgxz zzD(zzgxz zzgxzVar, zzgxz zzgxzVar2) {
        int zzd = zzgxzVar.zzd();
        int zzd2 = zzgxzVar2.zzd();
        byte[] bArr = new byte[zzd + zzd2];
        zzgxzVar.zzz(bArr, 0, 0, zzd);
        zzgxzVar2.zzz(bArr, 0, zzd, zzd2);
        return new zzgxw(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i10) {
        int[] iArr = zza;
        int length = iArr.length;
        if (i10 >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final boolean equals(Object obj) {
        boolean zzg;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgxz)) {
            return false;
        }
        zzgxz zzgxzVar = (zzgxz) obj;
        int i10 = this.zzc;
        if (i10 != zzgxzVar.zzd()) {
            return false;
        }
        if (i10 == 0) {
            return true;
        }
        int zzr = zzr();
        int zzr2 = zzgxzVar.zzr();
        if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
            return false;
        }
        zzhbi zzhbiVar = new zzhbi(this, null);
        zzgxv next = zzhbiVar.next();
        zzhbi zzhbiVar2 = new zzhbi(zzgxzVar, null);
        zzgxv next2 = zzhbiVar2.next();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int zzd = next.zzd() - i11;
            int zzd2 = next2.zzd() - i12;
            int min = Math.min(zzd, zzd2);
            if (i11 == 0) {
                zzg = next.zzg(next2, i12, min);
            } else {
                zzg = next2.zzg(next, i11, min);
            }
            if (!zzg) {
                return false;
            }
            i13 += min;
            if (i13 >= i10) {
                if (i13 == i10) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == zzd) {
                next = zzhbiVar.next();
                i11 = 0;
            } else {
                i11 += min;
            }
            if (min == zzd2) {
                next2 = zzhbiVar2.next();
                i12 = 0;
            } else {
                i12 += min;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxz, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzhbg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final byte zza(int i10) {
        zzgxz.zzy(i10, this.zzc);
        return zzb(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final byte zzb(int i10) {
        int i11 = this.zzf;
        if (i10 < i11) {
            return this.zzd.zzb(i10);
        }
        return this.zze.zzb(i10 - i11);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final int zzd() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final void zze(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        int i14 = this.zzf;
        if (i13 <= i14) {
            this.zzd.zze(bArr, i10, i11, i12);
        } else if (i10 >= i14) {
            this.zze.zze(bArr, i10 - i14, i11, i12);
        } else {
            int i15 = i14 - i10;
            this.zzd.zze(bArr, i10, i11, i15);
            this.zze.zze(bArr, 0, i11 + i15, i12 - i15);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final int zzf() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final boolean zzh() {
        if (this.zzc >= zzc(this.zzg)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final int zzi(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.zzf;
        if (i13 <= i14) {
            return this.zzd.zzi(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.zze.zzi(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.zze.zzi(this.zzd.zzi(i10, i11, i15), 0, i12 - i15);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final int zzj(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.zzf;
        if (i13 <= i14) {
            return this.zzd.zzj(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.zze.zzj(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.zze.zzj(this.zzd.zzj(i10, i11, i15), 0, i12 - i15);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final zzgxz zzk(int i10, int i11) {
        int i12 = this.zzc;
        int zzq = zzgxz.zzq(i10, i11, i12);
        if (zzq == 0) {
            return zzgxz.zzb;
        }
        if (zzq == i12) {
            return this;
        }
        int i13 = this.zzf;
        if (i11 <= i13) {
            return this.zzd.zzk(i10, i11);
        }
        int i14 = i11 - i13;
        if (i10 >= i13) {
            return this.zze.zzk(i10 - i13, i14);
        }
        zzgxz zzgxzVar = this.zzd;
        return new zzhbk(zzgxzVar.zzk(i10, zzgxzVar.zzd()), this.zze.zzk(0, i14));
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final zzgyf zzl() {
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        zzhbi zzhbiVar = new zzhbi(this, null);
        while (zzhbiVar.hasNext()) {
            arrayList.add(zzhbiVar.next().zzn());
        }
        int i10 = zzgyf.zze;
        boolean z10 = false;
        int i11 = 0;
        for (ByteBuffer byteBuffer : arrayList) {
            i11 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z10 |= true;
            } else if (byteBuffer.isDirect()) {
                z10 |= true;
            } else {
                z10 |= true;
            }
        }
        if (z10) {
            return new zzgyb(arrayList, i11, true, null);
        }
        return zzgyf.zzG(new zzgzx(arrayList), 4096);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    protected final String zzm(Charset charset) {
        return new String(zzA(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final ByteBuffer zzn() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgxz
    public final void zzo(zzgxq zzgxqVar) throws IOException {
        this.zzd.zzo(zzgxqVar);
        this.zze.zzo(zzgxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final boolean zzp() {
        zzgxz zzgxzVar = this.zzd;
        zzgxz zzgxzVar2 = this.zze;
        if (zzgxzVar2.zzj(zzgxzVar.zzj(0, 0, this.zzf), 0, zzgxzVar2.zzd()) != 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final zzgxu zzs() {
        return new zzhbg(this);
    }

    private zzhbk(zzgxz zzgxzVar, zzgxz zzgxzVar2) {
        this.zzd = zzgxzVar;
        this.zze = zzgxzVar2;
        int zzd = zzgxzVar.zzd();
        this.zzf = zzd;
        this.zzc = zzd + zzgxzVar2.zzd();
        this.zzg = Math.max(zzgxzVar.zzf(), zzgxzVar2.zzf()) + 1;
    }
}
