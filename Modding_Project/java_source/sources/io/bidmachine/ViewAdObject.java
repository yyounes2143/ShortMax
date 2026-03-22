package io.bidmachine;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.AdRequest;
import java.lang.ref.WeakReference;
import xq.d;
import xq.p;
/* loaded from: classes7.dex */
public final class ViewAdObject<AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, UnifiedAdType extends xq.p<xq.f, UnifiedAdRequestParamsType>, UnifiedAdRequestParamsType extends xq.d> extends AdObjectImpl<AdRequestType, lp.b, UnifiedAdType, xq.f, UnifiedAdRequestParamsType> {
    @Nullable
    private View adView;
    private int height;
    @NonNull
    private MeasureMode heightMeasureMode;
    @NonNull
    private final wm.b visibilityTrackerHolder;
    private int width;
    @NonNull
    private MeasureMode widthMeasureMode;

    /* loaded from: classes7.dex */
    public enum MeasureMode {
        Match,
        Wrap,
        Direct;

        int getSize(@NonNull Context context, int i10) {
            int i11 = b.f53591a[ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    return -1;
                }
                return -2;
            }
            return Math.round(i10 * io.bidmachine.core.g.C(context));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements wm.p {
        a() {
        }

        @Override // wm.p
        public boolean a() {
            return ViewAdObject.this.getProcessCallback().processVisibilityTrackerShown();
        }

        @Override // wm.p
        public void b() {
            ViewAdObject.this.getProcessCallback().processVisibilityTrackerImpression();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53591a;

        static {
            int[] iArr = new int[MeasureMode.values().length];
            f53591a = iArr;
            try {
                iArr[MeasureMode.Direct.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53591a[MeasureMode.Wrap.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c extends AdObjectImpl.BaseUnifiedAdCallback implements xq.f {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<ViewAdObject<?, ?, ?>> f53592a;

        c(@NonNull ViewAdObject<?, ?, ?> viewAdObject, @NonNull AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
            this.f53592a = new WeakReference<>(viewAdObject);
        }

        @Override // xq.f
        public void onAdLoaded(@Nullable View view) {
            ViewAdObject<?, ?, ?> viewAdObject = this.f53592a.get();
            if (viewAdObject != null) {
                viewAdObject.setAdView(view);
                this.processCallback.processLoadSuccess();
                return;
            }
            this.processCallback.processLoadFail(fr.a.i("ViewAdObject is null"));
        }
    }

    public ViewAdObject(@NonNull ContextProvider contextProvider, @NonNull AdProcessCallback adProcessCallback, @NonNull AdRequestType adrequesttype, @NonNull lp.b bVar, @NonNull UnifiedAdType unifiedadtype) {
        super(contextProvider, adProcessCallback, adrequesttype, bVar, unifiedadtype);
        MeasureMode measureMode = MeasureMode.Direct;
        this.widthMeasureMode = measureMode;
        this.heightMeasureMode = measureMode;
        this.visibilityTrackerHolder = new wm.b();
    }

    private int getHeight() {
        return this.height;
    }

    private int getScaledHeight(@NonNull Context context) {
        return this.heightMeasureMode.getSize(context, getHeight());
    }

    private int getScaledWidth(@NonNull Context context) {
        return this.widthMeasureMode.getSize(context, getWidth());
    }

    private int getWidth() {
        return this.width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdView(@Nullable View view) {
        hide();
        this.adView = view;
    }

    @NonNull
    public MeasureMode getHeightMeasureMode() {
        return this.heightMeasureMode;
    }

    @NonNull
    public MeasureMode getWidthMeasureMode() {
        return this.widthMeasureMode;
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void hide() {
        super.hide();
        this.visibilityTrackerHolder.c();
        View view = this.adView;
        if (view != null) {
            fr.l.b(view);
        }
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onDestroy() {
        hide();
        super.onDestroy();
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onImpression() {
        super.onImpression();
        this.visibilityTrackerHolder.c();
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setHeightMeasureMode(@NonNull MeasureMode measureMode) {
        this.heightMeasureMode = measureMode;
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    public void setWidthMeasureMode(@NonNull MeasureMode measureMode) {
        this.widthMeasureMode = measureMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void show(@Nullable ViewGroup viewGroup, @Nullable RendererConfiguration rendererConfiguration) {
        ViewGroup.LayoutParams layoutParams;
        if (viewGroup == null) {
            getUnifiedAdCallback().onAdShowFailed(fr.a.k("Target container"));
            return;
        }
        View view = this.adView;
        if (view == null) {
            getUnifiedAdCallback().onAdShowFailed(fr.a.i("Ad view is null"));
            return;
        }
        MeasureMode widthMeasureMode = getWidthMeasureMode();
        MeasureMode measureMode = MeasureMode.Direct;
        if ((widthMeasureMode == measureMode && getWidth() == 0) || (getHeightMeasureMode() == measureMode && getHeight() == 0)) {
            getUnifiedAdCallback().onAdShowFailed(fr.a.h("Width or height are not provided"));
            return;
        }
        Context context = viewGroup.getContext();
        if (viewGroup instanceof FrameLayout) {
            layoutParams = new FrameLayout.LayoutParams(getScaledWidth(context), getScaledHeight(context), 17);
        } else {
            layoutParams = new ViewGroup.LayoutParams(getScaledWidth(context), getScaledHeight(context));
        }
        getProcessCallback().processStartVisibilityTracker();
        this.visibilityTrackerHolder.b(view, getParams().e(), new a());
        fr.l.c(viewGroup, view, layoutParams);
        getProcessCallback().processFillAd();
        try {
            ((xq.p) getUnifiedAd()).i(rendererConfiguration);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    @Override // io.bidmachine.AdObjectImpl
    @NonNull
    public xq.f createUnifiedCallback(@NonNull AdProcessCallback adProcessCallback) {
        return new c(this, adProcessCallback);
    }
}
