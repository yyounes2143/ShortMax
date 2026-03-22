package com.google.android.gms.internal.p002authapi;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbam  reason: invalid package */
/* loaded from: classes4.dex */
final class zbam extends IStatusCallback.Stub {
    final /* synthetic */ TaskCompletionSource zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbam(zbat zbatVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
        Objects.requireNonNull(zbatVar);
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        TaskUtil.setResultOrApiException(status, this.zba);
    }
}
