package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@SafeParcelable.Class(creator = "MediationConfigurationParcelCreator")
/* loaded from: classes4.dex */
public final class zzbmn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbmn> CREATOR = new zzbmo();
    @SafeParcelable.Field(id = 1)
    public final String zza;
    @SafeParcelable.Field(id = 2)
    public final Bundle zzb;

    @SafeParcelable.Constructor
    public zzbmn(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
