package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SafeParcelable.Class(creator = "AutoClickProtectionConfigurationParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes4.dex */
public final class zzbuy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbuy> CREATOR = new zzbuz();
    @SafeParcelable.Field(id = 2)
    public final boolean zza;
    @Nullable
    @SafeParcelable.Field(id = 3)
    public final List zzb;

    public zzbuy() {
        this(false, Collections.emptyList());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        boolean z10 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, z10);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzbuy(@SafeParcelable.Param(id = 2) boolean z10, @SafeParcelable.Param(id = 3) List list) {
        this.zza = z10;
        this.zzb = list;
    }
}
