package com.bytedance.applog.monitor;

import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.a;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes3.dex */
public final class MonitorSampling {
    public static final MonitorSampling INSTANCE;

    /* renamed from: a  reason: collision with root package name */
    public static int f11839a = 5;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final String f11840b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f11841c;

    static {
        MonitorSampling monitorSampling = new MonitorSampling();
        INSTANCE = monitorSampling;
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkExpressionValueIsNotNull(uuid, "UUID.randomUUID().toString()");
        f11840b = uuid;
        f11841c = monitorSampling.a();
    }

    public static final int getSamplingPercent() {
        return f11839a;
    }

    public static final void setSamplingPercent(int i10) {
        f11839a = (i10 < 0 || i10 > 100) ? 5 : 5;
        f11841c = INSTANCE.a();
    }

    public final boolean a() {
        int abs = Math.abs(f11840b.hashCode() % 100);
        IAppLogLogger global = LoggerImpl.global();
        global.debug("MonitorSampling hash " + abs, new Object[0]);
        IAppLogLogger global2 = LoggerImpl.global();
        StringBuilder a10 = a.a("MonitorSampling samplingPercent ");
        a10.append(f11839a);
        global2.debug(a10.toString(), new Object[0]);
        if (abs > f11839a) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String getGlobalColdLaunchId$agent_liteGlobalRelease() {
        return f11840b;
    }

    public final boolean isSampling$agent_liteGlobalRelease() {
        return f11841c;
    }

    public final void setSampling$agent_liteGlobalRelease(boolean z10) {
        f11841c = z10;
    }

    public static /* synthetic */ void samplingPercent$annotations() {
    }
}
