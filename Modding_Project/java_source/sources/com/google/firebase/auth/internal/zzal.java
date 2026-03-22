package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzaas;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.MultiFactorResolver;
import com.google.firebase.auth.MultiFactorSession;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import com.google.firebase.auth.zze;
import java.util.ArrayList;
import java.util.List;
import v7.i;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultMultiFactorResolverCreator")
/* loaded from: classes5.dex */
public final class zzal extends MultiFactorResolver {
    public static final Parcelable.Creator<zzal> CREATOR = new i();
    @SafeParcelable.Field(getter = "getPhoneMultiFactorInfoList", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private final List<PhoneMultiFactorInfo> f20515a;
    @SafeParcelable.Field(getter = "getSession", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private final zzam f20516b;
    @SafeParcelable.Field(getter = "getFirebaseAppName", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private final String f20517c;
    @SafeParcelable.Field(getter = "getDefaultOAuthCredential", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private final zze f20518d;
    @SafeParcelable.Field(getter = "getReauthUser", id = 5)

    /* renamed from: e  reason: collision with root package name */
    private final zzaf f20519e;
    @SafeParcelable.Field(getter = "getTotpMultiFactorInfoList", id = 6)

    /* renamed from: f  reason: collision with root package name */
    private final List<TotpMultiFactorInfo> f20520f;

    @SafeParcelable.Constructor
    public zzal(@SafeParcelable.Param(id = 1) List<PhoneMultiFactorInfo> list, @SafeParcelable.Param(id = 2) zzam zzamVar, @SafeParcelable.Param(id = 3) String str, @Nullable @SafeParcelable.Param(id = 4) zze zzeVar, @Nullable @SafeParcelable.Param(id = 5) zzaf zzafVar, @SafeParcelable.Param(id = 6) List<TotpMultiFactorInfo> list2) {
        this.f20515a = (List) Preconditions.checkNotNull(list);
        this.f20516b = (zzam) Preconditions.checkNotNull(zzamVar);
        this.f20517c = Preconditions.checkNotEmpty(str);
        this.f20518d = zzeVar;
        this.f20519e = zzafVar;
        this.f20520f = (List) Preconditions.checkNotNull(list2);
    }

    public static zzal o(zzaas zzaasVar, FirebaseAuth firebaseAuth, @Nullable FirebaseUser firebaseUser) {
        List<MultiFactorInfo> zzc = zzaasVar.zzc();
        ArrayList arrayList = new ArrayList();
        for (MultiFactorInfo multiFactorInfo : zzc) {
            if (multiFactorInfo instanceof PhoneMultiFactorInfo) {
                arrayList.add((PhoneMultiFactorInfo) multiFactorInfo);
            }
        }
        List<MultiFactorInfo> zzc2 = zzaasVar.zzc();
        ArrayList arrayList2 = new ArrayList();
        for (MultiFactorInfo multiFactorInfo2 : zzc2) {
            if (multiFactorInfo2 instanceof TotpMultiFactorInfo) {
                arrayList2.add((TotpMultiFactorInfo) multiFactorInfo2);
            }
        }
        return new zzal(arrayList, zzam.a(zzaasVar.zzc(), zzaasVar.zzb()), firebaseAuth.b().o(), zzaasVar.zza(), (zzaf) firebaseUser, arrayList2);
    }

    @Override // com.google.firebase.auth.MultiFactorResolver
    public final MultiFactorSession m() {
        return this.f20516b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f20515a, false);
        SafeParcelWriter.writeParcelable(parcel, 2, m(), i10, false);
        SafeParcelWriter.writeString(parcel, 3, this.f20517c, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f20518d, i10, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.f20519e, i10, false);
        SafeParcelWriter.writeTypedList(parcel, 6, this.f20520f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
