package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class s0 extends p0 {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f20019g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ p0 f20020h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f20021i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(f fVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, p0 p0Var) {
        super(taskCompletionSource);
        this.f20019g = taskCompletionSource2;
        this.f20020h = p0Var;
        this.f20021i = fVar;
    }

    @Override // com.google.android.play.integrity.internal.p0
    public final void b() {
        Object obj;
        AtomicInteger atomicInteger;
        o0 o0Var;
        obj = this.f20021i.f19998f;
        synchronized (obj) {
            try {
                f.o(this.f20021i, this.f20019g);
                atomicInteger = this.f20021i.f20004l;
                if (atomicInteger.getAndIncrement() > 0) {
                    o0Var = this.f20021i.f19994b;
                    o0Var.d("Already connected to the service.", new Object[0]);
                }
                f.q(this.f20021i, this.f20020h);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
