package io.bidmachine.ads.networks.vast;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.CacheControl;
import xq.k;
import xq.o;
/* compiled from: VastParams.java */
/* loaded from: classes7.dex */
class e extends o {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final String f53899b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    final CacheControl f53900c;

    /* renamed from: d  reason: collision with root package name */
    final float f53901d;

    /* renamed from: e  reason: collision with root package name */
    final int f53902e;

    /* renamed from: f  reason: collision with root package name */
    final int f53903f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f53904g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f53905h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull k kVar) {
        super(kVar);
        this.f53899b = kVar.k("creativeAdm");
        this.f53900c = fr.d.b(kVar.n("cacheControl"));
        this.f53901d = kVar.o("placeholderTimeoutSec");
        this.f53902e = kVar.e("skipOffset");
        this.f53903f = kVar.e("companionSkipOffset");
        this.f53904g = kVar.d("useNativeClose");
        boolean z10 = true;
        this.f53905h = (kVar.l("omsdk_enabled", true) && ym.a.g()) ? false : false;
    }

    public boolean a(@NonNull xq.c cVar) {
        if (TextUtils.isEmpty(this.f53899b)) {
            cVar.onAdLoadFailed(fr.a.k("creativeAdm"));
            return false;
        }
        return true;
    }
}
