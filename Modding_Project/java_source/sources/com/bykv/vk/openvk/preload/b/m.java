package com.bykv.vk.openvk.preload.b;
/* compiled from: UnProceedChain.java */
/* loaded from: classes3.dex */
final class m<IN> implements b<IN> {

    /* renamed from: a  reason: collision with root package name */
    private b<IN> f11282a;

    public m(b<IN> bVar) {
        this.f11282a = bVar;
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final Object a(IN in2) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final <O> O b(Class<? extends d<?, O>> cls) {
        return (O) this.f11282a.b(cls);
    }

    @Override // com.bykv.vk.openvk.preload.b.b
    public final <I> I a(Class<? extends d<I, ?>> cls) {
        return (I) this.f11282a.a((Class<? extends d<Object, ?>>) cls);
    }
}
