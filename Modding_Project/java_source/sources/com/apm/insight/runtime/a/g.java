package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CustomJavaCrashAssembly.java */
@Deprecated
/* loaded from: classes2.dex */
public final class g extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, b bVar, d dVar) {
        super(CrashType.CUSTOM_JAVA, context, bVar, dVar);
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
        return a10;
    }
}
