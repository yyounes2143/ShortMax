package com.bykv.vk.openvk.preload.b;
/* compiled from: Pipe.java */
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    Class<? extends d> f11266a;

    /* renamed from: b  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.b.b.a f11267b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f11268c;

    /* compiled from: Pipe.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Class<? extends d> f11269a;

        /* renamed from: b  reason: collision with root package name */
        private com.bykv.vk.openvk.preload.b.b.a f11270b;

        /* renamed from: c  reason: collision with root package name */
        private Object[] f11271c;

        private a() {
        }

        public static a a() {
            return new a();
        }

        public final h b() {
            return new h(this, (byte) 0);
        }

        public final a a(Class<? extends d> cls) {
            if (cls != null) {
                this.f11269a = cls;
                return this;
            }
            throw new IllegalArgumentException("interceptor class == null");
        }

        public final a a(com.bykv.vk.openvk.preload.b.b.a aVar) {
            this.f11270b = aVar;
            return this;
        }

        public final a a(Object... objArr) {
            this.f11271c = objArr;
            return this;
        }
    }

    /* synthetic */ h(a aVar, byte b10) {
        this(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.bykv.vk.openvk.preload.b.b.a a() {
        return this.f11267b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] b() {
        return this.f11268c;
    }

    private h(a aVar) {
        this.f11266a = aVar.f11269a;
        this.f11267b = aVar.f11270b;
        this.f11268c = aVar.f11271c;
        if (this.f11266a == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }
}
