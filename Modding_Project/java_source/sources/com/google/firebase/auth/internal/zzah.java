package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.FirebaseUserMetadata;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultFirebaseUserMetadataCreator")
/* loaded from: classes5.dex */
public final class zzah implements FirebaseUserMetadata {
    public static final Parcelable.Creator<zzah> CREATOR = new v7.g();
    @SafeParcelable.Field(getter = "getLastSignInTimestamp", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private long f20513a;
    @SafeParcelable.Field(getter = "getCreationTimestamp", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private long f20514b;

    @SafeParcelable.Constructor
    public zzah(@SafeParcelable.Param(id = 1) long j10, @SafeParcelable.Param(id = 2) long j11) {
        this.f20513a = j10;
        this.f20514b = j11;
    }

    public static zzah c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new zzah(jSONObject.getLong("lastSignInTimestamp"), jSONObject.getLong("creationTimestamp"));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final long a() {
        return this.f20514b;
    }

    public final long b() {
        return this.f20513a;
    }

    public final JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("lastSignInTimestamp", this.f20513a);
            jSONObject.put("creationTimestamp", this.f20514b);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, b());
        SafeParcelWriter.writeLong(parcel, 2, a());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
