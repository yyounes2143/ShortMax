package io.bidmachine.ads.networks.vast;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.iab.vast.VideoType;
import io.bidmachine.iab.vast.activity.VastView;
import io.bidmachine.measurer.MraidOMSDKAdMeasurer;
import io.bidmachine.measurer.VastOMSDKAdMeasurer;
import xq.h;
import xq.i;
import xq.j;
import xq.k;
/* compiled from: VastFullScreenAd.java */
/* loaded from: classes7.dex */
class a extends h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final VideoType f53886a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private VastOMSDKAdMeasurer f53887b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private MraidOMSDKAdMeasurer f53888c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private io.bidmachine.iab.vast.a f53889d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private b f53890e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f53891f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private VastView f53892g;

    /* compiled from: VastFullScreenAd.java */
    /* renamed from: io.bidmachine.ads.networks.vast.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class RunnableC0784a implements Runnable {
        RunnableC0784a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull VideoType videoType) {
        this.f53886a = videoType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        VastView vastView = this.f53892g;
        if (vastView != null) {
            vastView.e0();
            this.f53892g = null;
        }
    }

    @Override // xq.b
    public void d() {
        this.f53890e = null;
        this.f53891f = null;
        VastOMSDKAdMeasurer vastOMSDKAdMeasurer = this.f53887b;
        if (vastOMSDKAdMeasurer != null) {
            vastOMSDKAdMeasurer.j();
            this.f53887b = null;
        }
        MraidOMSDKAdMeasurer mraidOMSDKAdMeasurer = this.f53888c;
        if (mraidOMSDKAdMeasurer != null) {
            mraidOMSDKAdMeasurer.R(new RunnableC0784a());
            this.f53888c = null;
        } else {
            m();
        }
        if (this.f53889d != null) {
            this.f53889d = null;
        }
    }

    @Override // xq.h
    public void k(@NonNull ContextProvider contextProvider, @NonNull i iVar, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        io.bidmachine.iab.vast.a aVar = this.f53889d;
        if (aVar != null && aVar.u()) {
            this.f53891f = new d(iVar, this.f53887b, this.f53888c);
            this.f53889d.x(contextProvider.getContext(), this.f53886a, this.f53891f, this.f53892g, this.f53887b, this.f53888c);
            return;
        }
        iVar.onAdShowFailed(fr.a.i("VAST fullscreen object is null or can not find video file"));
    }

    @Override // xq.b
    /* renamed from: n */
    public void b(@NonNull ContextProvider contextProvider, @NonNull i iVar, @NonNull j jVar, @NonNull k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        e eVar = new e(kVar);
        if (!eVar.a(iVar)) {
            return;
        }
        if (eVar.f53905h) {
            this.f53887b = new VastOMSDKAdMeasurer();
            this.f53888c = new MraidOMSDKAdMeasurer();
        }
        Context applicationContext = contextProvider.getApplicationContext();
        this.f53890e = new b(iVar);
        this.f53892g = new VastView(applicationContext);
        io.bidmachine.iab.vast.a a10 = io.bidmachine.iab.vast.a.V().d(eVar.f53900c).f(eVar.f53901d).g(eVar.f53902e).e(eVar.f53903f).b(eVar.f53904g).c(this.f53887b).a();
        this.f53889d = a10;
        a10.T(applicationContext, eVar.f53899b, this.f53890e);
    }
}
