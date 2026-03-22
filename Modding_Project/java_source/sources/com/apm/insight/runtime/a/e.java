package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
/* compiled from: BlockAssembly.java */
/* loaded from: classes2.dex */
public final class e extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, b bVar, d dVar) {
        super(CrashType.BLOCK, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public final com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a a10 = super.a(aVar);
        com.apm.insight.a.a(a10, (Header) null, this.f7161a);
        return a10;
    }

    @Override // com.apm.insight.runtime.a.c
    protected final boolean b() {
        return true;
    }

    @Override // com.apm.insight.runtime.a.c
    protected final boolean c() {
        return false;
    }
}
