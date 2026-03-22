package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.PhoneMultiFactorInfo;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaaq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaaq {
    private PhoneMultiFactorInfo zza;
    private final String zzb;
    @Nullable
    private final String zzc;
    private final long zzd;
    private final boolean zze;
    @Nullable
    private final String zzf;
    @Nullable
    private final String zzg;
    @Nullable
    private final String zzh;
    private final boolean zzi;

    public zzaaq(PhoneMultiFactorInfo phoneMultiFactorInfo, String str, @Nullable String str2, long j10, boolean z10, boolean z11, @Nullable String str3, @Nullable String str4, @Nullable String str5, boolean z12) {
        this.zza = phoneMultiFactorInfo;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = j10;
        this.zze = z10;
        this.zzf = str3;
        this.zzg = str4;
        this.zzh = str5;
        this.zzi = z12;
    }

    public final long zza() {
        return this.zzd;
    }

    public final PhoneMultiFactorInfo zzb() {
        return this.zza;
    }

    @Nullable
    public final String zzc() {
        return this.zzh;
    }

    @Nullable
    public final String zzd() {
        return this.zzc;
    }

    public final String zze() {
        return this.zzb;
    }

    @Nullable
    public final String zzf() {
        return this.zzg;
    }

    @Nullable
    public final String zzg() {
        return this.zzf;
    }

    public final boolean zzh() {
        return this.zze;
    }

    public final boolean zzi() {
        return this.zzi;
    }
}
