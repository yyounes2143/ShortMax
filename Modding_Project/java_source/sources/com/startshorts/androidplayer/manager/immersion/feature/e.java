package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import fk.h0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectShortsTipFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e implements IImmersionFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42602e = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ImmersionJobsManager f42603a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<Integer> f42604b = CollectionsKt.g1(ud.b.f68412a.h0());
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Integer> f42605c = new ArrayList();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f42606d;

    /* compiled from: CollectShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CollectShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a();

        void b(boolean z10);
    }

    /* compiled from: CollectShortsTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_SHORTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void d(int i10) {
        if (this.f42605c.isEmpty() || (!this.f42605c.contains(Integer.valueOf(i10)) && i10 > ((Number) CollectionsKt.C0(this.f42605c)).intValue())) {
            this.f42605c.add(Integer.valueOf(i10));
            Logger logger = Logger.f41511a;
            logger.e("CollectShortsTipFeature", "addPlayedEpisodeNum -> " + i10);
        }
    }

    private final void e() {
        ImmersionJobsManager immersionJobsManager = this.f42603a;
        if (immersionJobsManager != null) {
            immersionJobsManager.b(ImmersionJobsManager.JobType.HIDE_COLLECT_SHORTS_TIP);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(e eVar) {
        b bVar = eVar.f42606d;
        if (bVar != null) {
            bVar.a();
        }
    }

    private final void j() {
        ImmersionJobsManager immersionJobsManager = this.f42603a;
        if (immersionJobsManager != null) {
            ImmersionJobsManager.e(immersionJobsManager, ImmersionJobsManager.JobType.HIDE_COLLECT_SHORTS_TIP, 10000L, null, new Function0() { // from class: hf.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit k10;
                    k10 = com.startshorts.androidplayer.manager.immersion.feature.e.k(com.startshorts.androidplayer.manager.immersion.feature.e.this);
                    return k10;
                }
            }, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(e eVar) {
        b bVar = eVar.f42606d;
        if (bVar != null) {
            bVar.b(true);
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        ImmersionJobsManager g10;
        Intrinsics.checkNotNullParameter(message, "message");
        if (ABTestFactory.f42224a.S0().isEnable().invoke().booleanValue()) {
            return;
        }
        int i10 = c.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    Logger.f41511a.h("CollectShortsTipFeature", "clear mPlayedEpisodeNumList");
                    this.f42605c.clear();
                    e();
                    b bVar = this.f42606d;
                    if (bVar != null) {
                        bVar.b(false);
                        return;
                    }
                    return;
                }
                return;
            }
            BaseEpisode f10 = f(message);
            if (f10 == null || (g10 = g(message)) == null) {
                return;
            }
            this.f42603a = g10;
            d(f10.getEpisodeNum());
            if (this.f42605c.size() >= 3 && !f10.isCollected() && !this.f42604b.contains(Integer.valueOf(f10.getShortPlayId())) && !f10.isTrailer()) {
                this.f42604b.add(Integer.valueOf(f10.getShortPlayId()));
                ud.b.f68412a.s3(this.f42604b);
                h0.f51735a.e(new Runnable() { // from class: hf.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.startshorts.androidplayer.manager.immersion.feature.e.h(com.startshorts.androidplayer.manager.immersion.feature.e.this);
                    }
                });
                j();
                EventManager eventManager = EventManager.f42463a;
                EventManager.s0(eventManager, "favorite_hint_show", eventManager.C(f10), 0L, 4, null);
                return;
            }
            return;
        }
        au.c.d().p(this);
    }

    @Nullable
    public BaseEpisode f(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Nullable
    public ImmersionJobsManager g(@NotNull k kVar) {
        return IImmersionFeature.a.c(this, kVar);
    }

    public final void i(@Nullable b bVar) {
        this.f42606d = bVar;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("CollectShortsTipFeature", "receive RefreshShortsCollectEvent -> " + event);
        if (event.getCollect()) {
            e();
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        au.c.d().r(this);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.COLLECT_SHORTS_TIP;
    }
}
