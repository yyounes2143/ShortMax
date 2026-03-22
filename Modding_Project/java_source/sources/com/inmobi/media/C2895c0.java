package com.inmobi.media;

import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.c0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2895c0 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2912d0 f24533a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AdQualityResult f24534b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2895c0(C2912d0 c2912d0, AdQualityResult adQualityResult) {
        super(1);
        this.f24533a = c2912d0;
        this.f24534b = adQualityResult;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Jb jb2;
        Jb jb3;
        I9 i92 = (I9) obj;
        if (EnumC3093o4.f25090d.equals(i92)) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("no network... skipping cleanup", "message");
            Log.i("AdQualityBeaconExecutor", "no network... skipping cleanup");
        } else {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("beacon hit completed... cleaning up", "message");
            Log.i("AdQualityBeaconExecutor", "beacon hit completed... cleaning up");
            if (i92 == null) {
                WeakReference weakReference = (WeakReference) this.f24533a.f24569d.get(this.f24534b.getBeaconUrl());
                if (weakReference != null && (jb3 = (Jb) weakReference.get()) != null) {
                    jb3.f23760a.c("window.mraidview.broadcastEvent('AdReportSuccess')");
                }
            } else {
                WeakReference weakReference2 = (WeakReference) this.f24533a.f24569d.get(this.f24534b.getBeaconUrl());
                if (weakReference2 != null && (jb2 = (Jb) weakReference2.get()) != null) {
                    jb2.f23760a.c("window.mraidview.broadcastEvent('AdReportFailed')");
                }
            }
            C2912d0 c2912d0 = this.f24533a;
            AdQualityResult result = this.f24534b;
            c2912d0.getClass();
            Intrinsics.checkNotNullParameter(result, "result");
            try {
                ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
                C2961g0 c2961g0 = (C2961g0) Nc.f23910a.getValue();
                c2961g0.getClass();
                Intrinsics.checkNotNullParameter(result, "result");
                Log.i("AdQualityDao", "de-queueing");
                c2961g0.a("image_location=?", new String[]{result.getImageLocation()});
                if (c2961g0.f24752b != null) {
                    Log.i("AdQualityDao", "sending callback - dequeue");
                }
                if (result.getImageLocation().length() == 0) {
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
                    Intrinsics.checkNotNullParameter("no image to clear. clean up done.", "message");
                    Log.i("AdQualityBeaconExecutor", "no image to clear. clean up done.");
                } else {
                    File file = new File(result.getImageLocation());
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
                    Intrinsics.checkNotNullParameter("deleting file", "message");
                    Log.i("AdQualityBeaconExecutor", "deleting file");
                    String message = "delete file result - " + file.delete();
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
                    Intrinsics.checkNotNullParameter(message, "message");
                    Log.i("AdQualityBeaconExecutor", message);
                }
            } catch (Exception e10) {
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter("exception while cleanup", "message");
                Log.e("AdQualityBeaconExecutor", "exception while cleanup", e10);
            }
        }
        return Unit.f60915a;
    }
}
