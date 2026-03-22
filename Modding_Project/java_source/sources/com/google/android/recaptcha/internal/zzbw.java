package com.google.android.recaptcha.internal;

import gt.k0;
import gt.n;
import gt.o;
import gt.p;
import gt.s0;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.r;
import pt.d;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbw implements k0 {
    private final /* synthetic */ p zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbw(p pVar) {
        this.zza = pVar;
    }

    @Override // kotlinx.coroutines.r
    public final n attachChild(o oVar) {
        return this.zza.attachChild(oVar);
    }

    @Override // gt.k0
    public final Object await(c cVar) {
        return this.zza.await(cVar);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public final /* synthetic */ void cancel() {
        this.zza.cancel();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return this.zza.fold(obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.b bVar) {
        return this.zza.get(bVar);
    }

    @Override // kotlinx.coroutines.r
    public final CancellationException getCancellationException() {
        return this.zza.getCancellationException();
    }

    @Override // kotlinx.coroutines.r
    public final Sequence getChildren() {
        return this.zza.getChildren();
    }

    @Override // gt.k0
    public final Object getCompleted() {
        return this.zza.getCompleted();
    }

    @Override // gt.k0
    public final Throwable getCompletionExceptionOrNull() {
        return this.zza.getCompletionExceptionOrNull();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.b getKey() {
        return this.zza.getKey();
    }

    @Override // gt.k0
    public final d getOnAwait() {
        return this.zza.getOnAwait();
    }

    @Override // kotlinx.coroutines.r
    public final pt.b getOnJoin() {
        return this.zza.getOnJoin();
    }

    @Override // kotlinx.coroutines.r
    public final r getParent() {
        return this.zza.getParent();
    }

    @Override // kotlinx.coroutines.r
    public final s0 invokeOnCompletion(Function1 function1) {
        return this.zza.invokeOnCompletion(function1);
    }

    @Override // kotlinx.coroutines.r
    public final boolean isActive() {
        return this.zza.isActive();
    }

    @Override // kotlinx.coroutines.r
    public final boolean isCancelled() {
        return this.zza.isCancelled();
    }

    @Override // kotlinx.coroutines.r
    public final boolean isCompleted() {
        return this.zza.isCompleted();
    }

    @Override // kotlinx.coroutines.r
    public final Object join(c cVar) {
        return this.zza.join(cVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.b bVar) {
        return this.zza.minusKey(bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return this.zza.plus(coroutineContext);
    }

    @Override // kotlinx.coroutines.r
    public final boolean start() {
        return this.zza.start();
    }

    @Override // kotlinx.coroutines.r
    public final void cancel(CancellationException cancellationException) {
        this.zza.cancel(cancellationException);
    }

    @Override // kotlinx.coroutines.r
    public final s0 invokeOnCompletion(boolean z10, boolean z11, Function1 function1) {
        return this.zza.invokeOnCompletion(z10, z11, function1);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public final r plus(r rVar) {
        return this.zza.plus(rVar);
    }

    @Override // kotlinx.coroutines.r
    @ms.c
    public final /* synthetic */ boolean cancel(Throwable th2) {
        return this.zza.cancel(th2);
    }
}
