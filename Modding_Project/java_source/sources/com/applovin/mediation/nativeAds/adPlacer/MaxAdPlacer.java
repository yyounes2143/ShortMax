package com.applovin.mediation.nativeAds.adPlacer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.a3;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.t2;
import com.applovin.impl.u2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class MaxAdPlacer implements u2.a {

    /* renamed from: a  reason: collision with root package name */
    private AppLovinSdkUtils.Size f10849a;

    /* renamed from: b  reason: collision with root package name */
    private MaxNativeAdViewBinder f10850b;

    /* renamed from: c  reason: collision with root package name */
    private final t2 f10851c;

    /* renamed from: d  reason: collision with root package name */
    private final u2 f10852d;

    /* renamed from: e  reason: collision with root package name */
    private Listener f10853e;
    protected final o logger;
    protected final k sdk;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onAdClicked(MaxAd maxAd);

        void onAdLoaded(int i10);

        void onAdRemoved(int i10);

        void onAdRevenuePaid(MaxAd maxAd);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings) {
        this(maxAdPlacerSettings, k.o());
    }

    public void clearAds() {
        a(this.f10851c.b(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.b
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdPlacer.this.b();
            }
        });
    }

    public Collection<Integer> clearTrailingAds(final int i10) {
        final Collection<Integer> e10 = this.f10851c.e(i10);
        if (!e10.isEmpty()) {
            a(e10, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.c
                @Override // java.lang.Runnable
                public final void run() {
                    MaxAdPlacer.this.a(i10, e10);
                }
            });
        }
        return e10;
    }

    public void destroy() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Destroying ad placer");
        }
        clearAds();
        this.f10852d.c();
    }

    public long getAdItemId(int i10) {
        if (isFilledPosition(i10)) {
            return -System.identityHashCode(this.f10851c.a(i10));
        }
        return 0L;
    }

    public AppLovinSdkUtils.Size getAdSize(int i10) {
        boolean z10;
        if (isFilledPosition(i10)) {
            if (this.f10849a != AppLovinSdkUtils.Size.ZERO) {
                z10 = true;
            } else {
                z10 = false;
            }
            a3 a3Var = (a3) this.f10851c.a(i10);
            if (z10) {
                return this.f10849a;
            }
            if (a3Var.m0() != null) {
                View mainView = a3Var.m0().getMainView();
                return new AppLovinSdkUtils.Size(mainView.getMeasuredWidth(), mainView.getMeasuredHeight());
            }
        }
        return AppLovinSdkUtils.Size.ZERO;
    }

    public int getAdjustedCount(int i10) {
        return this.f10851c.b(i10);
    }

    public int getAdjustedPosition(int i10) {
        return this.f10851c.c(i10);
    }

    public int getOriginalPosition(int i10) {
        return this.f10851c.d(i10);
    }

    public void insertItem(int i10) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Inserting item at position: " + i10);
        }
        this.f10851c.f(i10);
    }

    public boolean isAdPosition(int i10) {
        return this.f10851c.g(i10);
    }

    public boolean isFilledPosition(int i10) {
        return this.f10851c.h(i10);
    }

    public void loadAds() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Loading ads");
        }
        this.f10852d.e();
    }

    public void moveItem(int i10, int i11) {
        this.f10851c.b(i10, i11);
    }

    @Override // com.applovin.impl.u2.a
    public void onAdRevenuePaid(MaxAd maxAd) {
        Listener listener = this.f10853e;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.impl.u2.a
    public void onNativeAdClicked(MaxAd maxAd) {
        Listener listener = this.f10853e;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.impl.u2.a
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.b("MaxAdPlacer", "Native ad failed to load: " + maxError);
        }
    }

    @Override // com.applovin.impl.u2.a
    public void onNativeAdLoaded() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Native ad enqueued");
        }
        a();
    }

    public void removeItem(final int i10) {
        List emptyList;
        if (isFilledPosition(i10)) {
            emptyList = Collections.singletonList(Integer.valueOf(i10));
        } else {
            emptyList = Collections.emptyList();
        }
        a(emptyList, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.a
            @Override // java.lang.Runnable
            public final void run() {
                MaxAdPlacer.this.a(i10);
            }
        });
    }

    public void renderAd(int i10, ViewGroup viewGroup) {
        MaxAd a10 = this.f10851c.a(i10);
        if (a10 == null) {
            if (o.a()) {
                this.logger.a("MaxAdPlacer", "An ad is not available for position: " + i10);
                return;
            }
            return;
        }
        MaxNativeAdView m02 = ((a3) a10).m0();
        if (m02 != null) {
            if (o.a()) {
                this.logger.a("MaxAdPlacer", "Using pre-rendered ad at position: " + i10);
            }
        } else if (this.f10850b != null) {
            m02 = new MaxNativeAdView(this.f10850b, viewGroup.getContext());
            if (this.f10852d.a(m02, a10)) {
                if (o.a()) {
                    this.logger.a("MaxAdPlacer", "Rendered ad at position: " + i10);
                }
            } else if (o.a()) {
                this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i10);
            }
        } else if (o.a()) {
            this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i10 + ". If you're using a custom ad template, check that nativeAdViewBinder is set.");
            return;
        } else {
            return;
        }
        for (int childCount = viewGroup.getChildCount(); childCount >= 0; childCount--) {
            if (viewGroup.getChildAt(childCount) instanceof MaxNativeAdView) {
                viewGroup.removeViewAt(childCount);
            }
        }
        if (m02.getParent() != null) {
            ((ViewGroup) m02.getParent()).removeView(m02);
        }
        viewGroup.addView(m02, -1, -1);
    }

    public void setAdSize(int i10, int i11) {
        this.f10849a = new AppLovinSdkUtils.Size(i10, i11);
    }

    public void setListener(Listener listener) {
        this.f10853e = listener;
    }

    public void setNativeAdViewBinder(MaxNativeAdViewBinder maxNativeAdViewBinder) {
        this.f10850b = maxNativeAdViewBinder;
    }

    public void updateFillablePositions(int i10, int i11) {
        this.f10851c.c(i10, i11);
        if (i10 != -1 && i11 != -1) {
            a();
        }
    }

    @Deprecated
    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, Context context) {
        this(maxAdPlacerSettings, AppLovinSdk.getInstance(context), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10, Collection collection) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Clearing trailing ads after position " + i10);
        }
        this.f10851c.a(collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        if (o.a()) {
            this.logger.a("MaxAdPlacer", "Clearing all cached ads");
        }
        this.f10851c.a();
        this.f10852d.a();
    }

    @Deprecated
    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, AppLovinSdk appLovinSdk, Context context) {
        this.f10849a = AppLovinSdkUtils.Size.ZERO;
        k a10 = appLovinSdk.a();
        this.sdk = a10;
        o O = a10.O();
        this.logger = O;
        this.f10851c = new t2(maxAdPlacerSettings);
        this.f10852d = new u2(maxAdPlacerSettings, context, this);
        if (o.a()) {
            O.a("MaxAdPlacer", "Initializing ad placer with settings: " + maxAdPlacerSettings);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Removing item at position: " + i10);
        }
        this.f10851c.i(i10);
    }

    private void a() {
        int c10;
        while (this.f10852d.d() && (c10 = this.f10851c.c()) != -1) {
            if (o.a()) {
                o oVar = this.logger;
                oVar.a("MaxAdPlacer", "Placing ad at position: " + c10);
            }
            this.f10851c.a(this.f10852d.b(), c10);
            Listener listener = this.f10853e;
            if (listener != null) {
                listener.onAdLoaded(c10);
            }
        }
    }

    private void a(Collection collection, Runnable runnable) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            this.f10852d.a(this.f10851c.a(((Integer) it.next()).intValue()));
        }
        runnable.run();
        if (collection.isEmpty()) {
            return;
        }
        if (o.a()) {
            o oVar = this.logger;
            oVar.a("MaxAdPlacer", "Removed " + collection.size() + " ads from stream: " + collection);
        }
        if (this.f10853e != null) {
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                this.f10853e.onAdRemoved(((Integer) it2.next()).intValue());
            }
        }
    }
}
