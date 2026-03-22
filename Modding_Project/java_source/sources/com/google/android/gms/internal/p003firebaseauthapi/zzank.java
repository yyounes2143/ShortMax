package com.google.android.gms.internal.p003firebaseauthapi;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzank  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzank implements Comparable, Map.Entry {
    private final Comparable zza;
    private Object zzb;
    private final /* synthetic */ zzang zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzank(zzang zzangVar, Map.Entry entry) {
        this(zzangVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean zza(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        }
        return obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return ((Comparable) getKey()).compareTo((Comparable) ((zzank) obj).getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (zza(this.zza, entry.getKey()) && zza(this.zzb, entry.getValue())) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zza;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzb;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        Comparable comparable = this.zza;
        int i10 = 0;
        if (comparable == null) {
            hashCode = 0;
        } else {
            hashCode = comparable.hashCode();
        }
        Object obj = this.zzb;
        if (obj != null) {
            i10 = obj.hashCode();
        }
        return hashCode ^ i10;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.zzc.zzg();
        Object obj2 = this.zzb;
        this.zzb = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        return valueOf + ContainerUtils.KEY_VALUE_DELIMITER + valueOf2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzank(zzang zzangVar, Comparable comparable, Object obj) {
        Objects.requireNonNull(zzangVar);
        this.zzc = zzangVar;
        this.zza = comparable;
        this.zzb = obj;
    }
}
