package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzqj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzqj {
    private final Class<?> zza;
    private final Class<? extends zzqf> zzb;

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzqj)) {
            return false;
        }
        zzqj zzqjVar = (zzqj) obj;
        if (!zzqjVar.zza.equals(this.zza) || !zzqjVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        String simpleName = this.zza.getSimpleName();
        String simpleName2 = this.zzb.getSimpleName();
        return simpleName + " with serialization type: " + simpleName2;
    }

    private zzqj(Class<?> cls, Class<? extends zzqf> cls2) {
        this.zza = cls;
        this.zzb = cls2;
    }
}
