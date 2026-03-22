package com.startshorts.androidplayer.manager.push;

import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rf.b;
/* compiled from: PushManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PushManager {

    /* renamed from: c */
    private static boolean f42840c;
    @Nullable

    /* renamed from: d */
    private static b f42841d;
    @NotNull

    /* renamed from: a */
    public static final PushManager f42838a = new PushManager();
    @NotNull

    /* renamed from: b */
    private static final Object f42839b = new Object();
    @NotNull

    /* renamed from: e */
    private static String f42842e = "-1";

    private PushManager() {
    }

    private final boolean a() {
        if (Build.VERSION.SDK_INT >= 33) {
            if (ContextCompat.checkSelfPermission(u.f51776a.b(), "android.permission.POST_NOTIFICATIONS") == 0) {
                return true;
            }
            return false;
        }
        NotificationManagerCompat from = NotificationManagerCompat.from(u.f51776a.b());
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        return from.areNotificationsEnabled();
    }

    public static /* synthetic */ r f(PushManager pushManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return pushManager.e(z10);
    }

    public final void b() {
        b bVar = f42841d;
        if (bVar != null) {
            bVar.a();
        }
    }

    public final void c() {
        b bVar;
        if (f42840c && (bVar = f42841d) != null) {
            bVar.e();
        }
    }

    public final void d() {
        synchronized (f42839b) {
            try {
                if (f42841d == null) {
                    Logger.f41511a.h("PushManager", "create DefaultPushManager");
                    f42841d = new DefaultPushManager();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public final r e(boolean z10) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "pushPermanentNotification", false, new PushManager$pushPermanentNotification$1(null), 2, null);
    }

    public final void g() {
        b bVar = f42841d;
        if (bVar != null) {
            bVar.c();
        }
    }

    public final void h(@NotNull ShortPlayNotification bean) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(bean, "bean");
        Integer shortId = bean.getShortId();
        if (shortId != null) {
            i10 = shortId.intValue();
        } else {
            i10 = 0;
        }
        Integer dramaNum = bean.getDramaNum();
        if (dramaNum != null) {
            i11 = dramaNum.intValue();
        } else {
            i11 = -1;
        }
        if (i10 > 0 && i11 >= 0) {
            f42840c = true;
            b bVar = f42841d;
            if (bVar != null) {
                bVar.b(bean);
            }
        }
    }

    public final void i() {
        b bVar = f42841d;
        if (bVar != null) {
            bVar.d();
        }
    }

    public final void j() {
        String str;
        String valueOf = String.valueOf(TimeUtil.f48175a.b());
        if (Intrinsics.areEqual(f42842e, "-1")) {
            f42842e = ud.b.f68412a.R0();
        }
        if (Intrinsics.areEqual(valueOf, f42842e)) {
            return;
        }
        boolean a10 = a();
        boolean canDrawOverlays = Settings.canDrawOverlays(u.f51776a.b());
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (a10) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        bundle.putString("notification", str);
        if (canDrawOverlays) {
            str2 = "1";
        }
        bundle.putString("floating_window", str2);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "permissions_dau", bundle, 0L, 4, null);
        f42842e = valueOf;
        ud.b.f68412a.d4(f42842e);
    }

    public final void k() {
        d();
        b bVar = f42841d;
        if (bVar != null) {
            bVar.start();
        }
    }

    public final void l() {
        b bVar = f42841d;
        if (bVar != null) {
            bVar.stop();
        }
    }
}
