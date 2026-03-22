package com.google.common.base;

import h7.k;
import java.io.Serializable;
/* loaded from: classes5.dex */
public abstract class Optional<T> implements Serializable {
    public static <T> Optional<T> b() {
        return Absent.g();
    }

    public static <T> Optional<T> f(T t10) {
        return new Present(k.j(t10));
    }

    public abstract T d();

    public abstract boolean e();
}
