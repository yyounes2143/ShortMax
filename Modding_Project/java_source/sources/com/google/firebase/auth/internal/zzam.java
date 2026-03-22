package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.MultiFactorSession;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultMultiFactorSessionCreator")
/* loaded from: classes5.dex */
public final class zzam extends MultiFactorSession {
    public static final Parcelable.Creator<zzam> CREATOR = new b();
    @Nullable
    @SafeParcelable.Field(getter = "getIdToken", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private String f20521a;
    @Nullable
    @SafeParcelable.Field(getter = "getPendingCredential", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private String f20522b;
    @Nullable
    @SafeParcelable.Field(getter = "getPhoneMultiFactorInfoList", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private List<PhoneMultiFactorInfo> f20523c;
    @Nullable
    @SafeParcelable.Field(getter = "getTotpMultiFactorInfoList", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private List<TotpMultiFactorInfo> f20524d;
    @Nullable
    @SafeParcelable.Field(getter = "getFirebaseUser", id = 5)

    /* renamed from: e  reason: collision with root package name */
    private zzaf f20525e;

    private zzam() {
    }

    public static zzam a(List<MultiFactorInfo> list, String str) {
        Preconditions.checkNotNull(list);
        Preconditions.checkNotEmpty(str);
        zzam zzamVar = new zzam();
        zzamVar.f20523c = new ArrayList();
        zzamVar.f20524d = new ArrayList();
        for (MultiFactorInfo multiFactorInfo : list) {
            if (multiFactorInfo instanceof PhoneMultiFactorInfo) {
                zzamVar.f20523c.add((PhoneMultiFactorInfo) multiFactorInfo);
            } else if (multiFactorInfo instanceof TotpMultiFactorInfo) {
                zzamVar.f20524d.add((TotpMultiFactorInfo) multiFactorInfo);
            } else {
                String o10 = multiFactorInfo.o();
                throw new IllegalArgumentException("MultiFactorInfo must be either PhoneMultiFactorInfo or TotpMultiFactorInfo. The factorId of this MultiFactorInfo: " + o10);
            }
        }
        zzamVar.f20522b = str;
        return zzamVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f20521a, false);
        SafeParcelWriter.writeString(parcel, 2, this.f20522b, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.f20523c, false);
        SafeParcelWriter.writeTypedList(parcel, 4, this.f20524d, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.f20525e, i10, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final String zzb() {
        return this.f20521a;
    }

    @Nullable
    public final String zzc() {
        return this.f20522b;
    }

    public final boolean zzd() {
        if (this.f20521a != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzam(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) List<PhoneMultiFactorInfo> list, @SafeParcelable.Param(id = 4) List<TotpMultiFactorInfo> list2, @SafeParcelable.Param(id = 5) zzaf zzafVar) {
        this.f20521a = str;
        this.f20522b = str2;
        this.f20523c = list;
        this.f20524d = list2;
        this.f20525e = zzafVar;
    }
}
