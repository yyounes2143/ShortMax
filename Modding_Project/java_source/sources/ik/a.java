package ik;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposureHandler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a implements ViewTreeObserver.OnPreDrawListener {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final C0779a f53449l = new C0779a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final View f53450a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53451b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f53452c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f53453d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53454e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private c f53455f;

    /* renamed from: g  reason: collision with root package name */
    private long f53456g;

    /* renamed from: h  reason: collision with root package name */
    private float f53457h;

    /* renamed from: i  reason: collision with root package name */
    private int f53458i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Rect f53459j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f53460k;

    /* compiled from: ExposureHandler.kt */
    @Metadata
    /* renamed from: ik.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0779a {
        public /* synthetic */ C0779a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0779a() {
        }
    }

    public a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f53450a = view;
        this.f53452c = true;
        this.f53453d = true;
        this.f53459j = new Rect();
    }

    private final void i() {
        c cVar;
        if (this.f53460k) {
            Logger logger = Logger.f41511a;
            logger.h("ExposureHandler", "mAttachedToWindow=" + this.f53451b + ",mHasWindowFocus=" + this.f53452c + ",mVisibilityAggregated=" + this.f53453d + ",mExposure=" + this.f53454e + "，mTimeLimit=" + this.f53458i);
        }
        synchronized (this) {
            try {
                if (this.f53451b && this.f53452c && this.f53453d && !this.f53454e) {
                    this.f53454e = true;
                    this.f53456g = System.currentTimeMillis();
                    if (this.f53458i == 0 && (cVar = this.f53455f) != null) {
                        cVar.show();
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void j() {
        if (this.f53460k) {
            Logger logger = Logger.f41511a;
            logger.h("ExposureHandler", "mAttachedToWindow=" + this.f53451b + ",mHasWindowFocus=" + this.f53452c + ",mVisibilityAggregated=" + this.f53453d + ",mExposure=" + this.f53454e + "，mTimeLimit=" + this.f53458i);
        }
        if ((!this.f53451b || !this.f53452c || !this.f53453d) && this.f53454e) {
            this.f53454e = false;
            if (this.f53458i > 0 && System.currentTimeMillis() - this.f53456g > this.f53458i) {
                Logger.f41511a.h("TAG", "tryStopExposure show ");
                c cVar = this.f53455f;
                if (cVar != null) {
                    cVar.show();
                }
            }
        }
    }

    public final void a() {
        this.f53451b = true;
        this.f53450a.getViewTreeObserver().addOnPreDrawListener(this);
    }

    public final void b() {
        this.f53451b = false;
        this.f53450a.getViewTreeObserver().removeOnPreDrawListener(this);
        if (this.f53460k) {
            Logger.f41511a.h("ExposureHandler", "onDetachedFromWindow");
        }
        j();
    }

    public final void c(boolean z10) {
        this.f53453d = z10;
        if (this.f53460k) {
            Logger logger = Logger.f41511a;
            logger.h("ExposureHandler", "onVisibilityAggregated " + z10);
        }
        j();
    }

    public final void d(boolean z10) {
        this.f53452c = z10;
        if (this.f53460k) {
            Logger logger = Logger.f41511a;
            logger.h("ExposureHandler", "onWindowFocusChanged " + z10);
        }
        j();
    }

    public final void e(@NotNull c callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f53455f = callback;
    }

    public final void f(boolean z10) {
        this.f53460k = z10;
    }

    public final void g(float f10) {
        this.f53457h = f10;
    }

    public final void h(int i10) {
        this.f53458i = i10;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (this.f53450a.getLocalVisibleRect(this.f53459j) && this.f53450a.isShown()) {
            if (this.f53457h > 0.0f) {
                Rect rect = this.f53459j;
                if (Math.abs(rect.bottom - rect.top) > this.f53450a.getHeight() * this.f53457h) {
                    Rect rect2 = this.f53459j;
                    if (Math.abs(rect2.right - rect2.left) > this.f53450a.getWidth() * this.f53457h) {
                        if (this.f53460k) {
                            Logger.f41511a.h("ExposureHandler", "mShowRatio>0, tryExposure");
                        }
                        i();
                    }
                }
                if (this.f53460k) {
                    Logger.f41511a.h("ExposureHandler", "tryStopExposure");
                }
                j();
            } else {
                if (this.f53460k) {
                    Logger.f41511a.h("ExposureHandler", "mShowRatio=0,tryExposure");
                }
                i();
            }
            return true;
        }
        if (this.f53460k) {
            Logger.f41511a.h("ExposureHandler", "!visible ");
        }
        j();
        return true;
    }
}
