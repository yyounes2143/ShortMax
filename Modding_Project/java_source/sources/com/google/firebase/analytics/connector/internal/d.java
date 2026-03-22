package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import java.util.Set;
import n7.a;
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    final Set f20341a;

    /* renamed from: b  reason: collision with root package name */
    private final a.b f20342b;

    /* renamed from: c  reason: collision with root package name */
    private final AppMeasurementSdk f20343c;

    /* renamed from: d  reason: collision with root package name */
    private final c f20344d;

    public d(AppMeasurementSdk appMeasurementSdk, a.b bVar) {
        this.f20342b = bVar;
        this.f20343c = appMeasurementSdk;
        c cVar = new c(this);
        this.f20344d = cVar;
        appMeasurementSdk.registerOnMeasurementEventListener(cVar);
        this.f20341a = new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ a.b a() {
        return this.f20342b;
    }
}
