package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        boolean z10;
        PendingIntent pendingIntent = (PendingIntent) parcel.readParcelable(ReviewInfo.class.getClassLoader());
        if (parcel.readInt() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new zza(pendingIntent, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new ReviewInfo[i10];
    }
}
