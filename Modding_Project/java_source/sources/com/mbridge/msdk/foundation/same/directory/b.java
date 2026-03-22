package com.mbridge.msdk.foundation.same.directory;

import java.util.ArrayList;
import java.util.List;
/* compiled from: DirectoryContext.java */
/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    protected a f27069a;

    public b(String str) {
        a aVar = new a();
        aVar.a(str);
        aVar.a(c.AD_ROOT);
        List<a> b10 = b();
        if (b10 != null && b10.size() > 0) {
            aVar.a(b10);
        }
        this.f27069a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a a(ArrayList<a> arrayList, c cVar, String str) {
        a aVar = new a();
        aVar.a(cVar);
        aVar.a(str);
        arrayList.add(aVar);
        return aVar;
    }

    protected abstract List<a> b();

    public a a() {
        return this.f27069a;
    }
}
