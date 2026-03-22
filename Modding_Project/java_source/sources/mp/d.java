package mp;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.ContextProvider;
import io.bidmachine.ImageData;
import io.bidmachine.ImageDataImpl;
import io.bidmachine.LabelData;
import io.bidmachine.MediaAssetType;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.RendererConfiguration;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.nativead.view.MediaView;
import io.bidmachine.nativead.view.NativeMediaView;
import io.bidmachine.rendering.view.WatermarkView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import sq.k;
import wm.p;
import xq.l;
import xq.m;
import xq.n;
import yq.t;
/* compiled from: NativeAdObject.java */
/* loaded from: classes8.dex */
public final class d extends AdObjectImpl<NativeRequest, lp.b, l, m, n> implements mp.e, g, f, View.OnClickListener {
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private static final WeakHashMap<ViewGroup, WeakHashMap<View, View.OnClickListener>> f62584q = new WeakHashMap<>(3);
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final wm.b f62585a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f62586b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private MediaView f62587c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private View f62588d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ProgressDialog f62589e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private View f62590f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View$OnLayoutChangeListenerC0874d f62591g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Handler f62592h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Runnable f62593i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f62594j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f62595k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private ImageDataImpl f62596l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private ImageDataImpl f62597m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Uri f62598n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private io.bidmachine.iab.vast.a f62599o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private i f62600p;

    /* compiled from: NativeAdObject.java */
    /* loaded from: classes8.dex */
    class a implements p {
        a() {
        }

        @Override // wm.p
        public boolean a() {
            return d.this.D();
        }

