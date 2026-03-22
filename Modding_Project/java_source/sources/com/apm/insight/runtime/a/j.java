package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JavaCrashAssembly.java */
/* loaded from: classes2.dex */
public final class j extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, b bVar, d dVar) {
        super(CrashType.JAVA, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public final com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a a10 = super.a(i10, aVar);
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 5) {
                        Header.b(a10.d());
                    }
                } else {
                    Header.a(a10.d());
                }
            } else {
                Header d10 = a10.d();
                d10.d();
                d10.e();
            }
        } else {
            a10.a("app_count", (Object) 1);
            a10.a("magic_tag", "ss_app_log");
            Header a11 = Header.a(this.f7162b);
            a11.c();
            a10.a(a11);
            com.apm.insight.a.a(a10, a11, this.f7161a);
        }
        return a10;
    }
}
