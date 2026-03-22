package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.i;
/* compiled from: RetryInterceptor.java */
/* loaded from: classes3.dex */
public abstract class k<IN, OUT> extends d<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private IN f11277d;

    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        this.f11277d = in2;
        try {
            return bVar.a((b<OUT>) a());
        } catch (i.a e10) {
            return a((b) bVar, e10.getCause());
        } catch (Throwable th2) {
            return a((b) bVar, th2);
        }
    }

    protected abstract boolean a(Throwable th2);

    /* JADX INFO: Access modifiers changed from: protected */
    public final IN g() {
        return this.f11277d;
    }

    private Object a(b<OUT> bVar, Throwable th2) throws Throwable {
        while (a(th2)) {
            try {
                return bVar.a((b<OUT>) a());
            } catch (i.a e10) {
                th2 = e10.getCause();
            } catch (Throwable th3) {
                th2 = th3;
            }
        }
        throw th2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [IN, OUT] */
    protected OUT a() {
        return this.f11277d;
    }
}
