package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SafeParcelable.Class(creator = "DecagonRequestParcelCreator")
/* loaded from: classes4.dex */
public final class zzbva extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbva> CREATOR = new zzbvb();
    @SafeParcelable.Field(id = 1)
    public final String zza;

    @SafeParcelable.Constructor
    public zzbva(@SafeParcelable.Param(id = 1) String str) {
        this.zza = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
