package fk;

import android.os.Bundle;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppUsageStatistics.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c {
    @NotNull

    /* renamed from: a */
    public static final c f51707a = new c();

    /* renamed from: b */
    private static long f51708b = -1;

    private c() {
    }

    public static /* synthetic */ void c(c cVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        cVar.b(z10);
    }

    public final void a() {
        if (f51708b == -1) {
            return;
        }
        long K = DeviceUtil.f48146a.K();
        long j10 = (K - f51708b) / 1000;
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(UUID.randomUUID());
        sb2.append('_');
        sb2.append(System.nanoTime());
        bundle.putString("session_id", sb2.toString());
        bundle.putString("duration", String.valueOf(j10));
        bundle.putString(MetricsSQLiteCacheKt.METRICS_START_TIME, String.valueOf(f51708b));
        bundle.putString(MetricsSQLiteCacheKt.METRICS_END_TIME, String.valueOf(K));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "app_usage_duration", bundle, 0L, 4, null);
        Logger logger = Logger.f41511a;
        logger.h("AppUsageStatistics", "onBackground -> time(" + K + ')');
        f51708b = -1L;
    }

    public final void b(boolean z10) {
        if (f51708b == -1 || z10) {
            f51708b = DeviceUtil.f48146a.K();
            Logger logger = Logger.f41511a;
            logger.h("AppUsageStatistics", "onForeground -> forceUpdate(" + z10 + ") time(" + f51708b + ')');
        }
    }
}
