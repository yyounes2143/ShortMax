package com.google.android.gms.internal.p003firebaseauthapi;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzany  reason: invalid package */
/* loaded from: classes4.dex */
final class zzany implements PrivilegedExceptionAction<Unsafe> {
    @Override // java.security.PrivilegedExceptionAction
    public final /* synthetic */ Unsafe run() throws Exception {
        Field[] declaredFields;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        return null;
    }
}
