package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfyu extends zzfyj {
    Object[] zzd;
    private int zze;

    public zzfyu() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzfyj, com.google.android.gms.internal.ads.zzfyk
    public final /* bridge */ /* synthetic */ zzfyk zzb(Object obj) {
        zzf(obj);
        return this;
    }

    public final zzfyu zzf(Object obj) {
        obj.getClass();
        if (this.zzd != null) {
            int zzh = zzfyv.zzh(this.zzb);
            Object[] objArr = this.zzd;
            if (zzh <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int zza = zzfyi.zza(hashCode);
                while (true) {
                    int i10 = zza & length;
                    Object[] objArr2 = this.zzd;
                    Object obj2 = objArr2[i10];
                    if (obj2 == null) {
                        objArr2[i10] = obj;
                        this.zze += hashCode;
                        super.zza(obj);
                        break;
                    } else if (obj2.equals(obj)) {
                        break;
                    } else {
                        zza = i10 + 1;
                    }
                }
                return this;
            }
        }
        this.zzd = null;
        super.zza(obj);
        return this;
    }

    public final zzfyu zzg(Object... objArr) {
        if (this.zzd != null) {
            for (int i10 = 0; i10 < 2; i10++) {
                zzf(objArr[i10]);
            }
        } else {
            zzd(objArr, 2);
        }
        return this;
    }

    public final zzfyu zzh(Iterable iterable) {
        iterable.getClass();
        if (this.zzd != null) {
            for (Object obj : iterable) {
                zzf(obj);
            }
        } else {
            super.zzc(iterable);
        }
        return this;
    }

    public final zzfyv zzi() {
        zzfyv zzv;
        boolean zzw;
        int i10 = this.zzb;
        if (i10 != 0) {
            if (i10 != 1) {
                if (this.zzd == null || zzfyv.zzh(i10) != this.zzd.length) {
                    zzv = zzfyv.zzv(this.zzb, this.zza);
                    this.zzb = zzv.size();
                } else {
                    int i11 = this.zzb;
                    Object[] objArr = this.zza;
                    zzw = zzfyv.zzw(i11, objArr.length);
                    if (zzw) {
                        objArr = Arrays.copyOf(objArr, i11);
                    }
                    int i12 = this.zze;
                    Object[] objArr2 = this.zzd;
                    zzv = new zzgai(objArr, i12, objArr2, objArr2.length - 1, this.zzb);
                }
                this.zzc = true;
                this.zzd = null;
                return zzv;
            }
            Object obj = this.zza[0];
            Objects.requireNonNull(obj);
            return new zzgat(obj);
        }
        return zzgai.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfyu(int i10, boolean z10) {
        super(i10);
        this.zzd = new Object[zzfyv.zzh(i10)];
    }
}
