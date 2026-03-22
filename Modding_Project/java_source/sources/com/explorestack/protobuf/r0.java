package com.explorestack.protobuf;

import com.unity3d.services.core.fid.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ManifestSchemaFactory.java */
/* loaded from: classes3.dex */
public final class r0 implements r1 {

    /* renamed from: b  reason: collision with root package name */
    private static final z0 f14629b = new a();

    /* renamed from: a  reason: collision with root package name */
    private final z0 f14630a;

    /* compiled from: ManifestSchemaFactory.java */
    /* loaded from: classes3.dex */
    static class a implements z0 {
        a() {
        }

        @Override // com.explorestack.protobuf.z0
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // com.explorestack.protobuf.z0
        public y0 messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ManifestSchemaFactory.java */
    /* loaded from: classes3.dex */
    public static class b implements z0 {

        /* renamed from: a  reason: collision with root package name */
        private z0[] f14631a;

        b(z0... z0VarArr) {
            this.f14631a = z0VarArr;
        }

        @Override // com.explorestack.protobuf.z0
        public boolean isSupported(Class<?> cls) {
            for (z0 z0Var : this.f14631a) {
                if (z0Var.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.explorestack.protobuf.z0
        public y0 messageInfoFor(Class<?> cls) {
            z0[] z0VarArr;
            for (z0 z0Var : this.f14631a) {
                if (z0Var.isSupported(cls)) {
                    return z0Var.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }
    }

    public r0() {
        this(a());
    }

    private static z0 a() {
        return new b(g0.a(), b());
    }

    private static z0 b() {
        try {
            int i10 = q.f14587d;
            return (z0) q.class.getDeclaredMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f14629b;
        }
    }

    private static boolean c(y0 y0Var) {
        if (y0Var.getSyntax() == ProtoSyntax.PROTO2) {
            return true;
        }
        return false;
    }

    private static <T> q1<T> d(Class<T> cls, y0 y0Var) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            if (c(y0Var)) {
                return b1.K(cls, y0Var, h1.b(), o0.b(), s1.O(), c0.b(), x0.b());
            }
            return b1.K(cls, y0Var, h1.b(), o0.b(), s1.O(), null, x0.b());
        } else if (c(y0Var)) {
            return b1.K(cls, y0Var, h1.a(), o0.a(), s1.I(), c0.a(), x0.a());
        } else {
            return b1.K(cls, y0Var, h1.a(), o0.a(), s1.J(), null, x0.a());
        }
    }

    @Override // com.explorestack.protobuf.r1
    public <T> q1<T> createSchema(Class<T> cls) {
        s1.K(cls);
        y0 messageInfoFor = this.f14630a.messageInfoFor(cls);
        if (messageInfoFor.isMessageSetWireFormat()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                return c1.f(s1.O(), c0.b(), messageInfoFor.getDefaultInstance());
            }
            return c1.f(s1.I(), c0.a(), messageInfoFor.getDefaultInstance());
        }
        return d(cls, messageInfoFor);
    }

    private r0(z0 z0Var) {
        this.f14630a = (z0) i0.b(z0Var, "messageInfoFactory");
    }
}
