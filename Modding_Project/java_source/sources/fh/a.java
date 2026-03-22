package fh;

import com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import jk.f;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private DailyWatchPopResult f51697a;

    private final String d() {
        return a();
    }

    @NotNull
    public final String a() {
        return TimeUtil.f48175a.h(f.a(new Date()), RewardsFragment.Y.a(), TimeUtil.Template.YEAR_MONTH_DAY);
    }

    @Nullable
    public final DailyWatchPopResult b() {
        return this.f51697a;
    }

    public final boolean c() {
        return ud.b.f68412a.y1(d());
    }

    public final boolean e() {
        return ud.b.f68412a.d0(AccountRepo.f43052a.t0(), a());
    }

    public final void f() {
        ud.b.f68412a.o3(AccountRepo.f43052a.t0(), a(), true);
    }

    public final void g(@Nullable DailyWatchPopResult dailyWatchPopResult) {
        this.f51697a = dailyWatchPopResult;
    }

    public final void h() {
        ud.b.f68412a.L4(true, d());
    }
}
