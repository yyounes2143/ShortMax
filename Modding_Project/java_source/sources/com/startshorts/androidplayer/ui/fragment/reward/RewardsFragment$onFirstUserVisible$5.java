package com.startshorts.androidplayer.ui.fragment.reward;

import android.view.View;
import androidx.databinding.ViewStubProxy;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.ui.view.reward.RewardPendantView;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import jk.e0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* compiled from: RewardsFragment.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment$onFirstUserVisible$5", f = "RewardsFragment.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSIONS, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PAD_HELLO}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RewardsFragment$onFirstUserVisible$5 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46726h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsFragment f46727i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardsFragment.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment$onFirstUserVisible$5$1", f = "RewardsFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment$onFirstUserVisible$5$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46728h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ RewardsFragment f46729i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ ActResource f46730j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RewardsFragment rewardsFragment, ActResource actResource, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46729i = rewardsFragment;
            this.f46730j = actResource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f46729i, this.f46730j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            RewardPendantView rewardPendantView;
            a.f();
            if (this.f46728h == 0) {
                f.b(obj);
                ViewStubProxy viewStubProxy = RewardsFragment.a1(this.f46729i).f39627c;
                ActResource actResource = this.f46730j;
                Intrinsics.checkNotNull(viewStubProxy);
                e0.h(viewStubProxy);
                View root = viewStubProxy.getRoot();
                if (root instanceof RewardPendantView) {
                    rewardPendantView = (RewardPendantView) root;
                } else {
                    rewardPendantView = null;
                }
                if (rewardPendantView != null) {
                    rewardPendantView.u(actResource);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsFragment$onFirstUserVisible$5(RewardsFragment rewardsFragment, c<? super RewardsFragment$onFirstUserVisible$5> cVar) {
        super(2, cVar);
        this.f46727i = rewardsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RewardsFragment$onFirstUserVisible$5(this.f46727i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RewardsFragment$onFirstUserVisible$5) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f46726h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            ActResourceManager actResourceManager = ActResourceManager.f41582a;
            this.f46726h = 1;
            obj = actResourceManager.D(this);
            if (obj == f10) {
                return f10;
            }
        }
        ActResource actResource = (ActResource) CollectionsKt.firstOrNull((List) obj);
        if (actResource == null) {
            this.f46727i.g("taskCenterFloatingList -> no bottom float");
        } else {
            j1 c10 = q0.c();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f46727i, actResource, null);
            this.f46726h = 2;
            if (e.g(c10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
