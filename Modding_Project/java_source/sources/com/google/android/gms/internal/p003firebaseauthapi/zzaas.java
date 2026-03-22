package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.zze;
import java.util.List;
import v7.u;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaas  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaas {
    @SafeParcelable.Field(getter = "getMfaPendingCredential", id = 1)
    private String zza;
    @SafeParcelable.Field(getter = "getMfaInfoList", id = 2)
    private List<zzahy> zzb;
    @Nullable
    @SafeParcelable.Field(getter = "getDefaultOAuthCredential", id = 3)
    private zze zzc;

    @SafeParcelable.Constructor
    public zzaas(String str, List<zzahy> list, @Nullable zze zzeVar) {
        this.zza = str;
        this.zzb = list;
        this.zzc = zzeVar;
    }

    @Nullable
    public final zze zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zza;
    }

    public final List<MultiFactorInfo> zzc() {
        return u.b(this.zzb);
    }
}
