package com.inmobi.media;

import android.content.Context;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Ud {

    /* renamed from: a  reason: collision with root package name */
    public static final C6 f24276a;

    /* renamed from: b  reason: collision with root package name */
    public static int f24277b;

    /* renamed from: c  reason: collision with root package name */
    public static Integer f24278c;

    static {
        C6 c62;
        Context d10 = Uc.d();
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            c62 = B6.a(d10, "imtelemetrydboverflow");
        } else {
            c62 = null;
        }
        f24276a = c62;
        f24277b = -1;
    }

    public static int a() {
        if (f24277b == -1) {
            C6 c62 = f24276a;
            int i10 = 0;
            if (c62 != null) {
                Intrinsics.checkNotNullParameter(MetricsSQLiteCacheKt.METRICS_COUNT, "key");
                i10 = c62.f23530a.getInt(MetricsSQLiteCacheKt.METRICS_COUNT, 0);
            }
            f24277b = i10;
        }
        return f24277b;
    }
}
