package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import n7.a;
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final a.b f20346a;

    /* renamed from: b  reason: collision with root package name */
    private final AppMeasurementSdk f20347b;

    /* renamed from: c  reason: collision with root package name */
    private final e f20348c;

    public f(AppMeasurementSdk appMeasurementSdk, a.b bVar) {
        this.f20346a = bVar;
        this.f20347b = appMeasurementSdk;
        e eVar = new e(this);
        this.f20348c = eVar;
        appMeasurementSdk.registerOnMeasurementEventListener(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ a.b a() {
        return this.f20346a;
    }
}
