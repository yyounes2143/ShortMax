package com.google.android.gms.internal.play_billing;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzgz implements Map.Entry, Comparable {
    final /* synthetic */ zzhd zza;
    private final Comparable zzb;
    private Object zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgz(zzhd zzhdVar, Comparable comparable, Object obj) {
        Objects.requireNonNull(zzhdVar);
        this.zza = zzhdVar;
        this.zzb = comparable;
        this.zzc = obj;
    }

    private static final boolean zzb(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 != null) {
                return false;
            }
            return true;
        }
        return obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzb.compareTo(((zzgz) obj).zzb);
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
        if (zzb(this.zzb, entry.getKey()) && zzb(this.zzc, entry.getValue())) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzb;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.zzc;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        Comparable comparable = this.zzb;
        int i10 = 0;
        if (comparable == null) {
            hashCode = 0;
        } else {
            hashCode = comparable.hashCode();
        }
        Object obj = this.zzc;
        if (obj != null) {
            i10 = obj.hashCode();
        }
        return hashCode ^ i10;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.zza.zzo();
        Object obj2 = this.zzc;
        this.zzc = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        String valueOf2 = String.valueOf(this.zzc);
        return valueOf + ContainerUtils.KEY_VALUE_DELIMITER + valueOf2;
    }

    public final Comparable zza() {
        return this.zzb;
    }
}
