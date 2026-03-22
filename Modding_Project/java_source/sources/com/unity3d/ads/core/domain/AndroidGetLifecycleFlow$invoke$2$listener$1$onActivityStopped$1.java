package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.unity3d.ads.core.domain.LifecycleEvent;
import gt.g0;
import java.lang.ref.WeakReference;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidGetLifecycleFlow.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1", f = "AndroidGetLifecycleFlow.kt", l = {50}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ h<LifecycleEvent> $$this$channelFlow;
    final /* synthetic */ Activity $activity;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1(h<? super LifecycleEvent> hVar, Activity activity, c<? super AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1> cVar) {
        super(2, cVar);
        this.$$this$channelFlow = hVar;
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1(this.$$this$channelFlow, this.$activity, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            h<LifecycleEvent> hVar = this.$$this$channelFlow;
            LifecycleEvent.Stopped stopped = new LifecycleEvent.Stopped(new WeakReference(this.$activity));
            this.label = 1;
            if (hVar.p(stopped, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
