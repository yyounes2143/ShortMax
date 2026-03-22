package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.mraid.s;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes7.dex */
public class MraidAdView extends FrameLayout {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final MraidPlacementType f54489a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f54490b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f54491c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f54492d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f54493e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f54494f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f54495g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f54496h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f54497i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f54498j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final AtomicBoolean f54499k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final GestureDetector f54500l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final n f54501m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final t f54502n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    private final j f54503o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    private final k f54504p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final w f54505q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    private final s f54506r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    private final e f54507s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private s f54508t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    private MraidViewState f54509u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private Runnable f54510v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f54511a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54512b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f54513c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f54514d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ s f54515e;

        /* renamed from: io.bidmachine.iab.mraid.MraidAdView$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class RunnableC0790a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Point f54517a;

            /* renamed from: io.bidmachine.iab.mraid.MraidAdView$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes7.dex */
            class RunnableC0791a implements Runnable {
                RunnableC0791a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    MraidAdView.this.t();
                }
            }

            RunnableC0790a(Point point) {
                this.f54517a = point;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC0791a runnableC0791a = new RunnableC0791a();
                a aVar = a.this;
                MraidAdView mraidAdView = MraidAdView.this;
                Point point = this.f54517a;
                mraidAdView.p(point.x, point.y, aVar.f54515e, runnableC0791a);
            }
        }

        a(int i10, int i11, int i12, int i13, s sVar) {
            this.f54511a = i10;
            this.f54512b = i11;
            this.f54513c = i12;
            this.f54514d = i13;
            this.f54515e = sVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Point t10 = sm.q.t(this.f54511a, this.f54512b, this.f54513c, this.f54514d);
            MraidAdView.this.d(t10.x, t10.y, this.f54515e, new RunnableC0790a(t10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f54520a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f54521b;

        b(View view, Runnable runnable) {
            this.f54520a = view;
            this.f54521b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidAdView.this.e(this.f54520a);
            Runnable runnable = this.f54521b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* loaded from: classes7.dex */
    public static class c {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f54523a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final MraidPlacementType f54524b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final e f54525c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f54526d = "https://localhost";
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private List<String> f54527e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f54528f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f54529g;

        public c(@NonNull Context context, @Nullable MraidPlacementType mraidPlacementType, @NonNull e eVar) {
            this.f54523a = context;
            this.f54524b = mraidPlacementType;
            this.f54525c = eVar;
        }

        public MraidAdView a() {
            return new MraidAdView(this.f54523a, this.f54524b, this.f54526d, this.f54529g, this.f54527e, this.f54528f, this.f54525c);
        }

        public c b(@Nullable String[] strArr) {
            List<String> list;
            if (strArr != null) {
                list = Arrays.asList(strArr);
            } else {
                list = null;
            }
            this.f54527e = list;
            return this;
        }

        public c c(@Nullable String str) {
            this.f54526d = str;
            return this;
        }

        public c d(@Nullable String str) {
            this.f54528f = str;
            return this;
        }

        public c e(@Nullable String str) {
            this.f54529g = str;
            return this;
        }
    }

    /* loaded from: classes7.dex */
    private static class d extends GestureDetector.SimpleOnGestureListener {
        private d() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(@Nullable MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* loaded from: classes7.dex */
    public interface e {
        void a(@NonNull MraidAdView mraidAdView, @NonNull m mVar);

        void b(@NonNull MraidAdView mraidAdView);

        void c(@NonNull MraidAdView mraidAdView);

        void d(@NonNull MraidAdView mraidAdView, @NonNull qm.a aVar);

        void e(@NonNull MraidAdView mraidAdView, @NonNull String str);

        void f(@NonNull MraidAdView mraidAdView, @NonNull String str);

        void g(@NonNull MraidAdView mraidAdView, @NonNull PrivacySheetParams privacySheetParams);

        void h(@NonNull MraidAdView mraidAdView, boolean z10);

        void i(@NonNull MraidAdView mraidAdView);

        void j(@NonNull MraidAdView mraidAdView, @NonNull String str);

        void k(@NonNull MraidAdView mraidAdView, @NonNull qm.a aVar);

        void l(@NonNull MraidAdView mraidAdView, @NonNull qm.a aVar);

        void m(@NonNull MraidAdView mraidAdView, @NonNull String str, @NonNull WebView webView, boolean z10);

        void n(@NonNull MraidAdView mraidAdView, @NonNull String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public abstract class f implements s.a {
        private f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(String str) {
            MraidAdView.this.f54507s.n(MraidAdView.this, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(String str) {
            MraidAdView.this.f54507s.f(MraidAdView.this, str);
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void b() {
            h.c("MraidAdView", "Callback - onLoaded", new Object[0]);
            MraidAdView.this.o();
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void c(@NonNull qm.a aVar) {
            h.c("MraidAdView", "Callback - onError: %s", aVar);
            MraidAdView.this.n(aVar);
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void e(@Nullable String str) {
            h.c("MraidAdView", "Callback - onPlayVideo: %s", str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                MraidAdView.this.f54507s.j(MraidAdView.this, URLDecoder.decode(str, "UTF-8"));
            } catch (UnsupportedEncodingException e10) {
                h.e("MraidAdView", e10);
            }
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void f(@NonNull String str) {
            h.c("MraidAdView", "Callback - onOpen: %s", str);
            MraidAdView.this.v(str);
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void g(@Nullable String str) {
            h.c("MraidAdView", "Callback - onStorePicture: %s", str);
            String b10 = MraidAdView.this.f54505q.b(str);
            if (!TextUtils.isEmpty(b10)) {
                MraidAdView.this.m(b10, new yq.d() { // from class: io.bidmachine.iab.mraid.b
                    @Override // yq.d
                    public final void execute(Object obj) {
                        MraidAdView.f.this.o((String) obj);
                    }
                });
            }
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void h(@NonNull String str) {
            h.c("MraidAdView", "Callback - onOpenPrivacySheet: %s", str);
            MraidAdView.this.s(str);
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void i(@Nullable String str) {
            h.c("MraidAdView", "Callback - onCalendarEvent: %s", str);
            String a10 = MraidAdView.this.f54505q.a(str);
            if (!TextUtils.isEmpty(a10)) {
                MraidAdView.this.m(a10, new yq.d() { // from class: io.bidmachine.iab.mraid.c
                    @Override // yq.d
                    public final void execute(Object obj) {
                        MraidAdView.f.this.n((String) obj);
                    }
                });
            }
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void k(@NonNull m mVar) {
            h.c("MraidAdView", "Callback - onOrientation: %s", mVar);
            if (MraidAdView.this.P() || MraidAdView.this.f54509u == MraidViewState.EXPANDED) {
                MraidAdView.this.f54507s.a(MraidAdView.this, mVar);
            }
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void onClose() {
            h.c("MraidAdView", "Callback - onClose", new Object[0]);
            MraidAdView.this.c();
        }

        /* synthetic */ f(MraidAdView mraidAdView, a aVar) {
            this();
        }
    }

    /* loaded from: classes7.dex */
    private class g extends f {
        private g() {
            super(MraidAdView.this, null);
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void a(boolean z10) {
            if (z10) {
                MraidAdView.this.G();
                MraidAdView.this.J();
            }
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void d(boolean z10) {
            e eVar = MraidAdView.this.f54507s;
            MraidAdView mraidAdView = MraidAdView.this;
            eVar.h(mraidAdView, mraidAdView.f54506r.w());
        }

        @Override // io.bidmachine.iab.mraid.s.a
        public void j(@NonNull String str) {
            MraidAdView.this.B(str);
        }

        /* synthetic */ g(MraidAdView mraidAdView, a aVar) {
            this();
        }
    }

    public MraidAdView(@NonNull Context context, @Nullable MraidPlacementType mraidPlacementType, @Nullable String str, @Nullable String str2, @Nullable List<String> list, @Nullable String str3, @NonNull e eVar) {
        super(context);
        this.f54505q = new w();
        this.f54489a = mraidPlacementType;
        this.f54490b = str;
        this.f54492d = str2;
        this.f54491c = str3;
        this.f54507s = eVar;
        this.f54493e = new AtomicBoolean(false);
        this.f54494f = new AtomicBoolean(false);
        this.f54495g = new AtomicBoolean(false);
        this.f54496h = new AtomicBoolean(false);
        this.f54497i = new AtomicBoolean(false);
        this.f54498j = new AtomicBoolean(false);
        this.f54499k = new AtomicBoolean(false);
        this.f54500l = new GestureDetector(context, new d(null));
        this.f54501m = new n(context);
        this.f54502n = new t();
        j jVar = new j(context, list);
        this.f54503o = jVar;
        this.f54504p = new k(jVar);
        s sVar = new s(context, new g(this, null));
        this.f54506r = sVar;
        addView(sVar.u(), new FrameLayout.LayoutParams(-1, -1, 17));
        this.f54509u = MraidViewState.LOADING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(@NonNull String str) {
        if (this.f54509u != MraidViewState.LOADING || !this.f54493e.compareAndSet(false, true)) {
            return;
        }
        this.f54506r.l(this.f54503o);
        MraidPlacementType mraidPlacementType = this.f54489a;
        if (mraidPlacementType != null) {
            this.f54506r.i(mraidPlacementType);
        }
        s sVar = this.f54506r;
        sVar.m(sVar.x());
        this.f54506r.p(this.f54491c);
        e(this.f54506r.u());
        setViewState(MraidViewState.DEFAULT);
        G();
        this.f54507s.m(this, str, this.f54506r.u(), this.f54506r.w());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(String str) {
        this.f54507s.e(this, str);
    }

    private boolean F() {
        return this.f54495g.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (!this.f54494f.compareAndSet(false, true)) {
            return;
        }
        this.f54506r.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        if (!this.f54496h.compareAndSet(false, true)) {
            return;
        }
        this.f54507s.b(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f54507s.c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i10, int i11, @NonNull s sVar, @NonNull Runnable runnable) {
        if (!T()) {
            k(sVar.u(), i10, i11);
            this.f54510v = runnable;
            postDelayed(runnable, 150L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(@NonNull View view) {
        Context context = getContext();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f54501m.c(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int[] iArr = new int[2];
        View o10 = o.o(context, this);
        o10.getLocationOnScreen(iArr);
        this.f54501m.h(iArr[0], iArr[1], o10.getWidth(), o10.getHeight());
        getLocationOnScreen(iArr);
        this.f54501m.f(iArr[0], iArr[1], getWidth(), getHeight());
        view.getLocationOnScreen(iArr);
        this.f54501m.d(iArr[0], iArr[1], view.getWidth(), view.getHeight());
        this.f54506r.j(this.f54501m);
        s sVar = this.f54508t;
        if (sVar != null) {
            sVar.j(this.f54501m);
        }
    }

    @NonNull
    private s getCurrentMraidWebViewController() {
        s sVar = this.f54508t;
        if (sVar == null) {
            return this.f54506r;
        }
        return sVar;
    }

    private void k(@NonNull MraidWebView mraidWebView, int i10, int i11) {
        mraidWebView.dispatchTouchEvent(sm.q.C(0, i10, i11));
        mraidWebView.dispatchTouchEvent(sm.q.C(1, i10, i11));
    }

    private void l(@NonNull s sVar, int i10, int i11, int i12, int i13) {
        if (!this.f54498j.compareAndSet(false, true)) {
            return;
        }
        this.f54499k.set(false);
        a aVar = new a(i10, i11, i12, i13, sVar);
        Point u10 = sm.q.u(i10, i11);
        d(u10.x, u10.y, sVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(@NonNull String str, @NonNull yq.d<String> dVar) {
        this.f54497i.set(true);
        this.f54498j.set(false);
        this.f54499k.set(true);
        removeCallbacks(this.f54510v);
        if (!this.f54504p.a(str)) {
            return;
        }
        dVar.execute(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(@NonNull qm.a aVar) {
        if (Q()) {
            if (F()) {
                this.f54507s.k(this, aVar);
                return;
            } else {
                this.f54507s.l(this, aVar);
                return;
            }
        }
        this.f54507s.d(this, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f54507s.i(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(int i10, int i11, @NonNull s sVar, @NonNull Runnable runnable) {
        if (!T()) {
            sVar.g(i10, i11);
            this.f54510v = runnable;
            postDelayed(runnable, 150L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(@NonNull String str) {
        PrivacySheetParams c10 = sq.g.c(str);
        if (c10 == null) {
            h.d("MraidAdView", "Callback - can't parse privacy sheet", new Object[0]);
        } else {
            this.f54507s.g(this, c10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (!T() && !TextUtils.isEmpty(this.f54492d)) {
            v(this.f54492d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(@NonNull String str) {
        m(str, new yq.d() { // from class: io.bidmachine.iab.mraid.a
            @Override // yq.d
            public final void execute(Object obj) {
                MraidAdView.this.E((String) obj);
            }
        });
    }

    public void C() {
        this.f54502n.a();
        this.f54506r.s();
        s sVar = this.f54508t;
        if (sVar != null) {
            sVar.s();
        }
    }

    public void L(int i10, int i11, int i12, int i13) {
        l(getCurrentMraidWebViewController(), i10, i11, i12, i13);
    }

    public void M(int i10, int i11) {
        Rect j10 = this.f54501m.j();
        L(j10.width(), j10.height(), i10, i11);
    }

    public void N() {
        MraidWebView u10 = getCurrentMraidWebViewController().u();
        L(u10.getMeasuredWidth(), u10.getMeasuredHeight(), 17, 17);
    }

    public boolean P() {
        if (this.f54489a == MraidPlacementType.INTERSTITIAL) {
            return true;
        }
        return false;
    }

    public boolean Q() {
        return this.f54493e.get();
    }

    public boolean R() {
        return this.f54497i.get();
    }

    public boolean S() {
        return this.f54506r.v();
    }

    public boolean T() {
        return this.f54499k.get();
    }

    public boolean U() {
        return this.f54506r.w();
    }

    public void W(@Nullable String str) {
        if (str == null) {
            n(qm.a.h("Html data are null"));
            return;
        }
        this.f54506r.y(this.f54490b, String.format("<script type='application/javascript'>%s</script>%s%s", o.h(), rm.b.e(), o.r(str)), "text/html", "UTF-8");
        this.f54506r.h(h.f());
    }

    public void X() {
        if (this.f54495g.compareAndSet(false, true) && Q()) {
            G();
        }
    }

    public void Y(@Nullable Runnable runnable) {
        MraidWebView u10;
        s sVar = this.f54508t;
        if (sVar != null) {
            u10 = sVar.u();
        } else {
            u10 = this.f54506r.u();
        }
        this.f54502n.b(this, u10).d(new b(u10, runnable));
    }

    @Nullable
    public String getBaseUrl() {
        return this.f54490b;
    }

    @Nullable
    public m getLastOrientationProperties() {
        return this.f54506r.t();
    }

    @NonNull
    public MraidViewState getMraidViewState() {
        return this.f54509u;
    }

    @NonNull
    public WebView getWebView() {
        return this.f54506r.u();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f54500l.onTouchEvent(motionEvent)) {
            motionEvent.setAction(3);
        }
        return super.onTouchEvent(motionEvent);
    }

    @VisibleForTesting
    void setViewState(@NonNull MraidViewState mraidViewState) {
        this.f54509u = mraidViewState;
        this.f54506r.k(mraidViewState);
        s sVar = this.f54508t;
        if (sVar != null) {
            sVar.k(mraidViewState);
        }
        if (mraidViewState != MraidViewState.HIDDEN) {
            Y(null);
        }
    }

    public void w() {
        setViewState(MraidViewState.HIDDEN);
    }

    public void x() {
        s sVar = this.f54508t;
        if (sVar != null) {
            sVar.s();
            this.f54508t = null;
        } else {
            addView(this.f54506r.u());
        }
        setViewState(MraidViewState.DEFAULT);
    }

    public void y() {
        addView(this.f54506r.u());
        setViewState(MraidViewState.DEFAULT);
    }
}
