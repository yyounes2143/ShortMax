package io.bidmachine.analytics.internal;

import io.bidmachine.analytics.ReaderConfig;
import java.io.File;
import java.io.FileNotFoundException;
/* renamed from: io.bidmachine.analytics.internal.d  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public abstract class AbstractC3309d extends AbstractC3314i {
    public abstract File a(ReaderConfig.Rule rule);

    @Override // io.bidmachine.analytics.internal.AbstractC3314i
    public Object a(ReaderConfig.Rule rule, rs.c cVar) {
        return a(this, rule, cVar);
    }

    static /* synthetic */ Object a(AbstractC3309d abstractC3309d, ReaderConfig.Rule rule, rs.c cVar) {
        File a10 = abstractC3309d.a(rule);
        if (a10.exists()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a10.lastModified());
            sb2.append('_');
            sb2.append(a10.length());
            return sb2.toString();
        }
        throw new FileNotFoundException();
    }
}
