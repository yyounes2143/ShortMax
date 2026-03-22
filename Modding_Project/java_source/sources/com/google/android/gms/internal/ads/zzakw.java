package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzakw implements zzafb {
    private final zzafb zza;
    private final zzakr zzb;
    @Nullable
    private zzakt zzg;
    private zzz zzh;
    private boolean zzi;
    private int zzd = 0;
    private int zze = 0;
    private byte[] zzf = zzex.zzb;
    private final zzen zzc = new zzen();

    public zzakw(zzafb zzafbVar, zzakr zzakrVar) {
        this.zza = zzafbVar;
        this.zzb = zzakrVar;
    }

    public static /* synthetic */ void zza(zzakw zzakwVar, long j10, int i10, zzakl zzaklVar) {
        boolean z10;
        zzdd.zzb(zzakwVar.zzh);
        zzfyq<zzcu> zzfyqVar = zzaklVar.zza;
        long j11 = zzaklVar.zzc;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(zzfyqVar.size());
        for (zzcu zzcuVar : zzfyqVar) {
            arrayList.add(zzcuVar.zza());
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayList);
        bundle.putLong("d", j11);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        zzen zzenVar = zzakwVar.zzc;
        int length = marshall.length;
        zzenVar.zzJ(marshall, length);
        zzafb zzafbVar = zzakwVar.zza;
        zzafbVar.zzr(zzenVar, length);
        long j12 = zzaklVar.zzb;
        if (j12 == -9223372036854775807L) {
            if (zzakwVar.zzh.zzt == Long.MAX_VALUE) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzdd.zzf(z10);
        } else {
            long j13 = zzakwVar.zzh.zzt;
            if (j13 == Long.MAX_VALUE) {
                j10 += j12;
            } else {
                j10 = j12 + j13;
            }
        }
        zzafbVar.zzt(j10, i10 | 1, length, 0, null);
    }

    private final void zzc(int i10) {
        byte[] bArr;
        int length = this.zzf.length;
        int i11 = this.zze;
        if (length - i11 >= i10) {
            return;
        }
        int i12 = i11 - this.zzd;
        int max = Math.max(i12 + i12, i10 + i12);
        byte[] bArr2 = this.zzf;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.zzd, bArr, 0, i12);
        this.zzd = 0;
        this.zze = i12;
        this.zzf = bArr;
    }

    public final void zzb(boolean z10) {
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final /* synthetic */ int zzf(zzl zzlVar, int i10, boolean z10) {
        return zzaez.zza(this, zzlVar, i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zzg(zzl zzlVar, int i10, boolean z10, int i11) throws IOException {
        if (this.zzg == null) {
            return this.zza.zzg(zzlVar, i10, z10, 0);
        }
        zzc(i10);
        int zza = zzlVar.zza(this.zzf, this.zze, i10);
        if (zza == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        this.zze += zza;
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final void zzm(zzz zzzVar) {
        boolean z10;
        zzakt zzaktVar;
        String str = zzzVar.zzo;
        str.getClass();
        if (zzay.zzb(str) == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        if (!zzzVar.equals(this.zzh)) {
            this.zzh = zzzVar;
            zzakr zzakrVar = this.zzb;
            if (zzakrVar.zzc(zzzVar)) {
                zzaktVar = zzakrVar.zzb(zzzVar);
            } else {
                zzaktVar = null;
            }
            this.zzg = zzaktVar;
        }
        if (this.zzg == null) {
            this.zza.zzm(zzzVar);
            return;
        }
        zzafb zzafbVar = this.zza;
        zzx zzb = zzzVar.zzb();
        zzb.zzah("application/x-media3-cues");
        zzb.zzE(str);
        zzb.zzal(Long.MAX_VALUE);
        zzb.zzI(this.zzb.zza(zzzVar));
        zzafbVar.zzm(zzb.zzan());
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final /* synthetic */ void zzr(zzen zzenVar, int i10) {
        zzaez.zzb(this, zzenVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final void zzs(zzen zzenVar, int i10, int i11) {
        if (this.zzg == null) {
            this.zza.zzs(zzenVar, i10, i11);
            return;
        }
        zzc(i10);
        zzenVar.zzH(this.zzf, this.zze, i10);
        this.zze += i10;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final void zzt(final long j10, final int i10, int i11, int i12, @Nullable zzafa zzafaVar) {
        boolean z10;
        if (this.zzg == null) {
            this.zza.zzt(j10, i10, i11, i12, zzafaVar);
            return;
        }
        if (zzafaVar == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zze(z10, "DRM on subtitles is not supported");
        int i13 = (this.zze - i12) - i11;
        try {
            this.zzg.zza(this.zzf, i13, i11, zzaks.zza(), new zzdn() { // from class: com.google.android.gms.internal.ads.zzakv
                @Override // com.google.android.gms.internal.ads.zzdn
                public final void zza(Object obj) {
                    zzakw.zza(zzakw.this, j10, i10, (zzakl) obj);
                }
            });
        } catch (RuntimeException e10) {
            if (this.zzi) {
                zzea.zzg("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e10);
            } else {
                throw e10;
            }
        }
        int i14 = i13 + i11;
        this.zzd = i14;
        if (i14 == this.zze) {
            this.zzd = 0;
            this.zze = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final /* synthetic */ void zzl(long j10) {
    }
}
