package com.google.ads.mediation.bidmachine.common;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.nativead.NativeAd;
import io.bidmachine.nativead.view.NativeMediaView;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class d extends NativeAdMapper {

    /* renamed from: c  reason: collision with root package name */
    public static final a f16938c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static final String f16939d;

    /* renamed from: a  reason: collision with root package name */
    private final mp.b f16940a;

    /* renamed from: b  reason: collision with root package name */
    private final NativeMediaView f16941b;

    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes4.dex */
    private static final class b extends NativeAd.Image {
        @Override // com.google.android.gms.ads.nativead.NativeAd.Image
        public Drawable getDrawable() {
            return null;
        }

        @Override // com.google.android.gms.ads.nativead.NativeAd.Image
        public double getScale() {
            return 1.0d;
        }

        @Override // com.google.android.gms.ads.nativead.NativeAd.Image
        public Uri getUri() {
            return null;
        }
    }

    static {
        String simpleName = d.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        f16939d = simpleName;
    }

    public d(mp.b nativeAd, NativeMediaView nativeMediaView) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        Intrinsics.checkNotNullParameter(nativeMediaView, "nativeMediaView");
        this.f16940a = nativeAd;
        this.f16941b = nativeMediaView;
        String i10 = nativeAd.i();
        if (i10 != null) {
            setHeadline(i10);
        }
        String e10 = nativeAd.e();
        if (e10 != null) {
            setBody(e10);
        }
        String d10 = nativeAd.d();
        if (d10 != null) {
            setCallToAction(d10);
        }
        setStarRating(Double.valueOf(nativeAd.h()));
        setIcon(new b());
        setImages(CollectionsKt.e(new b()));
        setMediaView(nativeMediaView);
        if (nativeAd.f(nativeMediaView.getContext()) != null) {
            setAdChoicesContent(getAdChoicesContent());
        }
        setHasVideoContent(nativeAd.hasVideo());
        setOverrideImpressionRecording(true);
        setOverrideClickHandling(true);
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void trackViews(View view, Map clickableAssetViews, Map nonClickableAssetViews) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(clickableAssetViews, "clickableAssetViews");
        Intrinsics.checkNotNullParameter(nonClickableAssetViews, "nonClickableAssetViews");
        if (view instanceof ViewGroup) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            NativeMediaView nativeMediaView = null;
            boolean z10 = false;
            ImageView imageView = null;
            for (Map.Entry entry : clickableAssetViews.entrySet()) {
                String str = (String) entry.getKey();
                View view2 = (View) entry.getValue();
                linkedHashSet.add(view2);
                if (Intrinsics.areEqual(str, "3003") && (view2 instanceof ImageView)) {
                    imageView = (ImageView) view2;
                } else if (Intrinsics.areEqual(str, "3010")) {
                    z10 = true;
                }
            }
            if (z10) {
                nativeMediaView = this.f16941b;
            }
            this.f16940a.k((ViewGroup) view, imageView, nativeMediaView, linkedHashSet);
            return;
        }
        Log.w(f16939d, "Failed to trackViews. View must be ViewGroup");
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void untrackView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f16940a.l();
    }
}
