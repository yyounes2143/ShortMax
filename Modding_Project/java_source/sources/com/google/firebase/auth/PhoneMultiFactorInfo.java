package com.google.firebase.auth;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzaao;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "PhoneMultiFactorInfoCreator")
/* loaded from: classes5.dex */
public class PhoneMultiFactorInfo extends MultiFactorInfo {
    @NonNull
    public static final Parcelable.Creator<PhoneMultiFactorInfo> CREATOR = new y();
    @SafeParcelable.Field(getter = "getUid", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20449a;
    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20450b;
    @SafeParcelable.Field(getter = "getEnrollmentTimestamp", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final long f20451c;
    @SafeParcelable.Field(getter = "getPhoneNumber", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private final String f20452d;

    @SafeParcelable.Constructor
    public PhoneMultiFactorInfo(@NonNull @SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) long j10, @NonNull @SafeParcelable.Param(id = 4) String str3) {
        this.f20449a = Preconditions.checkNotEmpty(str);
        this.f20450b = str2;
        this.f20451c = j10;
        this.f20452d = Preconditions.checkNotEmpty(str3);
    }

    @NonNull
    public static PhoneMultiFactorInfo w(@NonNull JSONObject jSONObject) {
        if (jSONObject.has("enrollmentTimestamp")) {
            return new PhoneMultiFactorInfo(jSONObject.optString(CommonConstant.KEY_UID), jSONObject.optString(CommonConstant.KEY_DISPLAY_NAME), jSONObject.optLong("enrollmentTimestamp"), jSONObject.optString(HintConstants.AUTOFILL_HINT_PHONE_NUMBER));
        }
        throw new IllegalArgumentException("An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a PhoneMultiFactorInfo instance.");
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @Nullable
    public String getDisplayName() {
        return this.f20450b;
    }

    @NonNull
    public String getPhoneNumber() {
        return this.f20452d;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    public long m() {
        return this.f20451c;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @NonNull
    public String o() {
        return HintConstants.AUTOFILL_HINT_PHONE;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @NonNull
    public String p() {
        return this.f20449a;
    }

    @Override // com.google.firebase.auth.MultiFactorInfo
    @Nullable
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("factorIdKey", HintConstants.AUTOFILL_HINT_PHONE);
            jSONObject.putOpt(CommonConstant.KEY_UID, this.f20449a);
            jSONObject.putOpt(CommonConstant.KEY_DISPLAY_NAME, this.f20450b);
            jSONObject.putOpt("enrollmentTimestamp", Long.valueOf(this.f20451c));
            jSONObject.putOpt(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, this.f20452d);
            return jSONObject;
        } catch (JSONException e10) {
            Log.d("PhoneMultiFactorInfo", "Failed to jsonify this object");
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
        SafeParcelWriter.writeString(parcel, 4, getPhoneNumber(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
