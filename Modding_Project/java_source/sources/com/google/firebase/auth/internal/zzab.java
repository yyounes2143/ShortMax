package com.google.firebase.auth.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzaao;
import com.google.android.gms.internal.p003firebaseauthapi.zzahk;
import com.google.android.gms.internal.p003firebaseauthapi.zzaib;
import com.google.firebase.auth.o;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultAuthUserInfoCreator")
/* loaded from: classes5.dex */
public final class zzab extends AbstractSafeParcelable implements o {
    public static final Parcelable.Creator<zzab> CREATOR = new v7.d();
    @NonNull
    @SafeParcelable.Field(getter = "getUid", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private String f20491a;
    @NonNull
    @SafeParcelable.Field(getter = "getProviderId", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private String f20492b;
    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private String f20493c;
    @Nullable
    @SafeParcelable.Field(getter = "getPhotoUrlString", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private String f20494d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Uri f20495e;
    @Nullable
    @SafeParcelable.Field(getter = "getEmail", id = 5)

    /* renamed from: f  reason: collision with root package name */
    private String f20496f;
    @Nullable
    @SafeParcelable.Field(getter = "getPhoneNumber", id = 6)

    /* renamed from: g  reason: collision with root package name */
    private String f20497g;
    @SafeParcelable.Field(getter = "isEmailVerified", id = 7)

    /* renamed from: h  reason: collision with root package name */
    private boolean f20498h;
    @Nullable
    @SafeParcelable.Field(getter = "getRawUserInfo", id = 8)

    /* renamed from: i  reason: collision with root package name */
    private String f20499i;

    public zzab(zzaib zzaibVar) {
        Preconditions.checkNotNull(zzaibVar);
        this.f20491a = zzaibVar.zzd();
        this.f20492b = Preconditions.checkNotEmpty(zzaibVar.zzf());
        this.f20493c = zzaibVar.zzb();
        Uri zza = zzaibVar.zza();
        if (zza != null) {
            this.f20494d = zza.toString();
            this.f20495e = zza;
        }
        this.f20496f = zzaibVar.zzc();
        this.f20497g = zzaibVar.zze();
        this.f20498h = false;
        this.f20499i = zzaibVar.zzg();
    }

    @Nullable
    public static zzab p(@NonNull String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new zzab(jSONObject.optString(VungleConstants.KEY_USER_ID), jSONObject.optString("providerId"), jSONObject.optString("email"), jSONObject.optString(HintConstants.AUTOFILL_HINT_PHONE_NUMBER), jSONObject.optString(CommonConstant.KEY_DISPLAY_NAME), jSONObject.optString("photoUrl"), jSONObject.optBoolean("isEmailVerified"), jSONObject.optString("rawUserInfo"));
        } catch (JSONException e10) {
            Log.d("DefaultAuthUserInfo", "Failed to unpack UserInfo from JSON");
            throw new zzaao(e10);
        }
    }

    @Nullable
    public final String getDisplayName() {
        return this.f20493c;
    }

    @Nullable
    public final String getEmail() {
        return this.f20496f;
    }

    @Nullable
    public final String getPhoneNumber() {
        return this.f20497g;
    }

    @Override // com.google.firebase.auth.o
    @NonNull
    public final String l() {
        return this.f20492b;
    }

    @NonNull
    public final String m() {
        return this.f20491a;
    }

    public final boolean o() {
        return this.f20498h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, m(), false);
        SafeParcelWriter.writeString(parcel, 2, l(), false);
        SafeParcelWriter.writeString(parcel, 3, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 4, this.f20494d, false);
        SafeParcelWriter.writeString(parcel, 5, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 6, getPhoneNumber(), false);
        SafeParcelWriter.writeBoolean(parcel, 7, o());
        SafeParcelWriter.writeString(parcel, 8, this.f20499i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zza() {
        return this.f20499i;
    }

    @Nullable
    public final String zzb() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt(VungleConstants.KEY_USER_ID, this.f20491a);
            jSONObject.putOpt("providerId", this.f20492b);
            jSONObject.putOpt(CommonConstant.KEY_DISPLAY_NAME, this.f20493c);
            jSONObject.putOpt("photoUrl", this.f20494d);
            jSONObject.putOpt("email", this.f20496f);
            jSONObject.putOpt(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, this.f20497g);
            jSONObject.putOpt("isEmailVerified", Boolean.valueOf(this.f20498h));
            jSONObject.putOpt("rawUserInfo", this.f20499i);
            return jSONObject.toString();
        } catch (JSONException e10) {
            Log.d("DefaultAuthUserInfo", "Failed to jsonify this object");
            throw new zzaao(e10);
        }
    }

    public zzab(zzahk zzahkVar, String str) {
        Preconditions.checkNotNull(zzahkVar);
        Preconditions.checkNotEmpty(str);
        this.f20491a = Preconditions.checkNotEmpty(zzahkVar.zzi());
        this.f20492b = str;
        this.f20496f = zzahkVar.zzh();
        this.f20493c = zzahkVar.zzg();
        Uri zzc = zzahkVar.zzc();
        if (zzc != null) {
            this.f20494d = zzc.toString();
            this.f20495e = zzc;
        }
        this.f20498h = zzahkVar.zzm();
        this.f20499i = null;
        this.f20497g = zzahkVar.zzj();
    }

    @SafeParcelable.Constructor
    public zzab(@NonNull @SafeParcelable.Param(id = 1) String str, @NonNull @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 5) String str3, @Nullable @SafeParcelable.Param(id = 4) String str4, @Nullable @SafeParcelable.Param(id = 3) String str5, @Nullable @SafeParcelable.Param(id = 6) String str6, @SafeParcelable.Param(id = 7) boolean z10, @Nullable @SafeParcelable.Param(id = 8) String str7) {
        this.f20491a = str;
        this.f20492b = str2;
        this.f20496f = str3;
        this.f20497g = str4;
        this.f20493c = str5;
        this.f20494d = str6;
        if (!TextUtils.isEmpty(str6)) {
            this.f20495e = Uri.parse(this.f20494d);
        }
        this.f20498h = z10;
        this.f20499i = str7;
    }
}
