package io.bidmachine.nativead.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.Executable;
import io.bidmachine.R;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes8.dex */
public class NativeAdContentLayout extends NativeAdContainer {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    protected View f57993d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    protected View f57994e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    protected View f57995f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    protected View f57996g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    protected View f57997h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    protected View f57998i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    protected NativeMediaView f57999j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private Set<WeakReference<View>> f58000k;

    /* renamed from: l  reason: collision with root package name */
    private int f58001l;

    /* renamed from: m  reason: collision with root package name */
    private int f58002m;

    /* renamed from: n  reason: collision with root package name */
    private int f58003n;

    /* renamed from: o  reason: collision with root package name */
    private int f58004o;

    /* renamed from: p  reason: collision with root package name */
    private int f58005p;

    /* renamed from: q  reason: collision with root package name */
    private int f58006q;

    /* renamed from: r  reason: collision with root package name */
    private int f58007r;

    public NativeAdContentLayout(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private Set<View> getAllAvailableClickableViews() {
        final HashSet hashSet = new HashSet();
        io.bidmachine.core.g.H(this.f57993d, new f(hashSet));
        io.bidmachine.core.g.H(this.f57994e, new f(hashSet));
        io.bidmachine.core.g.H(this.f57995f, new f(hashSet));
        io.bidmachine.core.g.H(this.f57996g, new f(hashSet));
        io.bidmachine.core.g.H(this.f57997h, new f(hashSet));
        io.bidmachine.core.g.H(this.f57998i, new f(hashSet));
        io.bidmachine.core.g.H(this.f57999j, new Executable() { // from class: io.bidmachine.nativead.view.g
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                hashSet.add((NativeMediaView) obj);
            }
        });
        return hashSet;
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view) {
        super.addView(view);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup, android.view.ViewParent
    public /* bridge */ /* synthetic */ void bringChildToFront(View view) {
        super.bringChildToFront(view);
    }

    @Nullable
    public View getCallToActionView() {
        return this.f57994e;
    }

    @NonNull
    public Set<View> getClickableViews() {
        HashSet hashSet = new HashSet();
        for (WeakReference<View> weakReference : this.f58000k) {
            io.bidmachine.core.g.H(weakReference.get(), new f(hashSet));
        }
        return hashSet;
    }

    @Nullable
    public View getDescriptionView() {
        return this.f57996g;
    }

    @Nullable
    public View getIconView() {
        return this.f57998i;
    }

    @Nullable
    public NativeMediaView getMediaView() {
        return this.f57999j;
    }

    @Nullable
    public View getProviderView() {
        return this.f57997h;
    }

    @Nullable
    public View getRatingView() {
        return this.f57995f;
    }

    @Nullable
    public View getTitleView() {
        return this.f57993d;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setTitleView(findViewById(this.f58001l));
        setCallToActionView(findViewById(this.f58002m));
        setRatingView(findViewById(this.f58003n));
        setDescriptionView(findViewById(this.f58004o));
        setProviderView(findViewById(this.f58005p));
        setIconView(findViewById(this.f58006q));
        setMediaView((NativeMediaView) findViewById(this.f58007r));
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void removeAllViews() {
        super.removeAllViews();
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup, android.view.ViewManager
    public /* bridge */ /* synthetic */ void removeView(View view) {
        super.removeView(view);
    }

    public void setCallToActionView(@Nullable View view) {
        this.f57994e = view;
    }

    public void setDescriptionView(@Nullable View view) {
        this.f57996g = view;
    }

    public void setIconView(@Nullable View view) {
        this.f57998i = view;
    }

    public void setMediaView(@Nullable NativeMediaView nativeMediaView) {
        this.f57999j = nativeMediaView;
    }

    public void setProviderView(@Nullable View view) {
        this.f57997h = view;
    }

    public void setRatingView(@Nullable View view) {
        this.f57995f = view;
    }

    public void setTitleView(@Nullable View view) {
        this.f57993d = view;
    }

    public NativeAdContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view, int i10) {
        super.addView(view, i10);
    }

    public NativeAdContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f58000k = new HashSet();
        this.f58001l = -1;
        this.f58002m = -1;
        this.f58003n = -1;
        this.f58004o = -1;
        this.f58005p = -1;
        this.f58006q = -1;
        this.f58007r = -1;
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NativeAdContentLayout, i10, 0);
        try {
            this.f58001l = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_titleViewId, -1);
            this.f58002m = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_callToActionViewId, -1);
            this.f58003n = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_ratingViewId, -1);
            this.f58004o = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_descriptionViewId, -1);
            this.f58005p = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_providerViewId, -1);
            this.f58006q = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_iconViewId, -1);
            this.f58007r = obtainStyledAttributes.getResourceId(R.styleable.NativeAdContentLayout_mediaViewId, -1);
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            if (obtainStyledAttributes != null) {
                try {
                    obtainStyledAttributes.recycle();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view, int i10, int i11) {
        super.addView(view, i10, i11);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup
    public /* bridge */ /* synthetic */ void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
    }

    @Override // io.bidmachine.nativead.view.NativeAdContainer, android.view.ViewGroup, android.view.ViewManager
    public /* bridge */ /* synthetic */ void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
    }
}
