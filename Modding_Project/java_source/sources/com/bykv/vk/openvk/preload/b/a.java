package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.l;
import java.util.List;
/* compiled from: BranchInterceptor.java */
/* loaded from: classes3.dex */
public abstract class a<IN, OUT> extends l<IN, OUT> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        new m(bVar);
        String a10 = a((a<IN, OUT>) in2);
        l.a aVar = a().get(a10);
        if (aVar != null) {
            List<h> list = aVar.f11279a;
            Object a11 = c.a(list, ((i) bVar).f11272a, this).a((b) in2);
            return !l.a(list) ? a11 : bVar.a((b<OUT>) a11);
        }
        throw new IllegalArgumentException("can not found branch, branch name is：".concat(String.valueOf(a10)));
    }

    protected abstract String a(IN in2);
}