        @Override // wm.p
        public void b() {
            d.this.f62594j = true;
            d.this.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdObject.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.K();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeAdObject.java */
    /* renamed from: mp.d$d  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class View$OnLayoutChangeListenerC0874d implements View.OnLayoutChangeListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<View> f62604a;

        /* renamed from: b  reason: collision with root package name */
        private int f62605b;

        /* renamed from: c  reason: collision with root package name */
        private int f62606c;

        public View$OnLayoutChangeListenerC0874d(@NonNull View view) {
            this.f62604a = new WeakReference<>(view);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            View view2;
            if (view == null) {
                return;
            }
            int i18 = i12 - i10;
            int i19 = i13 - i11;
            if ((i18 == this.f62605b && i19 == this.f62606c) || (view2 = this.f62604a.get()) == null) {
                return;
            }
            this.f62605b = i18;
            this.f62606c = i19;
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams == null) {
                view2.setLayoutParams(new ViewGroup.LayoutParams(i18, i19));
                return;
            }
            layoutParams.width = i18;
            layoutParams.height = i19;
            view2.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeAdObject.java */
    /* loaded from: classes8.dex */
    public final class e extends AdObjectImpl.BaseUnifiedAdCallback implements m {
        e(@NonNull AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
        }

        @Override // xq.m
        public void a(@NonNull i iVar) {
            try {
                d.this.S(iVar);
                if (d.this.getAdRequest().getAdRequestParameters().c() && !iVar.l()) {
                    this.processCallback.processLoadFail(fr.a.h("Native ad does not contain all required assets"));
                } else if (iVar.k()) {
                    this.processCallback.processLoadSuccess();
                } else {
                    d dVar = d.this;
                    dVar.N(dVar.getApplicationContext(), iVar);
                }
            } catch (Exception e10) {
                io.bidmachine.core.a.m(e10);
                this.processCallback.processLoadFail(fr.a.l("Exception loading native ad assets", e10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull ContextProvider contextProvider, @NonNull AdProcessCallback adProcessCallback, @NonNull NativeRequest nativeRequest, @NonNull lp.b bVar, @NonNull l lVar) {
        super(contextProvider, adProcessCallback, nativeRequest, bVar, lVar);
        this.f62585a = new wm.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        Handler handler;
        ProgressDialog progressDialog = this.f62589e;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.f62589e.dismiss();
            this.f62589e = null;
        }
        Runnable runnable = this.f62593i;
        if (runnable != null && (handler = this.f62592h) != null) {
            handler.removeCallbacks(runnable);
            this.f62592h = null;
            this.f62593i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(Boolean bool) throws Throwable {
        K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(@NonNull Context context, @NonNull mp.e eVar) {
        new mp.a(getAdRequest().getAdRequestParameters(), getProcessCallback(), eVar, this).i(context);
    }

    private boolean O() {
        ProgressDialog progressDialog = this.f62589e;
        if (progressDialog != null && progressDialog.isShowing()) {
            return false;
        }
        return true;
    }

    private void Q() {
        View view = this.f62590f;
        if (view != null) {
            t.g(view);
            this.f62590f = null;
        }
    }

    private void R(@NonNull ViewGroup viewGroup) {
        View$OnLayoutChangeListenerC0874d view$OnLayoutChangeListenerC0874d = this.f62591g;
        if (view$OnLayoutChangeListenerC0874d != null) {
            viewGroup.removeOnLayoutChangeListener(view$OnLayoutChangeListenerC0874d);
            this.f62591g = null;
        }
    }

    private void T(@Nullable Activity activity) {
        if (this.f62586b != null && O() && io.bidmachine.core.g.d(activity)) {
            this.f62586b.addOnAttachStateChangeListener(new b());
            ProgressDialog show = ProgressDialog.show(activity, "", "Loading...");
            this.f62589e = show;
            show.setProgressStyle(0);
            this.f62589e.setCancelable(false);
            this.f62593i = new c();
            Handler handler = new Handler(Looper.getMainLooper());
            this.f62592h = handler;
            handler.postDelayed(this.f62593i, 5000L);
        }
    }

    private void t(@NonNull ViewGroup viewGroup, @Nullable Set<View> set) {
        z(viewGroup);
        if (set != null && !set.isEmpty()) {
            WeakHashMap<View, View.OnClickListener> weakHashMap = new WeakHashMap<>();
            f62584q.put(viewGroup, weakHashMap);
            for (View view : set) {
                if (view != null) {
                    view.setOnClickListener(this);
                    weakHashMap.put(view, this);
                }
            }
        }
    }

    @Nullable
    private ImageView u(@Nullable View view) {
        ImageView imageView;
        if (view instanceof ImageView) {
            imageView = (ImageView) view;
        } else if (view instanceof ViewGroup) {
            ImageView imageView2 = new ImageView(view.getContext());
            imageView2.setId(100);
            imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.removeAllViews();
            viewGroup.addView(imageView2, new ViewGroup.LayoutParams(-1, -1));
            imageView = imageView2;
        } else {
            imageView = null;
        }
        if (imageView != null && this.f62596l != null) {
            op.a.d(imageView.getContext(), imageView, this.f62596l.getLocalUri(), this.f62596l.getImage());
        }
        return imageView;
    }

    private void v(@Nullable NativeMediaView nativeMediaView) {
        if (nativeMediaView == null) {
            return;
        }
        View x10 = x(nativeMediaView.getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        t.a(nativeMediaView, x10, layoutParams);
    }

    private void w(@NonNull ViewGroup viewGroup, @Nullable RendererConfiguration rendererConfiguration) {
        Drawable watermarkDrawable;
        R(viewGroup);
        Q();
        if (rendererConfiguration == null || (watermarkDrawable = rendererConfiguration.getWatermarkDrawable(getApplicationContext())) == null) {
            return;
        }
        WatermarkView watermarkView = new WatermarkView(viewGroup.getContext().getApplicationContext());
        watermarkView.setLayoutParams(t.b());
        watermarkView.setWatermark(watermarkDrawable);
        this.f62590f = watermarkView;
        View$OnLayoutChangeListenerC0874d view$OnLayoutChangeListenerC0874d = new View$OnLayoutChangeListenerC0874d(watermarkView);
        this.f62591g = view$OnLayoutChangeListenerC0874d;
        viewGroup.addOnLayoutChangeListener(view$OnLayoutChangeListenerC0874d);
        viewGroup.addView(watermarkView);
    }

    @NonNull
    private View x(@NonNull Context context) {
        View b10;
        i iVar = this.f62600p;
        if (iVar != null && (b10 = iVar.b(context)) != null) {
            return b10;
        }
        MediaView mediaView = new MediaView(context);
        mediaView.setId(200);
        io.bidmachine.nativead.a adRequestParameters = getAdRequest().getAdRequestParameters();
        if (adRequestParameters.a(MediaAssetType.Image) || adRequestParameters.a(MediaAssetType.Video)) {
            mediaView.setNativeAdObject(this);
        }
        this.f62587c = mediaView;
        return mediaView;
    }

    private void z(@NonNull ViewGroup viewGroup) {
        WeakHashMap<View, View.OnClickListener> weakHashMap = f62584q.get(viewGroup);
        if (weakHashMap != null) {
            for (Map.Entry<View, View.OnClickListener> entry : weakHashMap.entrySet()) {
                if (entry != null && entry.getKey() != null) {
                    entry.getKey().setOnClickListener(null);
                }
            }
            f62584q.remove(viewGroup);
        }
    }

    public void A() {
        getProcessCallback().processClicked();
    }

    public void B() {
        getProcessCallback().processFillAd();
    }

    public void C() {
        getProcessCallback().processVisibilityTrackerImpression();
    }

    public boolean D() {
        return getProcessCallback().processVisibilityTrackerShown();
    }

    @NonNull
    public String E() {
        String str;
        i iVar = this.f62600p;
        if (iVar != null) {
            str = iVar.e();
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return "Install";
        }
        return str;
    }

    @Nullable
    public String F() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.f();
        }
        return null;
    }

    @Nullable
    public String G() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.h();
        }
        return null;
    }

    @Nullable
    public View H(@NonNull Context context) {
        i iVar;
        if (this.f62588d == null && (iVar = this.f62600p) != null) {
            this.f62588d = iVar.c(context);
        }
        return this.f62588d;
    }

    public float I() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.i();
        }
        return -1.0f;
    }

    @Nullable
    public String J() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.j();
        }
        return null;
    }

