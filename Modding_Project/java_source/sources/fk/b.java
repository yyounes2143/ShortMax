package fk;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppOpenAdUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f51705a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f51706b = "AppOpenAdUtil";

    private b() {
    }

    private final void a() {
        ud.b bVar = ud.b.f68412a;
        bVar.Q2(0);
        bVar.R2(TimeUtil.f48175a.q(DeviceUtil.f48146a.K()));
    }

    public final boolean b() {
        int b02 = AccountRepo.f43052a.b0();
        int C = ud.b.f68412a.C();
        Logger logger = Logger.f41511a;
        String str = f51706b;
        logger.h(str, " appOpenGap:" + b02 + "  appColdBootCount:" + C + ' ');
        if (b02 <= 0 || C <= 1 || (C - 1) % (b02 + 1) == 0) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        int c02 = AccountRepo.f43052a.c0();
        ud.b bVar = ud.b.f68412a;
        int H = bVar.H();
        int q10 = TimeUtil.f48175a.q(DeviceUtil.f48146a.K());
        int G = bVar.G();
        Logger.f41511a.h(f51706b, " appOpenShowMax:" + c02 + "  appOpenAdShowTime:" + H + " todayTime:" + q10 + " appOpenAdShowCount:" + G);
        if (q10 != H) {
            a();
            G = 0;
        }
        if (c02 > 0 && G >= c02) {
            return false;
        }
        return true;
    }

    public final void d() {
        ud.b bVar = ud.b.f68412a;
        bVar.Q2(bVar.G() + 1);
        bVar.R2(TimeUtil.f48175a.q(DeviceUtil.f48146a.K()));
    }
}
