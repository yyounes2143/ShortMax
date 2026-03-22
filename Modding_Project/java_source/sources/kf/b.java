package kf;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.provider.Settings;
import com.startshorts.androidplayer.bean.eventbus.GooglePayDialogVisibleEvent;
import com.startshorts.androidplayer.bean.eventbus.MiniWindowVisibleEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PipManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f60717c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f60715a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static String f60716b = "";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i f60718d = c.b(new Function0() { // from class: kf.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashMap g10;
            g10 = b.g();
            return g10;
        }
    });

    private b() {
    }

    private final HashMap<String, String> d() {
        return (HashMap) f60718d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap g() {
        return new HashMap();
    }

    public final boolean b() {
        if (!f60717c) {
            return false;
        }
        f60717c = false;
        ImmersionMiniWindow.a aVar = ImmersionMiniWindow.J;
        BaseEpisode c10 = aVar.c();
        if (c10 == null) {
            return false;
        }
        ImmersionActivity.a aVar2 = ImmersionActivity.V0;
        Context b10 = u.f51776a.b();
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("pip_window");
        immersionParams.setType(2);
        immersionParams.setEpisodeList(CollectionsKt.t(c10));
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(c10.getShortPlayId());
        immersionShortsInfo.setVideoType(c10.getVideoType());
        if (c10.isTrailer()) {
            immersionShortsInfo.setBindShortsId(c10.getBindShortPlayId());
            immersionShortsInfo.setShortPlayCode(String.valueOf(c10.getShortPlayId()));
        } else {
            immersionShortsInfo.setShortPlayCode(c10.getShortPlayCode());
        }
        immersionShortsInfo.setShortsName(c10.getShortPlayName());
        immersionShortsInfo.setCover(c10.getCoverId());
        immersionShortsInfo.setUpack(c10.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setPlaySpeed(aVar.d());
        Unit unit = Unit.f60915a;
        aVar2.a(b10, immersionParams);
        return true;
    }

    @NotNull
    public final String c() {
        return f60716b;
    }

    public final boolean e() {
        return f60717c;
    }

    public final void f(@NotNull Application application) {
        Intrinsics.checkNotNullParameter(application, "application");
        application.registerActivityLifecycleCallbacks(this);
    }

    public final void h(boolean z10) {
        f60717c = z10;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(activity.getClass().getSimpleName());
        sb2.append(" onActivityCreated ");
        boolean z10 = activity instanceof BaseActivity;
        sb2.append(z10);
        logger.h("PipManager", sb2.toString());
        if (!z10) {
            if (cd.a.f3461a.a(activity)) {
                au.c.d().l(new GooglePayDialogVisibleEvent(true));
            } else {
                au.c.d().l(new MiniWindowVisibleEvent(false));
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NotNull Activity activity) {
        String j10;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(activity.getClass().getSimpleName());
        sb2.append(" onActivityDestroyed ");
        boolean z10 = activity instanceof BaseActivity;
        sb2.append(z10);
        logger.h("PipManager", sb2.toString());
        if (!z10) {
            if (cd.a.f3461a.a(activity)) {
                au.c.d().l(new GooglePayDialogVisibleEvent(false));
            } else if (ABTestFactory.f42224a.o1().isEnable().invoke().booleanValue() && !b()) {
                au.c.d().l(new MiniWindowVisibleEvent(true));
            }
        } else if ((activity instanceof MainActivity) && (j10 = ((MainActivity) activity).j()) != null && Intrinsics.areEqual(f60715a.d().remove(j10), DeviceUtil.f48146a.e())) {
            ImmersionMiniWindow.J.b(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        f60716b = activity.getClass().getSimpleName();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        String j10;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if ((activity instanceof MainActivity) && (j10 = ((MainActivity) activity).j()) != null) {
            f60715a.d().put(j10, DeviceUtil.f48146a.e());
        }
        ImmersionMiniWindow.a aVar = ImmersionMiniWindow.J;
        if (aVar.c() != null && !Settings.canDrawOverlays(activity)) {
            aVar.b(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }
}
