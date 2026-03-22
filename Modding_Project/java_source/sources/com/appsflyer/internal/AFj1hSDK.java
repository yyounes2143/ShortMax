package com.appsflyer.internal;

import java.lang.reflect.Field;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes2.dex */
public final class AFj1hSDK implements AFj1iSDK {
    @Override // com.appsflyer.internal.AFj1iSDK
    @NotNull
    public final String getMediationNetwork() {
        Object obj;
        Object obj2 = "";
        try {
            Result.a aVar = Result.f60901b;
            Field declaredField = g1.a.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            Object obj3 = declaredField.get(null);
            Intrinsics.checkNotNull(obj3, "");
            obj = Result.d((String) obj3);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            obj = Result.d(kotlin.f.a(th2));
        }
        if (!Result.i(obj)) {
            obj2 = obj;
        }
        return (String) obj2;
    }
}
