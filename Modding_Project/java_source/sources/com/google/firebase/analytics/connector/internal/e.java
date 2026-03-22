package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public final class e implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f20345a;

    public e(f fVar) {
        Objects.requireNonNull(fVar);
        this.f20345a = fVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzjq
    public final void onEvent(String str, String str2, Bundle bundle, long j10) {
        if (str != null && b.c(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j10);
            bundle2.putBundle(MetricsSQLiteCacheKt.METRICS_PARAMS, bundle);
            this.f20345a.a().a(3, bundle2);
        }
    }
}
