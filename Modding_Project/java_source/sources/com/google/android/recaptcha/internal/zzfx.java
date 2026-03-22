package com.google.android.recaptcha.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public abstract class zzfx implements InvocationHandler {
    @Nullable
    private final Object zza;

    public zzfx(@Nullable Object obj) {
        this.zza = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    @NotNull
    public final Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
        Object obj2;
        int i10;
        if (Intrinsics.areEqual(method.getName(), "toString") && method.getParameterTypes().length == 0) {
            return "Proxy@".concat(String.valueOf(Integer.toHexString(obj.hashCode())));
        }
        if (Intrinsics.areEqual(method.getName(), "hashCode") && method.getParameterTypes().length == 0) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        if (Intrinsics.areEqual(method.getName(), "equals") && method.getParameterTypes().length != 0) {
            boolean z10 = false;
            if (objArr != null && objArr.length != 0) {
                Object obj3 = objArr[0];
                if (obj3 != null) {
                    i10 = obj3.hashCode();
                } else {
                    i10 = 0;
                }
                if (i10 == obj.hashCode()) {
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        } else if (!zza(obj, method, objArr)) {
            return Unit.f60915a;
        } else {
            if ((this.zza == null && Intrinsics.areEqual(method.getReturnType(), Void.TYPE)) || ((obj2 = this.zza) != null && Intrinsics.areEqual(zzkm.zza(obj2.getClass()), zzkm.zza(method.getReturnType())))) {
                Object obj4 = this.zza;
                if (obj4 == null) {
                    return Unit.f60915a;
                }
                return obj4;
            }
            throw new IllegalArgumentException(this.zza + " cannot be returned from method with return type " + method.getReturnType());
        }
    }

    public abstract boolean zza(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr);
}
