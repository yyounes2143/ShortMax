package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class H3 {

    /* renamed from: a  reason: collision with root package name */
    public volatile CrashConfig f23693a;

    /* renamed from: b  reason: collision with root package name */
    public final H7 f23694b;

    /* renamed from: c  reason: collision with root package name */
    public final List f23695c;

    public H3(Context context, CrashConfig crashConfig, H7 eventBus) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        this.f23693a = crashConfig;
        this.f23694b = eventBus;
        List synchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(synchronizedList, "synchronizedList(...)");
        this.f23695c = synchronizedList;
        if (this.f23693a.getCrashConfig().getEnabled()) {
            synchronizedList.add(new C3044l3(Thread.getDefaultUncaughtExceptionHandler(), this));
        }
        if (this.f23693a.getANRConfig().getAppExitReason().getEnabled() && L3.f23796a.z()) {
            synchronizedList.add(new C2896c1(context, this, this.f23693a.getANRConfig().getAppExitReason().getIncidentWaitInterval(), this.f23693a.getANRConfig().getAppExitReason().getMaxNumberOfLines()));
        }
        if (this.f23693a.getANRConfig().getWatchdog().getEnabled()) {
            synchronizedList.add(new C2877b(this.f23693a.getANRConfig().getWatchdog().getInterval(), this));
        }
    }

    public final void a(T5 incidentEvent) {
        int i10;
        Intrinsics.checkNotNullParameter(incidentEvent, "incidentEvent");
        if ((incidentEvent instanceof C2913d1) && this.f23693a.getANRConfig().getAppExitReason().getEnabled()) {
            i10 = 152;
        } else if ((incidentEvent instanceof C3060m3) && this.f23693a.getCrashConfig().getEnabled()) {
            i10 = 150;
        } else if ((incidentEvent instanceof mf) && this.f23693a.getANRConfig().getWatchdog().getEnabled()) {
            i10 = 151;
        } else {
            return;
        }
        this.f23694b.b(new C2914d2(i10, incidentEvent.f24238a, kotlin.collections.p0.f(ms.k.a("data", incidentEvent))));
    }
}
