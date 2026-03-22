package com.google.android.play.core.integrity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.integrity.internal.m0;
import com.google.android.play.integrity.internal.o0;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class as extends m0 {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final TaskCompletionSource f19864a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final com.google.android.play.integrity.internal.f f19865b;

    /* renamed from: c  reason: collision with root package name */
    private final o0 f19866c = new o0("RequestDialogCallbackImpl");

    /* renamed from: d  reason: collision with root package name */
    private final String f19867d;

    /* renamed from: e  reason: collision with root package name */
    private final k f19868e;

    /* renamed from: f  reason: collision with root package name */
    private final Activity f19869f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(Context context, k kVar, Activity activity, TaskCompletionSource taskCompletionSource, com.google.android.play.integrity.internal.f fVar) {
        this.f19867d = context.getPackageName();
        this.f19868e = kVar;
        this.f19864a = taskCompletionSource;
        this.f19869f = activity;
        this.f19865b = fVar;
    }

    @Override // com.google.android.play.integrity.internal.n0
    public final void b(Bundle bundle) {
        this.f19865b.v(this.f19864a);
        this.f19866c.d("onRequestDialog(%s)", this.f19867d);
        ApiException a10 = this.f19868e.a(bundle);
        if (a10 != null) {
            this.f19864a.trySetException(a10);
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        if (pendingIntent == null) {
            this.f19866c.b("onRequestDialog(%s): got null dialog intent", this.f19867d);
            this.f19864a.trySetResult(0);
            return;
        }
        Intent intent = new Intent(this.f19869f, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", pendingIntent);
        intent.setFlags(536870912);
        intent.putExtra("result_receiver", new ar(this, this.f19865b.c()));
        this.f19866c.a("Starting dialog intent...", new Object[0]);
        this.f19869f.startActivityForResult(intent, 0);
    }
}
