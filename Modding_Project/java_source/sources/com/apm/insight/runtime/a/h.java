package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DartCrashAssembly.java */
/* loaded from: classes2.dex */
public final class h extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context, b bVar, d dVar) {
        super(CrashType.DART, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public final com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a a10 = super.a(aVar);
        Header a11 = Header.a(this.f7162b);
        Header.a(a11);
        Header.b(a11);
        a11.c();
        a11.d();
        a11.e();
        a10.a(a11);
        com.apm.insight.a.a(a10, a11, this.f7161a);
        return a10;
    }
}
