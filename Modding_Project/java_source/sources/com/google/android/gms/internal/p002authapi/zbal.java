package com.google.android.gms.internal.p002authapi;

import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbal  reason: invalid package */
/* loaded from: classes4.dex */
final class zbal extends zbk {
    final /* synthetic */ TaskCompletionSource zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbal(zbat zbatVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
        Objects.requireNonNull(zbatVar);
    }

    @Override // com.google.android.gms.internal.p002authapi.zbl
    public final void zbb(Status status, BeginSignInResult beginSignInResult) throws RemoteException {
        TaskUtil.setResultOrApiException(status, beginSignInResult, this.zba);
    }
}
