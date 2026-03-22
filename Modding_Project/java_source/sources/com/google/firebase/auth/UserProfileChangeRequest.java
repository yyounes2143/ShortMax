package com.google.firebase.auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "UserProfileChangeRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public class UserProfileChangeRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<UserProfileChangeRequest> CREATOR = new c0();
    @Nullable
    @SafeParcelable.Field(getter = "getDisplayName", id = 2)

    /* renamed from: a  reason: collision with root package name */
    private String f20460a;
    @Nullable
    @SafeParcelable.Field(getter = "getPhotoUrl", id = 3)

    /* renamed from: b  reason: collision with root package name */
    private String f20461b;
    @SafeParcelable.Field(getter = "shouldRemoveDisplayName", id = 4)

    /* renamed from: c  reason: collision with root package name */
    private boolean f20462c;
    @SafeParcelable.Field(getter = "shouldRemovePhotoUri", id = 5)

    /* renamed from: d  reason: collision with root package name */
    private boolean f20463d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Uri f20464e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public UserProfileChangeRequest(@Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z10, @SafeParcelable.Param(id = 5) boolean z11) {
        Uri parse;
        this.f20460a = str;
        this.f20461b = str2;
        this.f20462c = z10;
        this.f20463d = z11;
        if (TextUtils.isEmpty(str2)) {
            parse = null;
        } else {
            parse = Uri.parse(str2);
        }
        this.f20464e = parse;
    }

    @Nullable
    public String getDisplayName() {
        return this.f20460a;
    }

    @Nullable
    public Uri m() {
        return this.f20464e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 3, this.f20461b, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f20462c);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f20463d);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zza() {
        return this.f20461b;
    }

    public final boolean zzb() {
        return this.f20462c;
    }

    public final boolean zzc() {
        return this.f20463d;
    }
}
