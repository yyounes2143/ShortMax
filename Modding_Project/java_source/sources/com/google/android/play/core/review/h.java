package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
final class h extends g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(i iVar, TaskCompletionSource taskCompletionSource, String str) {
        super(iVar, new f7.i("OnRequestInstallCallback"), taskCompletionSource);
    }

    @Override // com.google.android.play.core.review.g, f7.h
    public final void zzb(Bundle bundle) throws RemoteException {
        super.zzb(bundle);
        this.f19962b.trySetResult(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
