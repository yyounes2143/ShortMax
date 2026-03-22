package com.hades.aar.admanager.view.nativead;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import d.d;
import ia.b;
import ia.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class AdmobNativeAdView extends FrameLayout {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f21723m = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private int f21724a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private NativeAd f21725b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private NativeAdView f21726c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ImageView f21727d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private MediaView f21728e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ImageView f21729f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private TextView f21730g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private TextView f21731h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private TextView f21732i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private View f21733j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private VideoController.VideoLifecycleCallbacks f21734k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private c f21735l;

    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdmobNativeAdView(@NotNull Context context, int i10) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f21724a = i10;
        c(context);
    }

    private final void a() {
        VideoController videoController;
        MediaContent mediaContent;
        NativeAd nativeAd = this.f21725b;
        if (nativeAd != null && (mediaContent = nativeAd.getMediaContent()) != null) {
            videoController = mediaContent.getVideoController();
        } else {
            videoController = null;
        }
        if (videoController != null) {
            videoController.setVideoLifecycleCallbacks(this.f21734k);
        }
    }

    @SuppressLint({"CutPasteId"})
    private final void c(Context context) {
        LayoutInflater layoutInflater;
        if (this.f21724a != -1) {
            Object systemService = context.getSystemService("layout_inflater");
            if (systemService instanceof LayoutInflater) {
                layoutInflater = (LayoutInflater) systemService;
            } else {
                layoutInflater = null;
            }
            if (layoutInflater != null) {
                layoutInflater.inflate(this.f21724a, this);
            }
            this.f21726c = (NativeAdView) findViewById(ba.a.f2583k);
            this.f21727d = (ImageView) findViewById(ba.a.f2582j);
            this.f21728e = (MediaView) findViewById(ba.a.f2581i);
            this.f21729f = (ImageView) findViewById(ba.a.f2575c);
            this.f21730g = (TextView) findViewById(ba.a.f2584l);
            this.f21731h = (TextView) findViewById(ba.a.f2577e);
            this.f21732i = (TextView) findViewById(ba.a.f2579g);
            this.f21733j = findViewById(ba.a.f2580h);
            return;
        }
        throw new IllegalArgumentException("Invalid mLayoutResource(" + this.f21724a + ')');
    }

    public static /* synthetic */ void setNativeAd$default(AdmobNativeAdView admobNativeAdView, NativeAd nativeAd, b bVar, ImageView.ScaleType scaleType, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bVar = null;
        }
        if ((i10 & 4) != 0) {
            scaleType = null;
        }
        admobNativeAdView.setNativeAd(nativeAd, bVar, scaleType);
    }

    public final void b() {
        try {
            NativeAdView nativeAdView = this.f21726c;
            if (nativeAdView != null) {
                ga.a.f52235a.d("AdManagerAdmobNativeAdView", "admob NativeAdView destroyed");
                nativeAdView.destroy();
                nativeAdView.removeAllViews();
            }
            NativeAd nativeAd = this.f21725b;
            if (nativeAd != null) {
                nativeAd.destroy();
                Unit unit = Unit.f60915a;
                ga.a.f52235a.d("AdManagerAdmobNativeAdView", "admob NativeAd destroyed");
            }
        } catch (Exception e10) {
            ga.a aVar = ga.a.f52235a;
            aVar.c("AdManagerAdmobNativeAdView", "destroy exception -> " + e10.getMessage() + " by call destroyed");
        }
        this.f21726c = null;
        this.f21725b = null;
        c cVar = this.f21735l;
        if (cVar != null) {
            cVar.a();
        }
        this.f21735l = null;
    }

    @Nullable
    public final c getMOnDestroyListener() {
        return this.f21735l;
    }

    @Nullable
    public final VideoController.VideoLifecycleCallbacks getMVideoLifecycleCallbacks() {
        return this.f21734k;
    }

    public final void setMOnDestroyListener(@Nullable c cVar) {
        this.f21735l = cVar;
    }

    public final void setMVideoLifecycleCallbacks(@Nullable VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f21734k = videoLifecycleCallbacks;
    }

    public final void setNativeAd(@NotNull NativeAd nativeAd, @Nullable b bVar, @Nullable ImageView.ScaleType scaleType) {
        Drawable drawable;
        Drawable drawable2;
        NativeAd.AdChoicesInfo adChoicesInfo;
        NativeAd.AdChoicesInfo adChoicesInfo2;
        List<NativeAd.Image> images;
        MediaView mediaView;
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        this.f21725b = nativeAd;
        List<NativeAd.Image> images2 = nativeAd.getImages();
        Intrinsics.checkNotNullExpressionValue(images2, "nativeAd.images");
        NativeAd.Image image = (NativeAd.Image) CollectionsKt.firstOrNull(images2);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        ImageView imageView = this.f21727d;
        Integer num = null;
        if (image != null) {
            drawable = image.getDrawable();
        } else {
            drawable = null;
        }
        NativeAd.Image icon = nativeAd.getIcon();
        if (icon != null) {
            drawable2 = icon.getDrawable();
        } else {
            drawable2 = null;
        }
        d.b(context, imageView, drawable, drawable2);
        View view = this.f21733j;
        if (view != null) {
            view.setVisibility(0);
        }
        String headline = nativeAd.getHeadline();
        if (headline != null && headline.length() != 0) {
            TextView textView = this.f21730g;
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(headline);
            }
        } else {
            TextView textView2 = this.f21730g;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        TextView textView3 = this.f21731h;
        if (textView3 != null) {
            textView3.setText(nativeAd.getBody());
        }
        NativeAd.Image icon2 = nativeAd.getIcon();
        if (icon2 == null) {
            ImageView imageView2 = this.f21729f;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
        } else {
            ImageView imageView3 = this.f21729f;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
                imageView3.setImageDrawable(icon2.getDrawable());
            }
        }
        TextView textView4 = this.f21732i;
        if (textView4 != null) {
            if (bVar != null) {
                bVar.a(textView4);
            }
            textView4.setText(nativeAd.getCallToAction());
        }
        NativeAdView nativeAdView = this.f21726c;
        if (nativeAdView != null) {
            nativeAdView.setMediaView(this.f21728e);
            if (scaleType != null && (mediaView = this.f21728e) != null) {
                mediaView.setImageScaleType(scaleType);
            }
            ga.a aVar = ga.a.f52235a;
            StringBuilder sb2 = new StringBuilder("setNativeAd -> adChoicesInfo=");
            NativeAd nativeAd2 = this.f21725b;
            if (nativeAd2 != null) {
                adChoicesInfo = nativeAd2.getAdChoicesInfo();
            } else {
                adChoicesInfo = null;
            }
            sb2.append(adChoicesInfo);
            sb2.append(" images.size=");
            NativeAd nativeAd3 = this.f21725b;
            if (nativeAd3 != null && (adChoicesInfo2 = nativeAd3.getAdChoicesInfo()) != null && (images = adChoicesInfo2.getImages()) != null) {
                num = Integer.valueOf(images.size());
            }
            sb2.append(num);
            aVar.d("AdManagerAdmobNativeAdView", sb2.toString());
            nativeAdView.setIconView(this.f21729f);
            nativeAdView.setHeadlineView(this.f21730g);
            nativeAdView.setBodyView(this.f21731h);
            nativeAdView.setCallToActionView(this.f21732i);
            nativeAdView.setNativeAd(nativeAd);
            a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdmobNativeAdView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f21724a = -1;
        c(context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdmobNativeAdView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f21724a = -1;
        c(context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdmobNativeAdView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f21724a = -1;
        c(context);
    }
}
