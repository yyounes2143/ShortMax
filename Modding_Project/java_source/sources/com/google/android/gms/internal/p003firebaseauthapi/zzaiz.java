package com.google.android.gms.internal.p003firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "TotpInfoCreator")
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaiz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaiz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiz> CREATOR = new zzaiy();

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        SafeParcelWriter.finishObjectHeader(parcel, SafeParcelWriter.beginObjectHeader(parcel));
    }
}
