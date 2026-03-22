package df;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import androidx.activity.ComponentActivity;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$anim;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FloatViewManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f50376i = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b f50377a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f50378b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ef.b f50379c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ef.c f50380d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f50381e;

    /* renamed from: f  reason: collision with root package name */
    private long f50382f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private r f50383g;

    /* renamed from: h  reason: collision with root package name */
    private long f50384h;

    /* compiled from: FloatViewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FloatViewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private int f50385a = R$anim.anim_float_view_top_enter;

        /* renamed from: b  reason: collision with root package name */
        private int f50386b = R$anim.anim_float_view_top_exit;

        /* renamed from: c  reason: collision with root package name */
        private long f50387c = 5000;

        /* renamed from: d  reason: collision with root package name */
        private int f50388d;

        public b() {
        }

        public final int a() {
            return this.f50385a;
        }

        public final int b() {
            return this.f50386b;
        }

        public final long c() {
            return this.f50387c;
        }

        public final int d() {
            return this.f50388d;
        }

        public final void e(int i10) {
            this.f50388d = i10;
        }
    }

    /* compiled from: FloatViewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface c {
        void onDismiss();
    }

    public e() {
        b bVar = new b();
        this.f50377a = bVar;
        this.f50382f = bVar.c();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void e(View view) {
        view.setOnTouchListener(new View.OnTouchListener() { // from class: df.c
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean f10;
                f10 = e.f(e.this, view2, motionEvent);
                return f10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(e eVar, View view, MotionEvent motionEvent) {
        ef.c cVar = eVar.f50380d;
        if (cVar != null) {
            Intrinsics.checkNotNull(view);
            Intrinsics.checkNotNull(motionEvent);
            return cVar.a(eVar, view, motionEvent);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(e eVar) {
        eVar.k();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(e eVar) {
        eVar.k();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(e eVar) {
        eVar.k();
        return Unit.f60915a;
    }

    public final boolean g(@NotNull BaseActivity activity) {
        View view;
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            Logger.f41511a.h("FloatViewManager", "attachToWindow");
            View decorView = activity.getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
            if (!(decorView instanceof ViewGroup)) {
                return false;
            }
            ef.b bVar = this.f50379c;
            if (bVar != null) {
                view = bVar.a(activity, (ViewGroup) decorView);
            } else {
                view = null;
            }
            this.f50378b = view;
            if (view != null) {
                view.setY(this.f50377a.d());
            }
            ((ViewGroup) decorView).addView(this.f50378b);
            View view2 = this.f50378b;
            if (view2 != null) {
                view2.startAnimation(AnimationUtils.loadAnimation(((ViewGroup) decorView).getContext(), this.f50377a.a()));
                p();
                e(view2);
                if (view2 instanceof ef.a) {
                    ((ef.a) view2).setOnDismissListener(new Function0() { // from class: df.a
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit i10;
                            i10 = e.i(e.this);
                            return i10;
                        }
                    });
                }
            }
            activity.w(new Function0() { // from class: df.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = e.j(e.this);
                    return j10;
                }
            });
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FloatViewManager", "attachToWindow exception -> " + e10.getMessage());
            return false;
        }
    }

    public final boolean h(@Nullable c cVar) {
        ComponentActivity componentActivity;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        BaseActivity baseActivity = null;
        if (d10 != null) {
            componentActivity = (IDActivity) d10.get();
        } else {
            componentActivity = null;
        }
        if (componentActivity instanceof BaseActivity) {
            baseActivity = (BaseActivity) componentActivity;
        }
        if (baseActivity == null) {
            return false;
        }
        this.f50381e = cVar;
        return g(baseActivity);
    }

    public final void k() {
        ViewParent viewParent;
        try {
            Logger.f41511a.h("FloatViewManager", "detachFromWindow");
            m();
            View view = this.f50378b;
            if (view != null) {
                viewParent = view.getParent();
            } else {
                viewParent = null;
            }
            if (viewParent instanceof ViewGroup) {
                View view2 = this.f50378b;
                if (view2 != null) {
                    view2.startAnimation(AnimationUtils.loadAnimation(((ViewGroup) viewParent).getContext(), this.f50377a.b()));
                }
                ((ViewGroup) viewParent).removeView(this.f50378b);
            }
            this.f50378b = null;
            c cVar = this.f50381e;
            if (cVar != null) {
                cVar.onDismiss();
            }
        } catch (Exception e10) {
            Logger.f41511a.e("FloatViewManager", "detachFromWindow exception -> " + e10.getMessage());
        }
    }

    @NotNull
    public final b l() {
        return this.f50377a;
    }

    public final void m() {
        this.f50382f = Math.max(0L, this.f50377a.c() - (DeviceUtil.f48146a.L() - this.f50384h));
        r rVar = this.f50383g;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f50383g = null;
    }

    public final void n(@Nullable ef.b bVar) {
        this.f50379c = bVar;
    }

    public final void o(@Nullable ef.c cVar) {
        this.f50380d = cVar;
    }

    public final void p() {
        this.f50384h = DeviceUtil.f48146a.L();
        r rVar = this.f50383g;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        long j10 = this.f50382f;
        if (j10 <= 0) {
            k();
        } else {
            this.f50383g = CoroutineUtil.g(CoroutineUtil.f48072a, j10, null, new Function0() { // from class: df.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit q10;
                    q10 = e.q(e.this);
                    return q10;
                }
            }, 2, null);
        }
    }
}
