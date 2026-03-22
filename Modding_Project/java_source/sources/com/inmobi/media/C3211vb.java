package com.inmobi.media;

import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.vb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3211vb implements InterfaceC3105p0 {

    /* renamed from: a  reason: collision with root package name */
    public final AdQualityResult f25375a;

    public C3211vb(AdQualityResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.f25375a = result;
    }

    @Override // com.inmobi.media.InterfaceC3105p0
    public final Object a() {
        boolean z10;
        try {
            ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
            ((C2961g0) Nc.f23910a.getValue()).a(this.f25375a);
            z10 = true;
        } catch (SQLiteException e10) {
            Intrinsics.checkNotNullParameter("QueueProcess", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("failed to queue the result", "message");
            Log.e("QueueProcess", "failed to queue the result", e10);
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
