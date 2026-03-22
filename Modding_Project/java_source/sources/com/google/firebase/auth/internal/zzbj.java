package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "MultiFactorInfoListCreator")
/* loaded from: classes5.dex */
public final class zzbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbj> CREATOR = new f();
    @SafeParcelable.Field(getter = "getPhoneMultiFactorInfoList", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final List<PhoneMultiFactorInfo> f20526a;
    @SafeParcelable.Field(getter = "getTotpMultiFactorInfoList", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final List<TotpMultiFactorInfo> f20527b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzbj(@SafeParcelable.Param(id = 1) List<PhoneMultiFactorInfo> list, @SafeParcelable.Param(id = 2) List<TotpMultiFactorInfo> list2) {
        this.f20526a = list == null ? new ArrayList<>() : list;
        this.f20527b = list2 == null ? new ArrayList<>() : list2;
    }

    public static zzbj a(List<MultiFactorInfo> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (MultiFactorInfo multiFactorInfo : list) {
                if (multiFactorInfo instanceof PhoneMultiFactorInfo) {
                    arrayList.add((PhoneMultiFactorInfo) multiFactorInfo);
                } else if (multiFactorInfo instanceof TotpMultiFactorInfo) {
                    arrayList2.add((TotpMultiFactorInfo) multiFactorInfo);
                }
            }
            return new zzbj(arrayList, arrayList2);
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f20526a, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f20527b, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final List<MultiFactorInfo> zza() {
        ArrayList arrayList = new ArrayList();
        for (PhoneMultiFactorInfo phoneMultiFactorInfo : this.f20526a) {
            arrayList.add(phoneMultiFactorInfo);
        }
        for (TotpMultiFactorInfo totpMultiFactorInfo : this.f20527b) {
            arrayList.add(totpMultiFactorInfo);
        }
        return arrayList;
    }
}
