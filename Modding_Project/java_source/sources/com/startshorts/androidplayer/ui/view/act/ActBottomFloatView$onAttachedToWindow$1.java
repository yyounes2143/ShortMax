package com.startshorts.androidplayer.ui.view.act;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.manager.act.ActEntranceManager;
import com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onAttachedToWindow$1;
import gt.g0;
import gt.q0;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kt.e;
/* compiled from: ActBottomFloatView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onAttachedToWindow$1", f = "ActBottomFloatView.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ActBottomFloatView$onAttachedToWindow$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47035h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActBottomFloatView f47036i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActBottomFloatView$onAttachedToWindow$1(ActBottomFloatView actBottomFloatView, rs.c<? super ActBottomFloatView$onAttachedToWindow$1> cVar) {
        super(2, cVar);
        this.f47036i = actBottomFloatView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ActBottomFloatView$onAttachedToWindow$1(this.f47036i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ActBottomFloatView$onAttachedToWindow$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f47035h;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            e<Boolean> f11 = ActEntranceManager.f41563a.f();
            final ActBottomFloatView actBottomFloatView = this.f47036i;
            kt.c<? super Boolean> cVar = new kt.c() { // from class: com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onAttachedToWindow$1.1

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: ActBottomFloatView.kt */
                @Metadata
                @d(c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onAttachedToWindow$1$1$1", f = "ActBottomFloatView.kt", l = {}, m = "invokeSuspend")
                /* renamed from: com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onAttachedToWindow$1$1$1  reason: invalid class name and collision with other inner class name */
                /* loaded from: classes7.dex */
                public static final class C06451 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

                    /* renamed from: h  reason: collision with root package name */
                    int f47038h;

                    /* renamed from: i  reason: collision with root package name */
                    final /* synthetic */ ActBottomFloatView f47039i;

                    /* renamed from: j  reason: collision with root package name */
                    final /* synthetic */ boolean f47040j;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C06451(ActBottomFloatView actBottomFloatView, boolean z10, rs.c<? super C06451> cVar) {
                        super(2, cVar);
                        this.f47039i = actBottomFloatView;
                        this.f47040j = z10;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final boolean n(ActResource actResource) {
                        return false;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final boolean q(ActResource actResource) {
                        if (actResource != null) {
                            return true;
                        }
                        return false;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public static final Unit s(ActBottomFloatView actBottomFloatView, ActResource actResource) {
                        Function1 function1;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("onAttachedToWindow -> isVisible=");
                        function1 = actBottomFloatView.f47014e;
                        sb2.append(((Boolean) function1.invoke(actResource)).booleanValue());
                        actBottomFloatView.s(sb2.toString());
                        return Unit.f60915a;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                        return new C06451(this.f47039i, this.f47040j, cVar);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                        return ((C06451) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Function1 function1;
                        kotlin.coroutines.intrinsics.a.f();
                        if (this.f47038h == 0) {
                            f.b(obj);
                            ActBottomFloatView actBottomFloatView = this.f47039i;
                            if (this.f47040j) {
                                function1 = new Function1() { // from class: com.startshorts.androidplayer.ui.view.act.a
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj2) {
                                        boolean n10;
                                        n10 = ActBottomFloatView$onAttachedToWindow$1.AnonymousClass1.C06451.n((ActResource) obj2);
                                        return Boolean.valueOf(n10);
                                    }
                                };
                            } else {
                                function1 = new Function1() { // from class: com.startshorts.androidplayer.ui.view.act.b
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj2) {
                                        boolean q10;
                                        q10 = ActBottomFloatView$onAttachedToWindow$1.AnonymousClass1.C06451.q((ActResource) obj2);
                                        return Boolean.valueOf(q10);
                                    }
                                };
                            }
                            actBottomFloatView.f47014e = function1;
                            final ActBottomFloatView actBottomFloatView2 = this.f47039i;
                            actBottomFloatView2.S(new Function1() { // from class: com.startshorts.androidplayer.ui.view.act.c
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Unit s10;
                                    s10 = ActBottomFloatView$onAttachedToWindow$1.AnonymousClass1.C06451.s(ActBottomFloatView.this, (ActResource) obj2);
                                    return s10;
                                }
                            });
                            return Unit.f60915a;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                public final Object a(boolean z10, rs.c<? super Unit> cVar2) {
                    ActBottomFloatView actBottomFloatView2 = ActBottomFloatView.this;
                    actBottomFloatView2.s("onAttachedToWindow -> value=" + z10);
                    Object g10 = gt.e.g(q0.c(), new C06451(ActBottomFloatView.this, z10, null), cVar2);
                    if (g10 == kotlin.coroutines.intrinsics.a.f()) {
                        return g10;
                    }
                    return Unit.f60915a;
                }

                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Object obj2, rs.c cVar2) {
                    return a(((Boolean) obj2).booleanValue(), cVar2);
                }
            };
            this.f47035h = 1;
            if (f11.collect(cVar, this) == f10) {
                return f10;
            }
        }
        throw new KotlinNothingValueException();
    }
}
