package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public abstract class SdkInputStream extends InputStream implements MetricAware {
    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean d() {
        InputStream m10 = m();
        if (m10 instanceof MetricAware) {
            return ((MetricAware) m10).d();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l() {
        if (!Thread.interrupted()) {
            return;
        }
        try {
            k();
        } catch (IOException e10) {
            LogFactory.b(getClass()).d("FYI", e10);
        }
        throw new AbortedException();
    }

    protected abstract InputStream m();

    protected void k() throws IOException {
    }
}
