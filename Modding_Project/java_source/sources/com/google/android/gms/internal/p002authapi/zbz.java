package com.google.android.gms.internal.p002authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbz  reason: invalid package */
/* loaded from: classes4.dex */
final class zbz extends IStatusCallback.Stub {
    final /* synthetic */ TaskCompletionSource zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbz(zbad zbadVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
        Objects.requireNonNull(zbadVar);
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        if (status.isSuccess()) {
            this.zba.setResult(null);
        } else {
            this.zba.setException(ApiExceptionUtil.fromStatus(status));
        }
    }
}
