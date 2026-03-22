package com.startshorts.androidplayer.ui.fragment.mylist;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.RepeatOnLifecycleKt;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: MyListMixFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$onViewCreated$1", f = "MyListMixFragment.kt", l = {189}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class MyListMixFragment$onViewCreated$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46317h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MyListMixFragment f46318i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyListMixFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$onViewCreated$1$1", f = "MyListMixFragment.kt", l = {190}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$onViewCreated$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46319h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ MyListMixFragment f46320i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MyListMixFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.mylist.MyListMixFragment$onViewCreated$1$1$a */
        /* loaded from: classes7.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MyListMixFragment f46321a;

            a(MyListMixFragment myListMixFragment) {
                this.f46321a = myListMixFragment;
            }

            public final Object a(boolean z10, rs.c<? super Unit> cVar) {
                this.f46321a.N = z10;
                return Unit.f60915a;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                return a(((Boolean) obj).booleanValue(), cVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MyListMixFragment myListMixFragment, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46320i = myListMixFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f46320i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f46319h;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                kt.d<Boolean> a10 = qi.a.f65362a.a();
                a aVar = new a(this.f46320i);
                this.f46319h = 1;
                if (a10.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyListMixFragment$onViewCreated$1(MyListMixFragment myListMixFragment, rs.c<? super MyListMixFragment$onViewCreated$1> cVar) {
        super(2, cVar);
        this.f46318i = myListMixFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MyListMixFragment$onViewCreated$1(this.f46318i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MyListMixFragment$onViewCreated$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f46317h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            Lifecycle lifecycle = this.f46318i.getViewLifecycleOwner().getLifecycle();
            Lifecycle.State state = Lifecycle.State.CREATED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f46318i, null);
            this.f46317h = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
