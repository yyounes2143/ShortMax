package com.google.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Protobuf.java */
/* loaded from: classes5.dex */
public final class h0 {
    private static final h0 INSTANCE = new h0();
    private final ConcurrentMap<Class<?>, l0<?>> schemaCache = new ConcurrentHashMap();
    private final m0 schemaFactory = new t();

    private h0() {
    }

    public static h0 getInstance() {
        return INSTANCE;
    }

    int getTotalSchemaSize() {
        int i10 = 0;
        for (l0<?> l0Var : this.schemaCache.values()) {
            if (l0Var instanceof a0) {
                i10 += ((a0) l0Var).getSchemaSize();
            }
        }
        return i10;
    }

    <T> boolean isInitialized(T t10) {
        return schemaFor((h0) t10).isInitialized(t10);
    }

    public <T> void makeImmutable(T t10) {
        schemaFor((h0) t10).makeImmutable(t10);
    }

    public <T> void mergeFrom(T t10, k0 k0Var) throws IOException {
        mergeFrom(t10, k0Var, ExtensionRegistryLite.getEmptyRegistry());
    }

    public l0<?> registerSchema(Class<?> cls, l0<?> l0Var) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(l0Var, "schema");
        return this.schemaCache.putIfAbsent(cls, l0Var);
    }

    public l0<?> registerSchemaOverride(Class<?> cls, l0<?> l0Var) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(l0Var, "schema");
        return this.schemaCache.put(cls, l0Var);
    }

    public <T> l0<T> schemaFor(Class<T> cls) {
        Internal.checkNotNull(cls, "messageType");
        l0<T> l0Var = (l0<T>) this.schemaCache.get(cls);
        if (l0Var == null) {
            l0<T> createSchema = this.schemaFactory.createSchema(cls);
            l0<T> l0Var2 = (l0<T>) registerSchema(cls, createSchema);
            return l0Var2 != null ? l0Var2 : createSchema;
        }
        return l0Var;
    }

    public <T> void writeTo(T t10, Writer writer) throws IOException {
        schemaFor((h0) t10).writeTo(t10, writer);
    }

    public <T> void mergeFrom(T t10, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        schemaFor((h0) t10).mergeFrom(t10, k0Var, extensionRegistryLite);
    }

    public <T> l0<T> schemaFor(T t10) {
        return schemaFor((Class) t10.getClass());
    }
}
