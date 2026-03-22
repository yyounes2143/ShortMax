package com.startshorts.androidplayer.ui.activity;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: MainActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$receiveUpdateDataEvent$1", f = "MainActivity.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_VR_PREDICT_ACCURACY_THRESHOLD}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class MainActivity$receiveUpdateDataEvent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44903h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f44904i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainActivity.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$receiveUpdateDataEvent$1$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.activity.MainActivity$receiveUpdateDataEvent$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f44905h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ MainActivity f44906i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MainActivity mainActivity, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f44906i = mainActivity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f44906i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f44905h == 0) {
                f.b(obj);
                mi.d o10 = UpdateManager.f42992a.o(this.f44906i);
                if (o10 != null) {
                    o10.show();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$receiveUpdateDataEvent$1(MainActivity mainActivity, c<? super MainActivity$receiveUpdateDataEvent$1> cVar) {
        super(2, cVar);
        this.f44904i = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$receiveUpdateDataEvent$1(this.f44904i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MainActivity$receiveUpdateDataEvent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44903h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (UpdateManager.f42992a.k()) {
                j1 c10 = q0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f44904i, null);
                this.f44903h = 1;
                if (e.g(c10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
