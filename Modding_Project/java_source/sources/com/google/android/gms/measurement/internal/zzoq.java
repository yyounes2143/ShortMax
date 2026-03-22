package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
@SafeParcelable.Class(creator = "UploadBatchesParcelCreator")
/* loaded from: classes5.dex */
public final class zzoq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzoq> CREATOR = new zzor();
    @SafeParcelable.Field(id = 1)
    public final List zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzoq(@SafeParcelable.Param(id = 1) List list) {
        this.zza = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        List list = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, list, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
