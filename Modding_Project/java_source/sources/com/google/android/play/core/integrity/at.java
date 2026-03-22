package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class at {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19870a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19871b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(com.google.android.play.integrity.internal.x xVar, com.google.android.play.integrity.internal.x xVar2) {
        this.f19870a = xVar;
        this.f19871b = xVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final as a(Activity activity, TaskCompletionSource taskCompletionSource, com.google.android.play.integrity.internal.f fVar) {
        Context context = (Context) this.f19870a.a();
        context.getClass();
        k kVar = (k) this.f19871b.a();
        kVar.getClass();
        activity.getClass();
        fVar.getClass();
        return new as(context, kVar, activity, taskCompletionSource, fVar);
    }
}
