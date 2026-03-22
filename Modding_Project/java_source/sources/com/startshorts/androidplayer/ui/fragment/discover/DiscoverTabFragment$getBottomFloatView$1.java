package com.startshorts.androidplayer.ui.fragment.discover;

import android.view.View;
import androidx.databinding.ViewStubProxy;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.ui.view.act.ActBottomFloatView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverTabFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1", f = "DiscoverTabFragment.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER, 535, 541}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverTabFragment$getBottomFloatView$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45984h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function1<ActBottomFloatView, Unit> f45985i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f45986j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DiscoverTabFragment f45987k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$1", f = "DiscoverTabFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45988h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverTabFragment f45989i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DiscoverTabFragment discoverTabFragment, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f45989i = discoverTabFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f45989i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ActBottomFloatView actBottomFloatView;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f45988h == 0) {
                kotlin.f.b(obj);
                DiscoverTabFragment discoverTabFragment = this.f45989i;
                ViewStubProxy actBottomFloatViewstub = DiscoverTabFragment.i0(discoverTabFragment).f39475a;
                Intrinsics.checkNotNullExpressionValue(actBottomFloatViewstub, "actBottomFloatViewstub");
                View c10 = jk.e0.c(actBottomFloatViewstub);
                if (c10 instanceof ActBottomFloatView) {
                    actBottomFloatView = (ActBottomFloatView) c10;
                } else {
                    actBottomFloatView = null;
                }
                discoverTabFragment.f45972x = actBottomFloatView;
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverTabFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$2", f = "DiscoverTabFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45990h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function1<ActBottomFloatView, Unit> f45991i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ DiscoverTabFragment f45992j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super ActBottomFloatView, Unit> function1, DiscoverTabFragment discoverTabFragment, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f45991i = function1;
            this.f45992j = discoverTabFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass2(this.f45991i, this.f45992j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f45990h == 0) {
                kotlin.f.b(obj);
                this.f45991i.invoke(this.f45992j.f45972x);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DiscoverTabFragment$getBottomFloatView$1(Function1<? super ActBottomFloatView, Unit> function1, boolean z10, DiscoverTabFragment discoverTabFragment, rs.c<? super DiscoverTabFragment$getBottomFloatView$1> cVar) {
        super(2, cVar);
        this.f45985i = function1;
        this.f45986j = z10;
        this.f45987k = discoverTabFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverTabFragment$getBottomFloatView$1(this.f45985i, this.f45986j, this.f45987k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverTabFragment$getBottomFloatView$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a2  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f45984h
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L27
            if (r1 == r4) goto L23
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            kotlin.f.b(r9)
            goto La7
        L17:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1f:
            kotlin.f.b(r9)
            goto L84
        L23:
            kotlin.f.b(r9)
            goto L35
        L27:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.manager.act.ActResourceManager r9 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a
            r8.f45984h = r4
            java.lang.Object r9 = r9.k(r8)
            if (r9 != r0) goto L35
            return r0
        L35:
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r9 = kotlin.collections.CollectionsKt.firstOrNull(r9)
            com.startshorts.androidplayer.bean.act.ActResource r9 = (com.startshorts.androidplayer.bean.act.ActResource) r9
            java.lang.String r1 = "DiscoverTabFragment"
            if (r9 != 0) goto L4e
            com.startshorts.androidplayer.log.Logger r9 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r0 = "getBottomFloatView -> no bottom float"
            r9.e(r1, r0)
            kotlin.jvm.functions.Function1<com.startshorts.androidplayer.ui.view.act.ActBottomFloatView, kotlin.Unit> r9 = r8.f45985i
            r9.invoke(r5)
            goto La7
        L4e:
            boolean r4 = r8.f45986j
            if (r4 == 0) goto L84
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment r4 = r8.f45987k
            com.startshorts.androidplayer.ui.view.act.ActBottomFloatView r4 = com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.j0(r4)
            if (r4 != 0) goto L84
            com.startshorts.androidplayer.log.Logger r4 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "getBottomFloatView -> init resource="
            r6.append(r7)
            r6.append(r9)
            java.lang.String r9 = r6.toString()
            r4.h(r1, r9)
            gt.j1 r9 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$1 r1 = new com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$1
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment r4 = r8.f45987k
            r1.<init>(r4, r5)
            r8.f45984h = r3
            java.lang.Object r9 = gt.e.g(r9, r1, r8)
            if (r9 != r0) goto L84
            return r0
        L84:
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment r9 = r8.f45987k
            com.startshorts.androidplayer.ui.view.act.ActBottomFloatView r9 = com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.j0(r9)
            if (r9 == 0) goto La2
            gt.j1 r9 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$2 r1 = new com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$2
            kotlin.jvm.functions.Function1<com.startshorts.androidplayer.ui.view.act.ActBottomFloatView, kotlin.Unit> r3 = r8.f45985i
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment r4 = r8.f45987k
            r1.<init>(r3, r4, r5)
            r8.f45984h = r2
            java.lang.Object r9 = gt.e.g(r9, r1, r8)
            if (r9 != r0) goto La7
            return r0
        La2:
            kotlin.jvm.functions.Function1<com.startshorts.androidplayer.ui.view.act.ActBottomFloatView, kotlin.Unit> r9 = r8.f45985i
            r9.invoke(r5)
        La7:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
