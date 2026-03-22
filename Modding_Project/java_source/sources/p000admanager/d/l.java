package p000admanager.d;

import android.app.Activity;
import android.content.Context;
import ca.d;
import ca.e;
import ca.k;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.hades.aar.admanager.core.AdFormat;
import e.n;
import e.t;
import g.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.l  reason: invalid package */
/* loaded from: classes.dex */
public final class l extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ t f476d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f477e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ e f478f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(t tVar, String str, e eVar) {
        super(0);
        this.f476d = tVar;
        this.f477e = str;
        this.f478f = eVar;
    }

    public static final void b(t tVar, String str, a aVar, NativeAd ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        tVar.Z(str, ad2, aVar, ad2.getResponseInfo());
    }

    public final void a() {
        Context context;
        if (k.f3414a.i(AdFormat.NATIVE)) {
            return;
        }
        final a aVar = new a();
        aVar.f52132a = System.currentTimeMillis();
        aVar.f52133b = 0L;
        d p10 = this.f476d.p(this.f477e);
        AdRequest U = t.U(this.f476d, p10);
        if (this.f476d.t() instanceof Activity) {
            context = this.f476d.t();
        } else {
            context = this.f476d.f50689m;
        }
        AdLoader.Builder builder = new AdLoader.Builder(context, this.f478f.e());
        final t tVar = this.f476d;
        final String str = this.f477e;
        builder.forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: e.o
            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
            public final void onNativeAdLoaded(NativeAd nativeAd) {
                p000admanager.d.l.b(t.this, str, aVar, nativeAd);
            }
        }).withAdListener(new n(this.f476d, this.f478f, aVar, this.f477e, p10)).withNativeAdOptions(new NativeAdOptions.Builder().setAdChoicesPlacement(this.f478f.d()).setReturnUrlsForImageAssets(false).build()).build().loadAd(U);
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* bridge */ /* synthetic */ Object invoke() {
        a();
        return Unit.f60915a;
    }
}
