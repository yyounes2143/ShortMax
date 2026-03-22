package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwipingFrameLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class SwipingFrameLayout extends BaseFrameLayout {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f47125u = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f47126b;

    /* renamed from: c  reason: collision with root package name */
    private final int f47127c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f47128d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private MotionEvent f47129e;

    /* renamed from: f  reason: collision with root package name */
    private int f47130f;

    /* renamed from: g  reason: collision with root package name */
    private int f47131g;

    /* renamed from: h  reason: collision with root package name */
    private int f47132h;

    /* renamed from: i  reason: collision with root package name */
    private int f47133i;

    /* renamed from: j  reason: collision with root package name */
    private final int f47134j;

    /* renamed from: k  reason: collision with root package name */
    private final int f47135k;

    /* renamed from: l  reason: collision with root package name */
    private final int f47136l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private r f47137m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f47138n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f47139o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f47140p;

    /* renamed from: q  reason: collision with root package name */
    private int f47141q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final SparseBooleanArray f47142r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Handler f47143s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f47144t;

    /* compiled from: SwipingFrameLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingFrameLayout(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47127c = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.f47134j = deviceUtil.G() / 10;
        this.f47135k = deviceUtil.G() / 5;
        this.f47136l = jk.g.a(8.0f);
        this.f47141q = -1;
        this.f47142r = new SparseBooleanArray();
        this.f47144t = true;
    }

    private final void n() {
        Handler handler = this.f47143s;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f47144t = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(SwipingFrameLayout swipingFrameLayout) {
        if (swipingFrameLayout.f47142r.size() == 0) {
            swipingFrameLayout.n();
        }
    }

    private final void p() {
        m();
        this.f47137m = CoroutineUtil.f48072a.e(1000L, 50L, new Function1() { // from class: com.startshorts.androidplayer.ui.view.base.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit q10;
                q10 = SwipingFrameLayout.q(SwipingFrameLayout.this, ((Long) obj).longValue());
                return q10;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.view.base.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit r10;
                r10 = SwipingFrameLayout.r(SwipingFrameLayout.this);
                return r10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(SwipingFrameLayout swipingFrameLayout, long j10) {
        if (1000 - j10 >= 250 && !swipingFrameLayout.f47144t && !swipingFrameLayout.f47138n) {
            swipingFrameLayout.f47138n = true;
            b bVar = swipingFrameLayout.f47128d;
            if (bVar != null) {
                bVar.g();
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(SwipingFrameLayout swipingFrameLayout) {
        if (!swipingFrameLayout.f47139o && Math.abs(swipingFrameLayout.f47132h) <= swipingFrameLayout.f47136l && !swipingFrameLayout.f47144t) {
            swipingFrameLayout.f47139o = true;
            b bVar = swipingFrameLayout.f47128d;
            if (bVar != null) {
                bVar.j();
            }
        }
        return Unit.f60915a;
    }

    @Nullable
    public final b getMListener() {
        return this.f47128d;
    }

    public final void m() {
        this.f47138n = false;
        this.f47139o = false;
        this.f47140p = false;
        r rVar = this.f47137m;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f47137m = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        if (r0 != 6) goto L20;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47128d = bVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47127c = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.f47134j = deviceUtil.G() / 10;
        this.f47135k = deviceUtil.G() / 5;
        this.f47136l = jk.g.a(8.0f);
        this.f47141q = -1;
        this.f47142r = new SparseBooleanArray();
        this.f47144t = true;
    }

    /* compiled from: SwipingFrameLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static class b {
        public void a(@NotNull MotionEvent motionEvent) {
            throw null;
        }

        public void b(@NotNull MotionEvent motionEvent) {
            throw null;
        }

        public void c(@NotNull MotionEvent motionEvent) {
            throw null;
        }

        public void d() {
            throw null;
        }

        public void e() {
            throw null;
        }

        public void f() {
            throw null;
        }

        public void g() {
            throw null;
        }

        public void h() {
            throw null;
        }

        public void j() {
            throw null;
        }

        public void i() {
        }

        public void k() {
        }

        public void l() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47127c = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.f47134j = deviceUtil.G() / 10;
        this.f47135k = deviceUtil.G() / 5;
        this.f47136l = jk.g.a(8.0f);
        this.f47141q = -1;
        this.f47142r = new SparseBooleanArray();
        this.f47144t = true;
    }
}
