package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjm;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public final class c implements AppMeasurementSdk.OnEventListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f20340a;

    public c(d dVar) {
        Objects.requireNonNull(dVar);
        this.f20340a = dVar;
    }

    @Override // com.google.android.gms.measurement.api.AppMeasurementSdk.OnEventListener, com.google.android.gms.measurement.internal.zzjq
    public final void onEvent(String str, String str2, Bundle bundle, long j10) {
        d dVar = this.f20340a;
        if (!dVar.f20341a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        int i10 = b.f20339g;
        String zza = zzjm.zza(str2);
        if (zza != null) {
            str2 = zza;
        }
        bundle2.putString("events", str2);
        dVar.a().a(2, bundle2);
    }
}
