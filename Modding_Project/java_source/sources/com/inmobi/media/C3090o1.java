package com.inmobi.media;

import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.o1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3090o1 implements InterfaceC3074n1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ HandlerC3106p1 f25085a;

    public C3090o1(HandlerC3106p1 handlerC3106p1) {
        this.f25085a = handlerC3106p1;
    }

    @Override // com.inmobi.media.InterfaceC3074n1
    public final void a(P9 response, String locationOnDisk, C3008j asset) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3169t1 c3169t1 = (C3169t1) this.f25085a.f25128a.get();
        AdConfig.AssetCacheConfig assetCacheConfig = c3169t1 != null ? C3169t1.f25280c : null;
        if (assetCacheConfig != null) {
            C3169t1 c3169t12 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            C2992i a10 = new C2992i().a(asset.f24869b, locationOnDisk, response, assetCacheConfig.getMaxRetries(), assetCacheConfig.getTimeToLive());
            int i10 = a10.f24830a;
            String str = a10.f24832c;
            if (str == null) {
                str = "";
            }
            C3008j c3008j = new C3008j(i10, str, a10.f24833d, a10.f24831b, a10.f24834e, a10.f24835f, a10.f24836g, a10.f24837h);
            Nc.a().a(c3008j);
            c3008j.f24877j = asset.f24877j;
            c3008j.f24878k = asset.f24878k;
            c3169t1.a(c3008j, (byte) -1);
            HandlerC3106p1 handlerC3106p1 = this.f25085a;
            handlerC3106p1.getClass();
            try {
                handlerC3106p1.sendEmptyMessage(3);
                return;
            } catch (Exception unused) {
                C3169t1 c3169t13 = C3169t1.f25278a;
                Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                return;
            }
        }
        C3169t1 c3169t14 = C3169t1.f25278a;
        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
    }

    @Override // com.inmobi.media.InterfaceC3074n1
    public final void a(C3008j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3169t1 c3169t1 = (C3169t1) this.f25085a.f25128a.get();
        if (c3169t1 != null) {
            C3169t1 c3169t12 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            C3169t1.f25288k.remove(asset.f24869b);
            int i10 = asset.f24871d;
            if (i10 > 0) {
                asset.f24871d = i10 - 1;
                asset.f24872e = System.currentTimeMillis();
                Nc.a().a(asset);
                this.f25085a.a();
                return;
            }
            c3169t1.a(asset, asset.f24879l);
            HandlerC3106p1 handlerC3106p1 = this.f25085a;
            handlerC3106p1.getClass();
            try {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = asset;
                handlerC3106p1.sendMessage(obtain);
                return;
            } catch (Exception unused) {
                C3169t1 c3169t13 = C3169t1.f25278a;
                Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                return;
            }
        }
        C3169t1 c3169t14 = C3169t1.f25278a;
        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
    }
}
