package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
final class zzc extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f19970a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzc(d dVar, Handler handler, TaskCompletionSource taskCompletionSource) {
        super(handler);
        this.f19970a = taskCompletionSource;
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        this.f19970a.trySetResult(null);
    }
}
