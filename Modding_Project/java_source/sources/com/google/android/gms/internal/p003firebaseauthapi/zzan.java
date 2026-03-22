package com.google.android.gms.internal.p003firebaseauthapi;

import com.huawei.hms.framework.common.ContainerUtils;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzan  reason: invalid package */
/* loaded from: classes4.dex */
final class zzan {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final IllegalArgumentException zza() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        String valueOf3 = String.valueOf(this.zza);
        String valueOf4 = String.valueOf(this.zzc);
        return new IllegalArgumentException("Multiple entries with same key: " + valueOf + ContainerUtils.KEY_VALUE_DELIMITER + valueOf2 + " and " + valueOf3 + ContainerUtils.KEY_VALUE_DELIMITER + valueOf4);
    }
}
