package com.google.android.gms.internal.p002authapi;

import android.util.Base64;
import java.security.SecureRandom;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbaw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbaw {
    private static final SecureRandom zba = new SecureRandom();

    public static String zba() {
        byte[] bArr = new byte[16];
        zba.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
