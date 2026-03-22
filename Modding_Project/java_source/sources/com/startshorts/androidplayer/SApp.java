package com.startshorts.androidplayer;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import fk.v;
import fk.y;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import nk.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: SApp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SApp extends Application {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f37162b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f37163a = new AtomicBoolean(false);

    /* compiled from: SApp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void a() {
        b.f62972a.k(this);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(@NotNull Context base) {
        Intrinsics.checkNotNullParameter(base, "base");
        super.attachBaseContext(base);
        u.f51776a.f(this);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        try {
            if (y.f51785a.c(this)) {
                Logger logger = Logger.f41511a;
                logger.h("SApp", "onConfigurationChanged -> " + newConfig);
                DeviceUtil deviceUtil = DeviceUtil.f48146a;
                deviceUtil.l0();
                v.f51778a.a(this, deviceUtil.e());
            }
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("SApp", "Config change error " + e10);
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Logger logger = Logger.f41511a;
        logger.e("SApp", "Build Version -> 2.18.0.1_20260312_151615");
        y yVar = y.f51785a;
        if (yVar.c(this)) {
            if (this.f37163a.compareAndSet(false, true)) {
                a();
                long L = DeviceUtil.f48146a.L() - ud.a.f68411a.d();
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString(HiAnalyticsConstant.BI_KEY_COST_TIME, String.valueOf(L));
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "main_process_application_create", bundle, 0L, 4, null);
                logger.e("SApp", "app launch took " + L + "ms");
            }
        } else if (!yVar.b(this, getPackageName())) {
            Intent intent = new Intent();
            intent.setPackage(getPackageName());
            intent.setAction("com.shorttv.live.START_MAIN_PROCESS");
            sendBroadcast(intent);
        }
    }
}
