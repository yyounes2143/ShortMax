package com.google.android.gms.internal.p002authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbx  reason: invalid package */
/* loaded from: classes4.dex */
final class zbx extends zbh {
    final /* synthetic */ TaskCompletionSource zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbx(zbad zbadVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
        Objects.requireNonNull(zbadVar);
    }

    @Override // com.google.android.gms.internal.p002authapi.zbi
    public final void zbb(Status status, AuthorizationResult authorizationResult) throws RemoteException {
        if (status.isSuccess()) {
            this.zba.setResult(authorizationResult);
        } else {
            this.zba.setException(ApiExceptionUtil.fromStatus(status));
        }
    }
}
