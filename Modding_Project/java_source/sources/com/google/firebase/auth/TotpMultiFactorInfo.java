package com.google.firebase.auth;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzaao;
import com.google.android.gms.internal.p003firebaseauthapi.zzaiz;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "TotpMultiFactorInfoCreator")
/* loaded from: classes5.dex */
public class TotpMultiFactorInfo extends MultiFactorInfo {
    @NonNull
    public static final Parcelable.Creator<TotpMultiFactorInfo> CREATOR = new a0();
    @SafeParcelable.Field(getter = "getUid", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20454a;
    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20455b;
    @SafeParcelable.Field(getter = "getEnrollmentTimestamp", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final long f20456c;
    @SafeParcelable.Field(getter = "getTotpInfo", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private final zzaiz f20457d;

    @SafeParcelable.Constructor
    public TotpMultiFactorInfo(@SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) long j10, @SafeParcelable.Param(id = 4) zzaiz zzaizVar) {
        this.f20454a = Preconditions.checkNotEmpty(str);
        this.f20455b = str2;
        this.f20456c = j10;
        this.f20457d = (zzaiz) Preconditions.checkNotNull(zzaizVar, "totpInfo cannot be null.");
    }

    @NonNull
    public static TotpMultiFactorInfo w(@NonNull JSONObject jSONObject) {
        if (jSONObject.has("enrollmentTimestamp")) {
            long optLong = jSONObject.optLong("enrollmentTimestamp");
            if (jSONObject.opt("totpInfo") != null) {
                return new TotpMultiFactorInfo(jSONObject.optString(CommonConstant.KEY_UID), jSONObject.optString(CommonConstant.KEY_DISPLAY_NAME), optLong, new zzaiz());
            }
            throw new IllegalArgumentException("A totpInfo is required to build a TotpMultiFactorInfo instance.");
        }
        throw new IllegalArgumentException("An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a TotpMultiFactorInfo instance.");
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @Nullable
    public String getDisplayName() {
        return this.f20455b;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    public long m() {
        return this.f20456c;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @NonNull
    public String o() {
        return "totp";
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @NonNull
    public String p() {
        return this.f20454a;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @Nullable
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("factorIdKey", "totp");
            jSONObject.putOpt(CommonConstant.KEY_UID, this.f20454a);
            jSONObject.putOpt(CommonConstant.KEY_DISPLAY_NAME, this.f20455b);
            jSONObject.putOpt("enrollmentTimestamp", Long.valueOf(this.f20456c));
            jSONObject.putOpt("totpInfo", this.f20457d);
            return jSONObject;
        } catch (JSONException e10) {
            Log.d("TotpMultiFactorInfo", "Failed to jsonify this object");
            throw new zzaao(e10);
        }
    }

    @Override // android.os.Parcelable
    @SuppressLint({"FirebaseUnknownNullness"})
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, p(), false);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeLong(parcel, 3, m());
        SafeParcelWriter.writeParcelable(parcel, 4, this.f20457d, i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
