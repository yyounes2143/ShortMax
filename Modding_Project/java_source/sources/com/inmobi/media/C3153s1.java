package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.s1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3153s1 implements InterfaceC3074n1 {
    @Override // com.inmobi.media.InterfaceC3074n1
    public final void a(P9 response, String locationOnDisk, C3008j asset) {
        Object obj;
        String str;
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3169t1 c3169t1 = C3169t1.f25278a;
        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
        AdConfig.AssetCacheConfig assetCacheConfig = C3169t1.f25280c;
        if (assetCacheConfig != null) {
            C2992i a10 = new C2992i().a(asset.f24869b, locationOnDisk, response, assetCacheConfig.getMaxRetries(), assetCacheConfig.getTimeToLive());
            int i10 = a10.f24830a;
            String str2 = a10.f24832c;
            if (str2 == null) {
                str2 = "";
            }
            str = "access$getTAG$p(...)";
            obj = "t1";
            C3008j c3008j = new C3008j(i10, str2, a10.f24833d, a10.f24831b, a10.f24834e, a10.f24835f, a10.f24836g, a10.f24837h);
            Nc.a().a(c3008j);
            c3008j.f24877j = asset.f24877j;
            c3008j.f24878k = asset.f24878k;
            C3169t1.f25278a.a(c3008j, (byte) -1);
        } else {
            obj = "t1";
            str = "access$getTAG$p(...)";
        }
        try {
            C3169t1 c3169t12 = C3169t1.f25278a;
            if (C3169t1.f25287j.get()) {
                return;
            }
            c3169t12.c();
        } catch (Exception e10) {
            C3169t1 c3169t13 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue(obj, str);
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @Override // com.inmobi.media.InterfaceC3074n1
    public final void a(C3008j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3169t1 c3169t1 = C3169t1.f25278a;
        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
        String str = asset.f24869b;
        C3169t1 c3169t12 = C3169t1.f25278a;
        C3169t1.f25288k.remove(str);
        if (asset.f24871d <= 0) {
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            c3169t12.a(asset, asset.f24879l);
            C3058m1 a10 = Nc.a();
            a10.getClass();
            Intrinsics.checkNotNullParameter(asset, "asset");
            a10.a("id = ?", new String[]{String.valueOf(asset.f24868a)});
        } else {
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            asset.f24872e = System.currentTimeMillis();
            Nc.a().a(asset);
            if (T9.a(false) != null) {
                c3169t12.a(asset, asset.f24879l);
            }
        }
        try {
            if (C3169t1.f25287j.get()) {
                return;
            }
            c3169t12.c();
        } catch (Exception e10) {
            C3169t1 c3169t13 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }
}
