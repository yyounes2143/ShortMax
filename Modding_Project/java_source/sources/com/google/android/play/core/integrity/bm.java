package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.p0;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
abstract class bm extends p0 {

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ bn f19907f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm(@Nullable bn bnVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        this.f19907f = bnVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    public final void a(Exception exc) {
        if (!(exc instanceof com.google.android.play.integrity.internal.af)) {
            super.a(exc);
        } else if (bn.l(this.f19907f)) {
            super.a(new StandardIntegrityException(-2, exc));
        } else {
            super.a(new StandardIntegrityException(-9, exc));
        }
    }
}