    @VisibleForTesting
    boolean L(@Nullable ViewGroup viewGroup, @Nullable View view, @Nullable NativeMediaView nativeMediaView) {
        if (viewGroup == null) {
            io.bidmachine.core.a.d("NativeAdView cannot be null. NativeAd is NOT registered");
            return false;
        } else if (view == null && nativeMediaView == null) {
            io.bidmachine.core.a.d("ImageView or NativeMediaView cannot be null. NativeAd is NOT registered");
            return false;
        } else {
            if (view != null && !fr.l.a(viewGroup, view)) {
                io.bidmachine.core.a.d("ImageView should belong to NativeAdView");
            }
            if (nativeMediaView != null && !fr.l.a(viewGroup, nativeMediaView)) {
                io.bidmachine.core.a.d("NativeMediaView should belong to NativeAdView");
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P(@NonNull ViewGroup viewGroup, @Nullable View view, @Nullable NativeMediaView nativeMediaView, @Nullable Set<View> set, @Nullable RendererConfiguration rendererConfiguration) {
        try {
            if (!L(viewGroup, view, nativeMediaView)) {
                getProcessCallback().processShowFail(fr.a.i("Native ad views are invalid"));
                return;
            }
            t(viewGroup, set);
            ImageView u10 = u(view);
            v(nativeMediaView);
            this.f62586b = viewGroup;
            if (!this.f62594j) {
                getProcessCallback().processStartVisibilityTracker();
                this.f62585a.b(viewGroup, getParams().e(), new a());
                B();
            }
            MediaView mediaView = this.f62587c;
            if (mediaView != null) {
                mediaView.N();
                this.f62587c.U();
            }
            i iVar = this.f62600p;
            if (iVar != null) {
                iVar.n(viewGroup, u10, nativeMediaView, set);
            }
            w(viewGroup, rendererConfiguration);
            View view2 = this.f62590f;
            if (view2 != null) {
                view2.bringToFront();
            }
            this.f62595k = true;
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            U();
            getProcessCallback().processShowFail(fr.a.l("Exception registering view for native ad object", th2));
        }
    }

    public void S(@Nullable i iVar) {
        this.f62600p = iVar;
        if (iVar != null) {
            this.f62596l = new ImageDataImpl(iVar.getIcon());
            this.f62597m = new ImageDataImpl(iVar.getMainImage());
        }
    }

    public void U() {
        try {
            this.f62585a.c();
            ViewGroup viewGroup = this.f62586b;
            if (viewGroup != null) {
                R(viewGroup);
                z(this.f62586b);
                this.f62586b = null;
            }
            MediaView mediaView = this.f62587c;
            if (mediaView != null) {
                mediaView.V();
                this.f62587c.T();
                this.f62587c = null;
            }
            i iVar = this.f62600p;
            if (iVar != null) {
                iVar.B();
            }
            Q();
            this.f62595k = false;
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    @Override // mp.e
    @Nullable
    public PrivacySheetData a() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.a();
        }
        return null;
    }

    @Override // mp.g
    public void b(@Nullable io.bidmachine.iab.vast.a aVar) {
        this.f62599o = aVar;
    }

    @Override // mp.g
    @Nullable
    public io.bidmachine.iab.vast.a c() {
        return this.f62599o;
    }

    @Override // mp.h
    @Nullable
    public Drawable d() {
        ImageDataImpl imageDataImpl = this.f62597m;
        if (imageDataImpl != null) {
            return imageDataImpl.getImage();
        }
        return null;
    }

    @Override // mp.g
    public void e(@Nullable Uri uri) {
        ImageDataImpl imageDataImpl = this.f62596l;
        if (imageDataImpl != null) {
            imageDataImpl.setLocalUri(uri);
        }
    }

    @Override // mp.g
    public void f(@Nullable Uri uri) {
        ImageDataImpl imageDataImpl = this.f62597m;
        if (imageDataImpl != null) {
            imageDataImpl.setLocalUri(uri);
        }
    }

    @Override // mp.e
    @Nullable
    public String g() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.g();
        }
        return null;
    }

    @Override // mp.j
    @Nullable
    public ImageData getIcon() {
        return this.f62596l;
    }

    @Override // mp.h
    @Nullable
    public Uri getIconUri() {
        ImageDataImpl imageDataImpl = this.f62596l;
        if (imageDataImpl != null) {
            return imageDataImpl.getLocalUri();
        }
        return null;
    }

    @Override // mp.h
    @Nullable
    public Uri getImageUri() {
        ImageDataImpl imageDataImpl = this.f62597m;
        if (imageDataImpl != null) {
            return imageDataImpl.getLocalUri();
        }
        return null;
    }

    @Override // mp.j
    @Nullable
    public ImageData getMainImage() {
        return this.f62597m;
    }

    @Override // mp.j
    public boolean hasVideo() {
        i iVar;
        if (this.f62598n == null && ((iVar = this.f62600p) == null || !iVar.hasVideo())) {
            return false;
        }
        return true;
    }

    @Override // mp.g
    public void i(@Nullable Bitmap bitmap) {
        ImageDataImpl imageDataImpl = this.f62597m;
        if (imageDataImpl != null) {
            imageDataImpl.setImage(new BitmapDrawable(getApplicationContext().getResources(), bitmap));
        }
    }

    @Override // mp.g
    public void j(@Nullable Uri uri) {
        this.f62598n = uri;
    }

    @Override // mp.h
    @Nullable
    public Drawable k() {
        ImageDataImpl imageDataImpl = this.f62596l;
        if (imageDataImpl != null) {
            return imageDataImpl.getImage();
        }
        return null;
    }

    @Override // mp.g
    public void l(@Nullable Bitmap bitmap) {
        ImageDataImpl imageDataImpl = this.f62596l;
        if (imageDataImpl != null) {
            imageDataImpl.setImage(new BitmapDrawable(getApplicationContext().getResources(), bitmap));
        }
    }

    @Override // mp.e
    @Nullable
    public LabelData m() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.m();
        }
        return null;
    }

