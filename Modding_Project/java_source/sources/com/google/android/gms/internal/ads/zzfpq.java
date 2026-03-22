package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SafeParcelable.Class(creator = "GassResponseParcelCreator")
/* loaded from: classes4.dex */
public final class zzfpq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfpq> CREATOR = new zzfpr();
    @SafeParcelable.VersionField(id = 1)
    public final int zza;
    @SafeParcelable.Field(getter = "getAfmaSignalsAsBytes", id = 2, type = "byte[]")
    private zzatq zzb = null;
    private byte[] zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzfpq(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.zza = i10;
        this.zzc = bArr;
        zzb();
    }

    private final void zzb() {
        zzatq zzatqVar = this.zzb;
        if (zzatqVar != null || this.zzc == null) {
            if (zzatqVar != null && this.zzc == null) {
                return;
            }
            if (zzatqVar != null && this.zzc != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (zzatqVar == null && this.zzc == null) {
                throw new IllegalStateException("Invalid internal representation - empty");
            }
            throw new IllegalStateException("Impossible");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i11);
        byte[] bArr = this.zzc;
        if (bArr == null) {
            bArr = this.zzb.zzaV();
        }
        SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzatq zza() {
        if (this.zzb == null) {
            try {
                this.zzb = zzatq.zzd(this.zzc, zzgyr.zza());
                this.zzc = null;
            } catch (zzgzw | NullPointerException e10) {
                throw new IllegalStateException(e10);
            }
        }
        zzb();
        return this.zzb;
    }
}
