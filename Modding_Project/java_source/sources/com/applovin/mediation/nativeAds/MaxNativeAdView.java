package com.applovin.mediation.nativeAds;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.applovin.impl.a3;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.nativeAd.AppLovinStarRatingView;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class MaxNativeAdView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final View f10818a;

    /* renamed from: b  reason: collision with root package name */
    private final TextView f10819b;

    /* renamed from: c  reason: collision with root package name */
    private final TextView f10820c;

    /* renamed from: d  reason: collision with root package name */
    private final TextView f10821d;

    /* renamed from: e  reason: collision with root package name */
    private final Button f10822e;

    /* renamed from: f  reason: collision with root package name */
    private final ImageView f10823f;

    /* renamed from: g  reason: collision with root package name */
    private final FrameLayout f10824g;

    /* renamed from: h  reason: collision with root package name */
    private final ViewGroup f10825h;

    /* renamed from: i  reason: collision with root package name */
    private final FrameLayout f10826i;

    /* renamed from: j  reason: collision with root package name */
    private final ViewGroup f10827j;

    /* renamed from: k  reason: collision with root package name */
    private final ViewGroup f10828k;

    /* renamed from: l  reason: collision with root package name */
    private final FrameLayout f10829l;

    /* renamed from: m  reason: collision with root package name */
    private com.applovin.impl.mediation.ads.b f10830m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WeakReference f10831a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f10832b;

        a(WeakReference weakReference, ViewGroup viewGroup) {
            this.f10831a = weakReference;
            this.f10832b = viewGroup;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver = (ViewTreeObserver) this.f10831a.get();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            } else {
                k.D0.O();
                if (o.a()) {
                    k.D0.O().k("MaxNativeAdView", "Failed to remove onPreDrawListener since the view tree observer is not alive.");
                }
            }
            this.f10831a.clear();
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f10832b.getLayoutParams();
            layoutParams.height = ((View) this.f10832b.getParent()).getWidth();
            this.f10832b.setLayoutParams(layoutParams);
            return true;
        }
    }

    public MaxNativeAdView(MaxNativeAd maxNativeAd, Activity activity) {
        this(maxNativeAd, (String) null, activity);
    }

    @Nullable
    public com.applovin.impl.mediation.ads.b getAdViewTracker() {
        return this.f10830m;
    }

    public TextView getAdvertiserTextView() {
        return this.f10820c;
    }

    public TextView getBodyTextView() {
        return this.f10821d;
    }

    public Button getCallToActionButton() {
        return this.f10822e;
    }

    public List<View> getClickableViews() {
        ArrayList arrayList = new ArrayList(5);
        TextView textView = this.f10819b;
        if (textView != null) {
            arrayList.add(textView);
        }
        TextView textView2 = this.f10820c;
        if (textView2 != null) {
            arrayList.add(textView2);
        }
        TextView textView3 = this.f10821d;
        if (textView3 != null) {
            arrayList.add(textView3);
        }
        Button button = this.f10822e;
        if (button != null) {
            arrayList.add(button);
        }
        ImageView imageView = this.f10823f;
        if (imageView != null) {
            arrayList.add(imageView);
        }
        return arrayList;
    }

    @Deprecated
    public FrameLayout getIconContentView() {
        return this.f10824g;
    }

    public ImageView getIconImageView() {
        return this.f10823f;
    }

    public View getMainView() {
        return this.f10818a;
    }

    @Deprecated
    public FrameLayout getMediaContentView() {
        return this.f10829l;
    }

    public ViewGroup getMediaContentViewGroup() {
        ViewGroup viewGroup = this.f10828k;
        if (viewGroup == null) {
            return this.f10829l;
        }
        return viewGroup;
    }

    @Deprecated
    public FrameLayout getOptionsContentView() {
        return this.f10826i;
    }

    public ViewGroup getOptionsContentViewGroup() {
        ViewGroup viewGroup = this.f10825h;
        if (viewGroup == null) {
            return this.f10826i;
        }
        return viewGroup;
    }

    public ViewGroup getStarRatingContentViewGroup() {
        return this.f10827j;
    }

    public TextView getTitleTextView() {
        return this.f10819b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.applovin.impl.mediation.ads.b bVar = this.f10830m;
        if (bVar != null) {
            bVar.c();
        }
        if (!isHardwareAccelerated()) {
            o.j("MaxNativeAdView", "Attached to non-hardware accelerated window: some native ad views require hardware accelerated Activities to render properly.");
        }
    }

    public void recycle() {
        setOnClickListener(null);
        com.applovin.impl.mediation.ads.b bVar = this.f10830m;
        if (bVar != null) {
            bVar.a();
            this.f10830m = null;
        }
        View view = this.f10818a;
        if (view != null && view.getParent() != this) {
            ViewGroup viewGroup = (ViewGroup) this.f10818a.getParent();
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                removeView(viewGroup);
            }
            addView(this.f10818a);
        }
    }

    public void render(a3 a3Var, a.InterfaceC0113a interfaceC0113a, k kVar) {
        recycle();
        if (!a3Var.p0().get() || !a3Var.o0().get()) {
            this.f10830m = new com.applovin.impl.mediation.ads.b(a3Var, this, interfaceC0113a, kVar);
        }
        final MaxNativeAd nativeAd = a3Var.getNativeAd();
        if (a3Var.q0() && nativeAd.isContainerClickable()) {
            kVar.O();
            if (o.a()) {
                kVar.O().a("MaxNativeAdView", "Enabling container click");
            }
            setOnClickListener(new View.OnClickListener() { // from class: com.applovin.mediation.nativeAds.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MaxNativeAd.this.performClick();
                }
            });
        }
        kVar.O();
        if (o.a()) {
            kVar.O().a("MaxNativeAdView", "Rendering custom ad view");
        }
        a(nativeAd);
    }

    @Deprecated
    public MaxNativeAdView(@Nullable MaxNativeAd maxNativeAd, @Nullable String str, Activity activity) {
        this(maxNativeAd, str, activity.getApplicationContext());
    }

    private int a(String str, MaxAdFormat maxAdFormat) {
        if (maxAdFormat == MaxAdFormat.BANNER) {
            if ("vertical_banner_template".equals(str)) {
                return R.layout.max_native_ad_vertical_banner_view;
            }
            if (!"media_banner_template".equals(str) && !"no_body_banner_template".equals(str)) {
                if ("vertical_media_banner_template".equals(str)) {
                    return R.layout.max_native_ad_vertical_media_banner_view;
                }
                return R.layout.max_native_ad_banner_view;
            }
            return R.layout.max_native_ad_media_banner_view;
        } else if (maxAdFormat == MaxAdFormat.LEADER) {
            if ("vertical_leader_template".equals(str)) {
                return R.layout.max_native_ad_vertical_leader_view;
            }
            return R.layout.max_native_ad_leader_view;
        } else if (maxAdFormat == MaxAdFormat.MREC) {
            return R.layout.max_native_ad_mrec_view;
        } else {
            if (maxAdFormat == MaxAdFormat.NATIVE) {
                throw new IllegalArgumentException("Attempting to render MAX native ad with invalid template: " + str);
            }
            throw new IllegalArgumentException("Unsupported ad format: " + maxAdFormat);
        }
    }

    private void b(MaxNativeAd maxNativeAd) {
        if (StringUtils.isValidString(maxNativeAd.getTitle())) {
            this.f10819b.setText(maxNativeAd.getTitle());
        } else {
            this.f10819b.setVisibility(8);
        }
        if (this.f10820c != null) {
            if (StringUtils.isValidString(maxNativeAd.getAdvertiser())) {
                this.f10820c.setText(maxNativeAd.getAdvertiser());
            } else {
                this.f10820c.setVisibility(8);
            }
        }
        if (this.f10821d != null) {
            if (StringUtils.isValidString(maxNativeAd.getBody())) {
                this.f10821d.setText(maxNativeAd.getBody());
            } else if (maxNativeAd.getFormat() != MaxAdFormat.NATIVE && maxNativeAd.getFormat() != MaxAdFormat.MREC) {
                this.f10821d.setVisibility(4);
            } else {
                this.f10821d.setVisibility(8);
            }
        }
        if (this.f10822e != null) {
            if (StringUtils.isValidString(maxNativeAd.getCallToAction())) {
                this.f10822e.setText(maxNativeAd.getCallToAction());
            } else if (maxNativeAd.getFormat() != MaxAdFormat.NATIVE && maxNativeAd.getFormat() != MaxAdFormat.MREC) {
                this.f10822e.setVisibility(4);
            } else {
                this.f10822e.setVisibility(8);
            }
        }
        MaxNativeAd.MaxNativeAdImage icon = maxNativeAd.getIcon();
        View iconView = maxNativeAd.getIconView();
        FrameLayout frameLayout = this.f10824g;
        if (frameLayout != null) {
            if (icon == null || this.f10823f == null) {
                if (iconView != null) {
                    iconView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    this.f10824g.removeAllViews();
                    this.f10824g.addView(iconView);
                } else {
                    frameLayout.setVisibility(8);
                }
            } else if (icon.getDrawable() != null) {
                this.f10823f.setImageDrawable(icon.getDrawable());
            } else if (icon.getUri() != null && StringUtils.isValidString(icon.getUri().toString())) {
                ImageViewUtils.setAndDownscaleImageUri(this.f10823f, icon.getUri());
            } else {
                this.f10824g.setVisibility(8);
            }
        }
        View optionsView = maxNativeAd.getOptionsView();
        FrameLayout frameLayout2 = this.f10826i;
        if (frameLayout2 != null && optionsView != null) {
            optionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f10826i.addView(optionsView);
            this.f10826i.bringToFront();
        } else if (frameLayout2 != null) {
            frameLayout2.setVisibility(8);
        }
        View mediaView = maxNativeAd.getMediaView();
        if (this.f10829l != null) {
            if (mediaView != null) {
                mediaView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f10829l.addView(mediaView);
            } else if (maxNativeAd.getFormat() == MaxAdFormat.LEADER) {
                this.f10829l.setVisibility(8);
            }
        }
        if (this.f10827j != null) {
            Double starRating = maxNativeAd.getStarRating();
            if (starRating != null) {
                this.f10827j.removeAllViews();
                AppLovinStarRatingView appLovinStarRatingView = new AppLovinStarRatingView(starRating, getContext());
                appLovinStarRatingView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f10827j.addView(appLovinStarRatingView);
            } else {
                this.f10827j.setVisibility(8);
            }
        }
        b();
        postDelayed(new Runnable() { // from class: com.applovin.mediation.nativeAds.a
            @Override // java.lang.Runnable
            public final void run() {
                MaxNativeAdView.this.a();
            }
        }, 2000L);
    }

    public MaxNativeAdView(@Nullable MaxNativeAd maxNativeAd, @Nullable String str, Context context) {
        this(maxNativeAd, new MaxNativeAdViewBinder.Builder(-1).setTemplateType(str).setTitleTextViewId(R.id.applovin_native_title_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setCallToActionButtonId(R.id.applovin_native_cta_button).setIconImageViewId(R.id.applovin_native_icon_image_view).setIconContentViewId(R.id.applovin_native_icon_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setOptionsContentFrameLayoutId(R.id.applovin_native_options_view).setStarRatingContentViewGroupId(R.id.applovin_native_star_rating_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).setMediaContentFrameLayoutId(R.id.applovin_native_media_content_view).build(), context);
    }

    public MaxNativeAdView(MaxNativeAdViewBinder maxNativeAdViewBinder, Context context) {
        this((MaxNativeAd) null, maxNativeAdViewBinder, context);
    }

    public MaxNativeAdView(@Nullable MaxNativeAd maxNativeAd, MaxNativeAdViewBinder maxNativeAdViewBinder, Context context) {
        super(context);
        int i10;
        boolean z10 = maxNativeAdViewBinder.templateType != null;
        MaxAdFormat format = maxNativeAd != null ? maxNativeAd.getFormat() : MaxAdFormat.NATIVE;
        View view = maxNativeAdViewBinder.mainView;
        if (view != null) {
            this.f10818a = view;
        } else {
            if (z10) {
                i10 = a(maxNativeAdViewBinder.templateType, format);
            } else {
                i10 = maxNativeAdViewBinder.layoutResourceId;
            }
            this.f10818a = LayoutInflater.from(context).inflate(i10, (ViewGroup) this, false);
        }
        addView(this.f10818a);
        this.f10819b = (TextView) findViewById(maxNativeAdViewBinder.titleTextViewId);
        this.f10820c = (TextView) findViewById(maxNativeAdViewBinder.advertiserTextViewId);
        this.f10821d = (TextView) findViewById(maxNativeAdViewBinder.bodyTextViewId);
        this.f10822e = (Button) findViewById(maxNativeAdViewBinder.callToActionButtonId);
        this.f10823f = (ImageView) findViewById(maxNativeAdViewBinder.iconImageViewId);
        this.f10824g = (FrameLayout) findViewById(maxNativeAdViewBinder.iconContentViewId);
        this.f10825h = (ViewGroup) findViewById(maxNativeAdViewBinder.optionsContentViewGroupId);
        this.f10826i = (FrameLayout) findViewById(maxNativeAdViewBinder.optionsContentFrameLayoutId);
        this.f10827j = (ViewGroup) findViewById(maxNativeAdViewBinder.starRatingContentViewGroupId);
        this.f10828k = (ViewGroup) findViewById(maxNativeAdViewBinder.mediaContentViewGroupId);
        this.f10829l = (FrameLayout) findViewById(maxNativeAdViewBinder.mediaContentFrameLayoutId);
        if (maxNativeAd != null) {
            b(maxNativeAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        setSelected(true);
    }

    private void a(MaxNativeAd maxNativeAd) {
        TextView textView = this.f10819b;
        if (textView != null) {
            textView.setText(maxNativeAd.getTitle());
        }
        TextView textView2 = this.f10821d;
        if (textView2 != null) {
            textView2.setText(maxNativeAd.getBody());
        }
        TextView textView3 = this.f10820c;
        if (textView3 != null) {
            textView3.setText(maxNativeAd.getAdvertiser());
        }
        Button button = this.f10822e;
        if (button != null) {
            button.setText(maxNativeAd.getCallToAction());
        }
        MaxNativeAd.MaxNativeAdImage icon = maxNativeAd.getIcon();
        ImageView imageView = this.f10823f;
        if (imageView != null) {
            if (icon != null) {
                if (icon.getDrawable() != null) {
                    this.f10823f.setImageDrawable(icon.getDrawable());
                } else if (icon.getUri() != null) {
                    ImageViewUtils.setAndDownscaleImageUri(this.f10823f, icon.getUri());
                } else {
                    this.f10823f.setImageDrawable(null);
                }
            } else {
                imageView.setImageDrawable(null);
            }
        }
        View mediaView = maxNativeAd.getMediaView();
        ViewGroup viewGroup = this.f10828k;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            if (mediaView != null) {
                ViewParent parent = mediaView.getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeAllViews();
                }
                mediaView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f10828k.addView(mediaView);
            }
        }
        View optionsView = maxNativeAd.getOptionsView();
        ViewGroup viewGroup2 = this.f10825h;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
            if (optionsView != null) {
                ViewParent parent2 = optionsView.getParent();
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeAllViews();
                }
                optionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f10825h.addView(optionsView);
                this.f10825h.bringToFront();
            }
        }
        ViewGroup viewGroup3 = this.f10827j;
        if (viewGroup3 != null) {
            viewGroup3.removeAllViews();
            Double starRating = maxNativeAd.getStarRating();
            if (starRating != null) {
                AppLovinStarRatingView appLovinStarRatingView = new AppLovinStarRatingView(starRating, getContext());
                appLovinStarRatingView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f10827j.addView(appLovinStarRatingView);
            }
        }
    }

    private void b() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.applovin_native_inner_parent_layout);
        if (viewGroup == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnPreDrawListener(new a(new WeakReference(viewTreeObserver), viewGroup));
        }
    }
}
