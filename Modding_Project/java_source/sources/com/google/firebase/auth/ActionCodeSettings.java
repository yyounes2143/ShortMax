package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "ActionCodeSettingsCreator")
/* loaded from: classes5.dex */
public class ActionCodeSettings extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ActionCodeSettings> CREATOR = new p();
    @SafeParcelable.Field(getter = "getUrl", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final String f20391a;
    @Nullable
    @SafeParcelable.Field(getter = "getIOSBundle", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final String f20392b;
    @SafeParcelable.Field(getter = "getIOSAppStoreId", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final String f20393c;
    @SafeParcelable.Field(getter = "getAndroidPackageName", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private final String f20394d;
    @SafeParcelable.Field(getter = "getAndroidInstallApp", id = 5)

    /* renamed from: e  reason: collision with root package name */
    private final boolean f20395e;
    @Nullable
    @SafeParcelable.Field(getter = "getAndroidMinimumVersion", id = 6)

    /* renamed from: f  reason: collision with root package name */
    private final String f20396f;
    @SafeParcelable.Field(getter = "canHandleCodeInApp", id = 7)

    /* renamed from: g  reason: collision with root package name */
    private final boolean f20397g;
    @SafeParcelable.Field(getter = "getLocaleHeader", id = 8)

    /* renamed from: h  reason: collision with root package name */
    private String f20398h;
    @SafeParcelable.Field(getter = "getRequestType", id = 9)

    /* renamed from: i  reason: collision with root package name */
    private int f20399i;
    @SafeParcelable.Field(getter = "getDynamicLinkDomain", id = 10)

    /* renamed from: j  reason: collision with root package name */
    private String f20400j;
    @SafeParcelable.Field(getter = "getLinkDomain", id = 11)

    /* renamed from: k  reason: collision with root package name */
    private final String f20401k;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ActionCodeSettings(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3, @SafeParcelable.Param(id = 4) String str4, @SafeParcelable.Param(id = 5) boolean z10, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) boolean z11, @SafeParcelable.Param(id = 8) String str6, @SafeParcelable.Param(id = 9) int i10, @SafeParcelable.Param(id = 10) String str7, @SafeParcelable.Param(id = 11) String str8) {
        this.f20391a = str;
        this.f20392b = str2;
        this.f20393c = str3;
        this.f20394d = str4;
        this.f20395e = z10;
        this.f20396f = str5;
        this.f20397g = z11;
        this.f20398h = str6;
        this.f20399i = i10;
        this.f20400j = str7;
        this.f20401k = str8;
    }

    @NonNull
    public String R() {
        return this.f20401k;
    }

    @NonNull
    public String T() {
        return this.f20391a;
    }

    public boolean m() {
        return this.f20397g;
    }

    public boolean o() {
        return this.f20395e;
    }

    @Nullable
    public String p() {
        return this.f20396f;
    }

    @Nullable
    public String w() {
        return this.f20394d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, T(), false);
        SafeParcelWriter.writeString(parcel, 2, x(), false);
        SafeParcelWriter.writeString(parcel, 3, this.f20393c, false);
        SafeParcelWriter.writeString(parcel, 4, w(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, o());
        SafeParcelWriter.writeString(parcel, 6, p(), false);
        SafeParcelWriter.writeBoolean(parcel, 7, m());
        SafeParcelWriter.writeString(parcel, 8, this.f20398h, false);
        SafeParcelWriter.writeInt(parcel, 9, this.f20399i);
        SafeParcelWriter.writeString(parcel, 10, this.f20400j, false);
        SafeParcelWriter.writeString(parcel, 11, R(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public String x() {
        return this.f20392b;
    }

    public final int zza() {
        return this.f20399i;
    }

    @NonNull
    @Deprecated
    public final String zzc() {
        return this.f20400j;
    }

    @Nullable
    public final String zzd() {
        return this.f20393c;
    }

    @NonNull
    public final String zze() {
        return this.f20398h;
    }

    public final void zza(int i10) {
        this.f20399i = i10;
    }
}
