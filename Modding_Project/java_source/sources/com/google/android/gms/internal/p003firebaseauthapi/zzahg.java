package com.google.android.gms.internal.p003firebaseauthapi;

import com.huawei.hms.support.feature.result.CommonConstant;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahg  reason: invalid package */
/* loaded from: classes4.dex */
public enum zzahg {
    ACCESS_TOKEN("ACCESS_TOKEN"),
    ID_TOKEN(CommonConstant.KEY_ID_TOKEN);
    
    private final String zzd;

    zzahg(String str) {
        this.zzd = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zzd;
    }
}
