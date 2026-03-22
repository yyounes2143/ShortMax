package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
/* loaded from: classes2.dex */
abstract class AbstractSSEHandler extends AbstractHandler implements ServerSideEncryptionResult {
    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void e(String str) {
        ServerSideEncryptionResult m10 = m();
        if (m10 != null) {
            m10.e(str);
        }
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void h(String str) {
        ServerSideEncryptionResult m10 = m();
        if (m10 != null) {
            m10.h(str);
        }
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void k(String str) {
        ServerSideEncryptionResult m10 = m();
        if (m10 != null) {
            m10.k(str);
        }
    }

    protected abstract ServerSideEncryptionResult m();
}
