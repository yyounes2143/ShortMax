package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.NativeAdEventListener;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class V7 extends U7 {

    /* renamed from: a  reason: collision with root package name */
    public final NativeAdEventListener f24310a;

    public V7(NativeAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f24310a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, AdMetaInfo info) {
        InMobiNative ad2 = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f24310a.onAdFetchSuccessful(ad2, info);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void b(Object obj, AdMetaInfo info) {
        InMobiNative ad2 = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f24310a.onAdLoadSucceeded(ad2, info);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj) {
        InMobiNative ad2 = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        this.f24310a.onAdImpression(ad2);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, InMobiAdRequestStatus status) {
        InMobiNative ad2 = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f24310a.onAdLoadFailed(ad2, status);
    }

    @Override // com.inmobi.media.AbstractC3263z
    public final void a(Object obj, String data) {
        InMobiNative ad2 = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", NativeAdEventListener.class, InMobiNative.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f24310a, ad2, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
