package com.explorestack.protobuf;
/* compiled from: GeneratedMessageInfoFactory.java */
/* loaded from: classes3.dex */
class g0 implements z0 {

    /* renamed from: a  reason: collision with root package name */
    private static final g0 f14388a = new g0();

    private g0() {
    }

    public static g0 a() {
        return f14388a;
    }

    @Override // com.explorestack.protobuf.z0
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override // com.explorestack.protobuf.z0
    public y0 messageInfoFor(Class<?> cls) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            try {
                return (y0) GeneratedMessageLite.g(cls.asSubclass(GeneratedMessageLite.class)).b();
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }
}
