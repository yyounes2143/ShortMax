package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.i;
import com.bykv.vk.openvk.preload.b.l;
import java.util.List;
/* compiled from: RetryBranchInterceptor.java */
/* loaded from: classes3.dex */
public abstract class j<IN, OUT> extends l<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private String f11276d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        new m(bVar);
        this.f11276d = a((j<IN, OUT>) in2);
        l.a aVar = a().get(this.f11276d);
        while (aVar != null) {
            List<h> list = aVar.f11279a;
            try {
                Object a10 = c.a(list, bVar.f11272a, this).a((b) in2);
                return !l.a(list) ? a10 : bVar.a((b<OUT>) a10);
            } catch (i.a e10) {
                Throwable cause = e10.getCause();
                new m(bVar);
                this.f11276d = a(in2, cause, this.f11276d);
                aVar = a().get(this.f11276d);
            } catch (Throwable th2) {
                new m(bVar);
                this.f11276d = a(in2, th2, this.f11276d);
                aVar = a().get(this.f11276d);
            }
        }
        throw new IllegalArgumentException("can not found branch，branch name is：" + this.f11276d);
    }

    protected abstract String a(IN in2);

    protected abstract String a(IN in2, Throwable th2, String str);
}
