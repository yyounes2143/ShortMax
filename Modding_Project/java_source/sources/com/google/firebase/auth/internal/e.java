package com.google.firebase.auth.internal;

import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.p003firebaseauthapi.zzaao;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f20489a = new Logger("GetTokenResultFactory", new String[0]);

    public static com.google.firebase.auth.g a(String str) {
        Map hashMap;
        try {
            hashMap = d.b(str);
        } catch (zzaao e10) {
            f20489a.e("Error parsing token claims", e10, new Object[0]);
            hashMap = new HashMap();
        }
        return new com.google.firebase.auth.g(str, hashMap);
    }
}
