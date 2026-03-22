package com.inmobi.media;

import android.util.Log;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C2912d0;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.d0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2912d0 {

    /* renamed from: a  reason: collision with root package name */
    public AdConfig f24566a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicBoolean f24567b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicBoolean f24568c;

    /* renamed from: d  reason: collision with root package name */
    public final HashMap f24569d;

    public C2912d0(AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.f24566a = adConfig;
        this.f24567b = new AtomicBoolean(false);
        this.f24568c = new AtomicBoolean(false);
        this.f24569d = new HashMap();
        Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullParameter("adding listener to dao", "message");
        Log.i("AdQualityBeaconExecutor", "adding listener to dao");
        Uc.a(new Runnable() { // from class: ub.x3
            @Override // java.lang.Runnable
            public final void run() {
                C2912d0.a(C2912d0.this);
            }
        });
    }

    public static final void a(C2912d0 queueUpdateListener) {
        Intrinsics.checkNotNullParameter(queueUpdateListener, "this$0");
        ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
        C2961g0 c2961g0 = (C2961g0) Nc.f23910a.getValue();
        c2961g0.getClass();
        Intrinsics.checkNotNullParameter(queueUpdateListener, "queueUpdateListener");
        c2961g0.f24752b = queueUpdateListener;
    }

    public final void a() {
        if (this.f24567b.get()) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("executor already started. ignore.", "message");
            Log.i("AdQualityBeaconExecutor", "executor already started. ignore.");
        } else if (!this.f24566a.getAdQuality().getEnabled()) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("kill switch encountered. skip", "message");
            Log.i("AdQualityBeaconExecutor", "kill switch encountered. skip");
        } else {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("beacon executor starting", "message");
            Log.i("AdQualityBeaconExecutor", "beacon executor starting");
            C2878b0 execute = new C2878b0(this);
            Intrinsics.checkNotNullParameter(execute, "execute");
            ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
            C2945f0.a(new C2894c(execute));
        }
    }
}
