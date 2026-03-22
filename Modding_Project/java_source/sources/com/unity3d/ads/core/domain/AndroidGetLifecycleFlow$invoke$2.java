package com.unity3d.ads.core.domain;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import gt.g;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProduceKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidGetLifecycleFlow.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2", f = "AndroidGetLifecycleFlow.kt", l = {64}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidGetLifecycleFlow$invoke$2 extends SuspendLambda implements Function2<h<? super LifecycleEvent>, c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidGetLifecycleFlow this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidGetLifecycleFlow$invoke$2(AndroidGetLifecycleFlow androidGetLifecycleFlow, c<? super AndroidGetLifecycleFlow$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = androidGetLifecycleFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidGetLifecycleFlow$invoke$2 androidGetLifecycleFlow$invoke$2 = new AndroidGetLifecycleFlow$invoke$2(this.this$0, cVar);
        androidGetLifecycleFlow$invoke$2.L$0 = obj;
        return androidGetLifecycleFlow$invoke$2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.app.Application$ActivityLifecycleCallbacks, com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$listener$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Context context;
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
            final h hVar = (h) this.L$0;
            final ?? r12 = new Application.ActivityLifecycleCallbacks() { // from class: com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$listener$1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityCreated$1(hVar2, activity, bundle, null), 3, null);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityDestroyed$1(hVar2, activity, null), 3, null);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityPaused$1(hVar2, activity, null), 3, null);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityResumed$1(hVar2, activity, null), 3, null);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle bundle) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    Intrinsics.checkNotNullParameter(bundle, "bundle");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1(hVar2, activity, bundle, null), 3, null);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStarted$1(hVar2, activity, null), 3, null);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(@NotNull Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                    h<LifecycleEvent> hVar2 = hVar;
                    g.d(hVar2, null, null, new AndroidGetLifecycleFlow$invoke$2$listener$1$onActivityStopped$1(hVar2, activity, null), 3, null);
                }
            };
            context = this.this$0.applicationContext;
            ((Application) context).registerActivityLifecycleCallbacks(r12);
            final AndroidGetLifecycleFlow androidGetLifecycleFlow = this.this$0;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Context context2;
                    context2 = AndroidGetLifecycleFlow.this.applicationContext;
                    ((Application) context2).unregisterActivityLifecycleCallbacks(r12);
                }
            };
            this.label = 1;
            if (ProduceKt.a(hVar, function0, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull h<? super LifecycleEvent> hVar, @Nullable c<? super Unit> cVar) {
        return ((AndroidGetLifecycleFlow$invoke$2) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
