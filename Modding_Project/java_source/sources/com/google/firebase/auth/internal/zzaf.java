package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p003firebaseauthapi.zzahv;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.FirebaseUserMetadata;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.i;
import com.google.firebase.auth.o;
import com.google.firebase.auth.zzan;
import com.google.firebase.auth.zze;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@SafeParcelable.Class(creator = "DefaultFirebaseUserCreator")
/* loaded from: classes5.dex */
public final class zzaf extends FirebaseUser {
    public static final Parcelable.Creator<zzaf> CREATOR = new a();
    @SafeParcelable.Field(getter = "getCachedTokenState", id = 1)

    /* renamed from: a  reason: collision with root package name */
    private zzahv f20500a;
    @SafeParcelable.Field(getter = "getDefaultAuthUserInfo", id = 2)

    /* renamed from: b  reason: collision with root package name */
    private zzab f20501b;
    @SafeParcelable.Field(getter = "getFirebaseAppName", id = 3)

    /* renamed from: c  reason: collision with root package name */
    private String f20502c;
    @SafeParcelable.Field(getter = "getUserType", id = 4)

    /* renamed from: d  reason: collision with root package name */
    private String f20503d;
    @SafeParcelable.Field(getter = "getUserInfos", id = 5)

    /* renamed from: e  reason: collision with root package name */
    private List<zzab> f20504e;
    @SafeParcelable.Field(getter = "getProviders", id = 6)

    /* renamed from: f  reason: collision with root package name */
    private List<String> f20505f;
    @SafeParcelable.Field(getter = "getCurrentVersion", id = 7)

    /* renamed from: g  reason: collision with root package name */
    private String f20506g;
    @SafeParcelable.Field(getter = "isAnonymous", id = 8)

    /* renamed from: h  reason: collision with root package name */
    private Boolean f20507h;
    @SafeParcelable.Field(getter = "getMetadata", id = 9)

    /* renamed from: i  reason: collision with root package name */
    private zzah f20508i;
    @SafeParcelable.Field(getter = "isNewUser", id = 10)

    /* renamed from: j  reason: collision with root package name */
    private boolean f20509j;
    @SafeParcelable.Field(getter = "getDefaultOAuthCredential", id = 11)

    /* renamed from: k  reason: collision with root package name */
    private zze f20510k;
    @SafeParcelable.Field(getter = "getMultiFactorInfoList", id = 12)

    /* renamed from: l  reason: collision with root package name */
    private zzbj f20511l;
    @SafeParcelable.Field(getter = "getEnrolledPasskeys", id = 13)

    /* renamed from: m  reason: collision with root package name */
    private List<zzan> f20512m;

