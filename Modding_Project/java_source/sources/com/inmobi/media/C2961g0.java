package com.inmobi.media;

import android.content.ContentValues;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.g0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2961g0 extends T1 {

    /* renamed from: b  reason: collision with root package name */
    public C2912d0 f24752b;

    public C2961g0() {
        super("ad_quality_db", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, image_location TEXT NOT NULL, sdk_model_result TEXT, beacon_url TEXT NOT NULL, extras TEXT)");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("image_location");
        String asString2 = contentValues.getAsString("beacon_url");
        String asString3 = contentValues.getAsString("sdk_model_result");
        String asString4 = contentValues.getAsString("extras");
        if ((asString2 != null && asString2.length() != 0) || (asString != null && asString.length() != 0)) {
            Intrinsics.checkNotNull(asString);
            Intrinsics.checkNotNull(asString2);
            return new AdQualityResult(asString, asString3, asString2, asString4);
        }
        String asString5 = contentValues.getAsString("id");
        Intrinsics.checkNotNullExpressionValue(asString5, "getAsString(...)");
        a("id=?", new String[]{asString5});
        return null;
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        AdQualityResult item = (AdQualityResult) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        ContentValues contentValues = new ContentValues();
        contentValues.put("image_location", item.getImageLocation());
        String sdkModelResult = item.getSdkModelResult();
        if (sdkModelResult == null) {
            sdkModelResult = "";
        }
        contentValues.put("sdk_model_result", sdkModelResult);
        contentValues.put("beacon_url", item.getBeaconUrl());
        contentValues.put("extras", item.getExtras());
        return contentValues;
    }

    public final void a(AdQualityResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        Log.i("AdQualityDao", "queueing");
        a((Object) result);
        C2912d0 c2912d0 = this.f24752b;
        if (c2912d0 != null) {
            Log.i("AdQualityDao", "sending callback - queued");
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
            Intrinsics.checkNotNullParameter("item update callback received", "message");
            Log.i("AdQualityBeaconExecutor", "item update callback received");
            if (c2912d0.f24568c.get()) {
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter("resume executor", "message");
                Log.i("AdQualityBeaconExecutor", "resume executor");
                c2912d0.f24568c.set(false);
                C2878b0 execute = new C2878b0(c2912d0);
                Intrinsics.checkNotNullParameter(execute, "execute");
                ScheduledExecutorService scheduledExecutorService = C2945f0.f24716a;
                C2945f0.a(new C2894c(execute));
            }
        }
    }
}