    @Override // mp.h
    @Nullable
    public Uri n() {
        return this.f62598n;
    }

    @Override // mp.e
    @Nullable
    public String o() {
        i iVar = this.f62600p;
        if (iVar != null) {
            return iVar.o();
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        A();
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onClicked() {
        super.onClicked();
        String F = F();
        if (TextUtils.isEmpty(F)) {
            return;
        }
        T(getActivity());
        k.c(getApplicationContext(), F, new yq.l() { // from class: mp.c
            @Override // yq.l
            public final void a(Object obj) {
                d.this.M((Boolean) obj);
            }
        });
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onDestroy() {
        try {
            super.onDestroy();
            U();
            ImageDataImpl imageDataImpl = this.f62596l;
            if (imageDataImpl != null) {
                imageDataImpl.destroy();
                this.f62596l = null;
            }
            ImageDataImpl imageDataImpl2 = this.f62597m;
            if (imageDataImpl2 != null) {
                imageDataImpl2.destroy();
                this.f62597m = null;
            }
            Uri uri = this.f62598n;
            if (uri != null && uri.getPath() != null) {
                File file = new File(this.f62598n.getPath());
                if (file.exists()) {
                    file.delete();
                }
                this.f62598n = null;
            }
            i iVar = this.f62600p;
            if (iVar != null) {
                iVar.d();
            }
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    @Override // io.bidmachine.AdObjectImpl
    @NonNull
    /* renamed from: y */
    public m createUnifiedCallback(@NonNull AdProcessCallback adProcessCallback) {
        return new e(adProcessCallback);
    }

    @Override // mp.f
    public void h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdObject.java */
    /* loaded from: classes8.dex */
    public class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@NonNull View view) {
            view.removeOnAttachStateChangeListener(this);
            d.this.K();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NonNull View view) {
        }
    }
}