    public zzaf(com.google.firebase.f fVar, List<? extends o> list) {
        Preconditions.checkNotNull(fVar);
        this.f20502c = fVar.o();
        this.f20503d = "com.google.firebase.auth.internal.DefaultFirebaseUser";
        this.f20506g = "2";
        b0(list);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final boolean R() {
        com.google.firebase.auth.g a10;
        Boolean bool = this.f20507h;
        if (bool == null || bool.booleanValue()) {
            zzahv zzahvVar = this.f20500a;
            String str = "";
            if (zzahvVar != null && (a10 = e.a(zzahvVar.zzc())) != null) {
                str = a10.b();
            }
            boolean z10 = true;
            if (p().size() > 1 || (str != null && str.equals("custom"))) {
                z10 = false;
            }
            this.f20507h = Boolean.valueOf(z10);
        }
        return this.f20507h.booleanValue();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final com.google.firebase.f T() {
        return com.google.firebase.f.n(this.f20502c);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final synchronized FirebaseUser b0(List<? extends o> list) {
        try {
            Preconditions.checkNotNull(list);
            this.f20504e = new ArrayList(list.size());
            this.f20505f = new ArrayList(list.size());
            for (int i10 = 0; i10 < list.size(); i10++) {
                o oVar = list.get(i10);
                if (oVar.l().equals("firebase")) {
                    this.f20501b = (zzab) oVar;
                } else {
                    this.f20505f.add(oVar.l());
                }
                this.f20504e.add((zzab) oVar);
            }
            if (this.f20501b == null) {
                this.f20501b = this.f20504e.get(0);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final void c0(zzahv zzahvVar) {
        this.f20500a = (zzahv) Preconditions.checkNotNull(zzahvVar);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final /* synthetic */ FirebaseUser d0() {
        this.f20507h = Boolean.FALSE;
        return this;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final void e0(List<zzan> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f20512m = list;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final zzahv f0() {
        return this.f20500a;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final void g0(List<MultiFactorInfo> list) {
        this.f20511l = zzbj.a(list);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final List<zzan> h0() {
        return this.f20512m;
    }

    public final zzaf i0(String str) {
        this.f20506g = str;
        return this;
    }

    public final void j0(zzah zzahVar) {
        this.f20508i = zzahVar;
    }

    @Override // com.google.firebase.auth.o
    @NonNull
    public final String l() {
        return this.f20501b.l();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final FirebaseUserMetadata m() {
        return this.f20508i;
    }

    public final void m0(@Nullable zze zzeVar) {
        this.f20510k = zzeVar;
    }

    @Nullable
    public final zze n0() {
        return this.f20510k;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    public final /* synthetic */ i o() {
        return new v7.h(this);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final List<? extends o> p() {
        return this.f20504e;
    }

    public final List<MultiFactorInfo> t0() {
        zzbj zzbjVar = this.f20511l;
        if (zzbjVar != null) {
            return zzbjVar.zza();
        }
        return new ArrayList();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @Nullable
    public final String w() {
        Map map;
        zzahv zzahvVar = this.f20500a;
        if (zzahvVar == null || zzahvVar.zzc() == null || (map = (Map) e.a(this.f20500a.zzc()).a().get("firebase")) == null) {
            return null;
        }
        return (String) map.get("tenant");
    }

    public final List<zzab> w0() {
        return this.f20504e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, f0(), i10, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f20501b, i10, false);
        SafeParcelWriter.writeString(parcel, 3, this.f20502c, false);
        SafeParcelWriter.writeString(parcel, 4, this.f20503d, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.f20504e, false);
        SafeParcelWriter.writeStringList(parcel, 6, zzg(), false);
        SafeParcelWriter.writeString(parcel, 7, this.f20506g, false);
        SafeParcelWriter.writeBooleanObject(parcel, 8, Boolean.valueOf(R()), false);
        SafeParcelWriter.writeParcelable(parcel, 9, m(), i10, false);
        SafeParcelWriter.writeBoolean(parcel, 10, this.f20509j);
        SafeParcelWriter.writeParcelable(parcel, 11, this.f20510k, i10, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.f20511l, i10, false);
        SafeParcelWriter.writeTypedList(parcel, 13, h0(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final String x() {
        return this.f20501b.m();
    }

    public final boolean z0() {
        return this.f20509j;
    }

    public final void zza(boolean z10) {
        this.f20509j = z10;
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final String zzd() {
        return f0().zzc();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @NonNull
    public final String zze() {
        return this.f20500a.zzf();
    }

    @Override // com.google.firebase.auth.FirebaseUser
    @Nullable
    public final List<String> zzg() {
        return this.f20505f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzaf(@SafeParcelable.Param(id = 1) zzahv zzahvVar, @SafeParcelable.Param(id = 2) zzab zzabVar, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) List<zzab> list, @SafeParcelable.Param(id = 6) List<String> list2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Boolean bool, @SafeParcelable.Param(id = 9) zzah zzahVar, @SafeParcelable.Param(id = 10) boolean z10, @SafeParcelable.Param(id = 11) zze zzeVar, @SafeParcelable.Param(id = 12) zzbj zzbjVar, @SafeParcelable.Param(id = 13) List<zzan> list3) {
        this.f20500a = zzahvVar;
        this.f20501b = zzabVar;
        this.f20502c = str;
        this.f20503d = str2;
        this.f20504e = list;
        this.f20505f = list2;
        this.f20506g = str3;
        this.f20507h = bool;
        this.f20508i = zzahVar;
        this.f20509j = z10;
        this.f20510k = zzeVar;
        this.f20511l = zzbjVar;
        this.f20512m = list3;
    }
}
