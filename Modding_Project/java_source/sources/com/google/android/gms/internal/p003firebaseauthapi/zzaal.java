package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaal  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaal {
    private final zzaaj zza;

    private zzaal(zzaaj zzaajVar) {
        this.zza = zzaajVar;
    }

    public final int zza() {
        return this.zza.zza();
    }

    public static zzaal zza(byte[] bArr, zzch zzchVar) {
        if (zzchVar != null) {
            return new zzaal(zzaaj.zza(bArr));
        }
        throw new NullPointerException("SecretKeyAccess required");
    }

    public static zzaal zza(int i10) {
        return new zzaal(zzaaj.zza(zzqd.zza(i10)));
    }

    public final byte[] zza(zzch zzchVar) {
        if (zzchVar != null) {
            return this.zza.zzb();
        }
        throw new NullPointerException("SecretKeyAccess required");
    }
}
