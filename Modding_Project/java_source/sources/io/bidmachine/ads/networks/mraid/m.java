package io.bidmachine.ads.networks.mraid;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.protobuf.AdExtension;
import xq.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MraidParams.java */
/* loaded from: classes7.dex */
public class m extends o {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final String f53860b;

    /* renamed from: c  reason: collision with root package name */
    final int f53861c;

    /* renamed from: d  reason: collision with root package name */
    final int f53862d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f53863e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f53864f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    final CacheControl f53865g;

    /* renamed from: h  reason: collision with root package name */
    final float f53866h;

    /* renamed from: i  reason: collision with root package name */
    final int f53867i;

    /* renamed from: j  reason: collision with root package name */
    final boolean f53868j;

    /* renamed from: k  reason: collision with root package name */
    final boolean f53869k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    final String f53870l;

    /* renamed from: m  reason: collision with root package name */
    final int f53871m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    final IabElementStyle f53872n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    final IabElementStyle f53873o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    final IabElementStyle f53874p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(@NonNull xq.k kVar) {
        super(kVar);
        IabElementStyle iabElementStyle;
        IabElementStyle iabElementStyle2;
        this.f53860b = kVar.k("creativeAdm");
        this.f53861c = kVar.e("width");
        this.f53862d = kVar.e("height");
        this.f53865g = fr.d.b(kVar.n("cacheControl"));
        this.f53866h = kVar.o("placeholderTimeoutSec");
        this.f53867i = kVar.e("skipOffset");
        this.f53863e = kVar.d("useNativeClose");
        boolean z10 = true;
        this.f53864f = (kVar.l("omsdk_enabled", true) && ym.a.g()) ? false : false;
        this.f53868j = kVar.d("r1");
        this.f53869k = kVar.d("r2");
        this.f53870l = kVar.k("store_url");
        this.f53871m = kVar.e("progress_duration");
        Object n10 = kVar.n("close_button_control_asset");
        if (n10 instanceof AdExtension.ControlAsset) {
            iabElementStyle = fr.d.c((AdExtension.ControlAsset) n10);
        } else {
            iabElementStyle = null;
        }
        this.f53872n = iabElementStyle;
        Object n11 = kVar.n("countdown_control_asset");
        if (n11 instanceof AdExtension.ControlAsset) {
            iabElementStyle2 = fr.d.c((AdExtension.ControlAsset) n11);
        } else {
            iabElementStyle2 = null;
        }
        this.f53873o = iabElementStyle2;
        Object n12 = kVar.n("progress_control_asset");
        this.f53874p = n12 instanceof AdExtension.ControlAsset ? fr.d.c((AdExtension.ControlAsset) n12) : null;
    }

    public boolean a(@NonNull xq.c cVar) {
        if (TextUtils.isEmpty(this.f53860b)) {
            cVar.onAdLoadFailed(fr.a.k("creativeAdm"));
            return false;
        } else if (this.f53861c == 0) {
            cVar.onAdLoadFailed(fr.a.k("width"));
            return false;
        } else if (this.f53862d == 0) {
            cVar.onAdLoadFailed(fr.a.k("height"));
            return false;
        } else {
            return true;
        }
    }
}
