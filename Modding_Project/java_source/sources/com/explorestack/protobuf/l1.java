package com.explorestack.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Protobuf.java */
/* loaded from: classes3.dex */
public final class l1 {

    /* renamed from: c  reason: collision with root package name */
    private static final l1 f14455c = new l1();

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, q1<?>> f14457b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final r1 f14456a = new r0();

    private l1() {
    }

    public static l1 a() {
        return f14455c;
    }

    public <T> void b(T t10, o1 o1Var, y yVar) throws IOException {
        e(t10).c(t10, o1Var, yVar);
    }

    public q1<?> c(Class<?> cls, q1<?> q1Var) {
        i0.b(cls, "messageType");
        i0.b(q1Var, "schema");
        return this.f14457b.putIfAbsent(cls, q1Var);
    }

    public <T> q1<T> d(Class<T> cls) {
        i0.b(cls, "messageType");
        q1<T> q1Var = (q1<T>) this.f14457b.get(cls);
        if (q1Var == null) {
            q1<T> createSchema = this.f14456a.createSchema(cls);
            q1<T> q1Var2 = (q1<T>) c(cls, createSchema);
            if (q1Var2 != null) {
                return q1Var2;
            }
            return createSchema;
        }
        return q1Var;
    }

    public <T> q1<T> e(T t10) {
        return d(t10.getClass());
    }
}
