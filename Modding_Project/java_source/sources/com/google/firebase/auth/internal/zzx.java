package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.AdditionalUserInfo;
import java.util.Map;
import v7.h1;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultAdditionalUserInfoCreator")
/* loaded from: classes5.dex */
public final class zzx implements AdditionalUserInfo {
    public static final Parcelable.Creator<zzx> CREATOR = new h1();
    @SafeParcelable.Field(getter = "getProviderId", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20528a;
    @SafeParcelable.Field(getter = "getRawUserInfo", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20529b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f20530c;
    @SafeParcelable.Field(getter = "isNewUser", id = 3)

    /* renamed from: d  reason: collision with root package name */
    private boolean f20531d;

    public zzx(boolean z10) {
        this.f20531d = z10;
        this.f20529b = null;
        this.f20528a = null;
        this.f20530c = null;
    }

    @Nullable
    public final String a() {
        return this.f20528a;
    }

    public final boolean b() {
        return this.f20531d;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, a(), false);
        SafeParcelWriter.writeString(parcel, 2, this.f20529b, false);
        SafeParcelWriter.writeBoolean(parcel, 3, b());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzx(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) boolean z10) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        this.f20528a = str;
        this.f20529b = str2;
        this.f20530c = d.d(str2);
        this.f20531d = z10;
    }
}
