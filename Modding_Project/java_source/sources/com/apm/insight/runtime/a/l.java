package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.nativecrash.NativeCrashCollector;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NativeCrashAssembly.java */
/* loaded from: classes2.dex */
public final class l extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Context context, b bVar, d dVar) {
        super(CrashType.NATIVE, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public final com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a a10 = super.a(i10, aVar);
        if (i10 == 0) {
            Header a11 = Header.a(this.f7162b);
            a11.c();
            a10.a(a11);
            com.apm.insight.a.a(a10, a11, this.f7161a);
        } else if (i10 == 1) {
            Header d10 = a10.d();
            d10.d();
            d10.e();
        } else if (i10 == 2) {
            Header.a(a10.d());
        }
        return a10;
    }

    @Override // com.apm.insight.runtime.a.c
    protected final boolean c() {
        return false;
    }

    @Override // com.apm.insight.runtime.a.c
    public final int a() {
        return NativeCrashCollector.a();
    }
}
