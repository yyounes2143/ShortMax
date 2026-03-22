package com.startshorts.androidplayer.ui.fragment.discover;

import android.os.Bundle;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.eventbus.HandleHomeDialogProcessorEvent;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverFragment.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1", f = "DiscoverFragment.kt", l = {620, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverFragment$showModules$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45886h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverFragment f45887i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<DiscoverModule> f45888j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1$3", f = "DiscoverFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1$3  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45889h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverFragment f45890i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<DiscoverModule> f45891j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(DiscoverFragment discoverFragment, List<DiscoverModule> list, rs.c<? super AnonymousClass3> cVar) {
            super(2, cVar);
            this.f45890i = discoverFragment;
            this.f45891j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass3(this.f45890i, this.f45891j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f45889h == 0) {
                kotlin.f.b(obj);
                RefreshFragment.S0(this.f45890i, this.f45891j, false, null, 6, null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverFragment.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1$4", f = "DiscoverFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1$4  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f45892h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ DiscoverModule f45893i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ DiscoverFragment f45894j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ List<DiscoverModule> f45895k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(DiscoverModule discoverModule, DiscoverFragment discoverFragment, List<DiscoverModule> list, rs.c<? super AnonymousClass4> cVar) {
            super(2, cVar);
            this.f45893i = discoverModule;
            this.f45894j = discoverFragment;
            this.f45895k = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass4(this.f45893i, this.f45894j, this.f45895k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass4) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            DiscoverFragment.b bVar;
            int i10;
            DiscoverTabFragment.b bVar2;
            DiscoverTabFragment.b bVar3;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f45892h == 0) {
                kotlin.f.b(obj);
                if (this.f45893i.getStyle() == -31 || this.f45893i.getStyle() == -30 || this.f45893i.getStyle() == -33) {
                    bVar = this.f45894j.K;
                    float d10 = bVar.d();
                    i10 = this.f45894j.F;
                    if (d10 < i10) {
                        this.f45894j.R = true;
                        if (this.f45894j.isResumed() && (bVar2 = this.f45894j.N) != null) {
                            DiscoverTabFragment.b.a.a(bVar2, 0.0f, false, 2, null);
                        }
                    } else {
                        return Unit.f60915a;
                    }
                } else {
                    this.f45894j.R = false;
                    if (this.f45894j.isResumed() && (bVar3 = this.f45894j.N) != null) {
                        bVar3.b(1.0f, true);
                    }
                }
                RefreshFragment.S0(this.f45894j, this.f45895k, false, null, 6, null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverFragment$showModules$1(DiscoverFragment discoverFragment, List<DiscoverModule> list, rs.c<? super DiscoverFragment$showModules$1> cVar) {
        super(2, cVar);
        this.f45887i = discoverFragment;
        this.f45888j = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(DiscoverFragment discoverFragment) {
        if (!discoverFragment.n() && com.startshorts.androidplayer.manager.dialog.home.i.f42439a.a()) {
            au.c.d().l(new HandleHomeDialogProcessorEvent());
        }
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverFragment$showModules$1(this.f45887i, this.f45888j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverFragment$showModules$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DiscoverTab discoverTab;
        String str;
        List b22;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45886h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            return Unit.f60915a;
        }
        kotlin.f.b(obj);
        ud.a.f68411a.g0(true);
        if (!this.f45887i.n() && com.startshorts.androidplayer.manager.dialog.home.i.f42439a.a()) {
            CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
            final DiscoverFragment discoverFragment = this.f45887i;
            CoroutineUtil.g(coroutineUtil, 500L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.y
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = DiscoverFragment$showModules$1.j(DiscoverFragment.this);
                    return j10;
                }
            }, 2, null);
        }
        EventManager eventManager = EventManager.f42463a;
        discoverTab = this.f45887i.I;
        Bundle B = eventManager.B(discoverTab);
        str = this.f45887i.J;
        B.putString("from", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_show_success", B, 0L, 4, null);
        this.f45887i.z2(this.f45888j);
        List<DiscoverModule> list = this.f45888j;
        if (list != null && !list.isEmpty()) {
            DiscoverModule discoverModule = (DiscoverModule) CollectionsKt.firstOrNull(this.f45888j);
            if (discoverModule != null) {
                b22 = this.f45887i.b2(this.f45888j);
                this.f45887i.P1(b22);
                gt.j1 c10 = gt.q0.c();
                AnonymousClass4 anonymousClass4 = new AnonymousClass4(discoverModule, this.f45887i, b22, null);
                this.f45886h = 2;
                if (gt.e.g(c10, anonymousClass4, this) == f10) {
                    return f10;
                }
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        gt.j1 c11 = gt.q0.c();
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.f45887i, this.f45888j, null);
        this.f45886h = 1;
        if (gt.e.g(c11, anonymousClass3, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
