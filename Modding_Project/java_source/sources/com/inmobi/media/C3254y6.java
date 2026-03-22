package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3254y6 extends N9 {

    /* renamed from: y  reason: collision with root package name */
    public final AdQualityResult f25452y;

    /* renamed from: z  reason: collision with root package name */
    public final AdConfig.AdQualityConfig f25453z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3254y6(AdQualityResult result, C3198ue uidMap, AdConfig.AdQualityConfig config) {
        super(ShareTarget.METHOD_POST, result.getBeaconUrl(), uidMap, false, (InterfaceC3269z5) null, "application/json", 64);
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(uidMap, "uidMap");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f25452y = result;
        this.f25453z = config;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(13:3|4|5|(1:7)|8|(1:36)|11|12|13|(4:15|(1:19)|21|(2:23|(2:25|26)(1:28))(2:29|30))|31|21|(0)(0))|41|11|12|13|(0)|31|21|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b9, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ba, code lost:
        kotlin.jvm.internal.Intrinsics.checkNotNullParameter("JsonBeaconRequest", com.ss.ttvideoengine.ITTVideoEngineEventSource.KEY_TAG);
        kotlin.jvm.internal.Intrinsics.checkNotNullParameter("error while adding extras", "message");
        android.util.Log.e("JsonBeaconRequest", "error while adding extras", r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a2 A[Catch: JSONException -> 0x00b9, TryCatch #0 {JSONException -> 0x00b9, blocks: (B:20:0x0096, B:22:0x00a2, B:24:0x00aa, B:26:0x00ae), top: B:38:0x0096 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f5  */
    @Override // com.inmobi.media.N9
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3254y6.f():void");
    }
}
