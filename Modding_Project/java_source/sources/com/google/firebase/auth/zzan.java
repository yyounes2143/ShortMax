package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzah;
import com.google.android.gms.internal.p003firebaseauthapi.zzak;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "PasskeyInfoCreator")
/* loaded from: classes5.dex */
public final class zzan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzan> CREATOR = new v();
    @SafeParcelable.Field(getter = "getCredentialId", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20592a;
    @SafeParcelable.Field(getter = "getName", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20593b;
    @SafeParcelable.Field(getter = "getDisplayName", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final String f20594c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzan(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3) {
        this.f20592a = str;
        this.f20593b = str2;
        this.f20594c = str3;
    }

    public static zzah<zzan> a(@Nullable JSONArray jSONArray) throws JSONException {
        if (jSONArray != null && jSONArray.length() != 0) {
            zzak zzf = zzah.zzf();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                zzf.zza(new zzan(jSONObject.getString("credentialId"), jSONObject.getString("name"), jSONObject.getString(CommonConstant.KEY_DISPLAY_NAME)));
            }
            return zzf.zza();
        }
        return zzah.zzg();
    }

    public static final zzan c(JSONObject jSONObject) throws JSONException {
        return new zzan(jSONObject.getString("credentialId"), jSONObject.getString("name"), jSONObject.getString(CommonConstant.KEY_DISPLAY_NAME));
    }

    public static final JSONObject g(zzan zzanVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("credentialId", zzanVar.f20592a);
        jSONObject.put("name", zzanVar.f20593b);
        jSONObject.put(CommonConstant.KEY_DISPLAY_NAME, zzanVar.f20594c);
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20592a, false);
        SafeParcelWriter.writeString(parcel, 2, this.f20593b, false);
        SafeParcelWriter.writeString(parcel, 3, this.f20594c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
