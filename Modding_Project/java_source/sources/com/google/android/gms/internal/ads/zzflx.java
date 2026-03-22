package com.google.android.gms.internal.ads;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public enum zzflx {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE(DevicePublicKeyStringDef.NONE);
    
    private final String zze;

    zzflx(String str) {
        this.zze = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zze;
    }
}
