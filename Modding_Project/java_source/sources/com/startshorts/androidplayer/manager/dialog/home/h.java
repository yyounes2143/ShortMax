package com.startshorts.androidplayer.manager.dialog.home;

import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.bean.shorts.RecommendShorts;
import com.startshorts.androidplayer.manager.dialog.home.c;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.NewUserRecommendShortsFragment;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RecommendShortsDialogProcessor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class h implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42434a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static boolean f42435b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f42436c;

    /* compiled from: RecommendShortsDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return h.f42436c;
        }

        public final void b(boolean z10) {
            h.f42435b = z10;
        }

        public final void c(boolean z10) {
            h.f42436c = z10;
        }

        private a() {
        }
    }

    /* compiled from: RecommendShortsDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f42437a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MainActivity f42438b;

        b(Function0<Unit> function0, MainActivity mainActivity) {
            this.f42437a = function0;
            this.f42438b = mainActivity;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            h.f42434a.c(false);
            this.f42437a.invoke();
            DiscoverTabFragment f02 = this.f42438b.f0();
            if (f02 != null) {
                f02.f1();
            }
        }
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    public boolean a() {
        return c.a.b(this);
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @Nullable
    public Object b(@NotNull MainActivity mainActivity, @NotNull Function0<Unit> function0, @NotNull rs.c<? super Boolean> cVar) {
        if (!f(mainActivity)) {
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        if (!f42435b) {
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        f42435b = false;
        CampaignRepo campaignRepo = CampaignRepo.f43678a;
        QueryCampaignRecommendShortsResult v10 = campaignRepo.v();
        if (v10 == null) {
            return kotlin.coroutines.jvm.internal.a.a(false);
        }
        List<RecommendShorts> recommendList = v10.getRecommendList();
        if (recommendList != null && !recommendList.isEmpty()) {
            NewUserRecommendShortsFragment b10 = NewUserRecommendShortsFragment.E.b(v10);
            b10.w(new b(function0, mainActivity));
            FragmentManager supportFragmentManager = mainActivity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            f42436c = b10.x(supportFragmentManager);
            campaignRepo.o();
            ud.b.f68412a.k3(true);
            return kotlin.coroutines.jvm.internal.a.a(true);
        }
        return kotlin.coroutines.jvm.internal.a.a(false);
    }

    public boolean f(@NotNull MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.p0();
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public String name() {
        return "RecommendShortsDialogProcessor";
    }

    @Override // com.startshorts.androidplayer.manager.dialog.home.c
    @NotNull
    public HomeDialogPriority priority() {
        return HomeDialogPriority.DIALOG_RECOMMEND_SHORTS;
    }
}
