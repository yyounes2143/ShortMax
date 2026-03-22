package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class be extends p0 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f19884a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ bn f19885b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(bn bnVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.f19884a = context;
        this.f19885b = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    protected final void b() {
        TaskCompletionSource taskCompletionSource;
        Context context = this.f19884a;
        taskCompletionSource = this.f19885b.f19911d;
        taskCompletionSource.trySetResult(Integer.valueOf(com.google.android.play.integrity.internal.i.a(context)));
    }
}
