package com.google.ads.mediation.bidmachine.common;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import io.bidmachine.nativead.view.NativeMediaView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes4.dex */
public final class g extends UnifiedNativeAdMapper {

    /* renamed from: c  reason: collision with root package name */
    private static final String f16961c = "g";

    /* renamed from: a  reason: collision with root package name */
    private final mp.b f16962a;

    /* renamed from: b  reason: collision with root package name */
    private final NativeMediaView f16963b;

    /* loaded from: classes4.dex */
    class a extends ArrayList {
        a() {
            add(new b(null));
        }
    }

    /* loaded from: classes4.dex */
    private static final class b extends NativeAd.Image {
        private b() {
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return null;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return 0.0d;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Uri getUri() {
            return null;
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    public g(mp.b bVar, NativeMediaView nativeMediaView) {
        this.f16962a = bVar;
        this.f16963b = nativeMediaView;
        String i10 = bVar.i();
        if (i10 != null) {
            setHeadline(i10);
        }
        String e10 = bVar.e();
        if (e10 != null) {
            setBody(e10);
        }
        String d10 = bVar.d();
        if (d10 != null) {
            setCallToAction(d10);
        }
        setStarRating(Double.valueOf(bVar.h()));
        setIcon(new b(null));
        setImages(new a());
        setMediaView(nativeMediaView);
        View f10 = bVar.f(nativeMediaView.getContext());
        if (f10 != null) {
            setAdChoicesContent(f10);
        }
        setHasVideoContent(bVar.hasVideo());
        setOverrideImpressionRecording(true);
        setOverrideClickHandling(true);
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(View view, Map map, Map map2) {
        if (view instanceof ViewGroup) {
            HashSet hashSet = new HashSet();
            NativeMediaView nativeMediaView = null;
            boolean z10 = false;
            ImageView imageView = null;
            for (Map.Entry entry : map.entrySet()) {
                hashSet.add((View) entry.getValue());
                String str = (String) entry.getKey();
                if (str.equals("3003")) {
                    imageView = (ImageView) entry.getValue();
                } else if (str.equals("3010")) {
                    z10 = true;
                }
            }
            if (z10) {
                nativeMediaView = this.f16963b;
            }
            this.f16962a.k((ViewGroup) view, imageView, nativeMediaView, hashSet);
            return;
        }
        Log.w(f16961c, "Failed to trackViews. View must be ViewGroup");
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        this.f16962a.l();
    }
}
