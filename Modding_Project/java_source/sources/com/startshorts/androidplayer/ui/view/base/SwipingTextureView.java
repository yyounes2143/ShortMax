package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.TextureView;
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
/* compiled from: SwipingTextureView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SwipingTextureView extends TextureView {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f47152t = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f47153a;

    /* renamed from: b  reason: collision with root package name */
    private final int f47154b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private MotionEvent f47155c;

    /* renamed from: d  reason: collision with root package name */
    private int f47156d;

    /* renamed from: e  reason: collision with root package name */
    private int f47157e;

    /* renamed from: f  reason: collision with root package name */
    private int f47158f;

    /* renamed from: g  reason: collision with root package name */
    private int f47159g;

    /* renamed from: h  reason: collision with root package name */
    private final int f47160h;

    /* renamed from: i  reason: collision with root package name */
    private final int f47161i;

    /* renamed from: j  reason: collision with root package name */
    private final int f47162j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private r f47163k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f47164l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f47165m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f47166n;

    /* renamed from: o  reason: collision with root package name */
    private int f47167o;

    /* renamed from: p  reason: collision with root package name */
    private int f47168p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final SparseBooleanArray f47169q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Handler f47170r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f47171s;

    /* compiled from: SwipingTextureView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SwipingTextureView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static class b {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingTextureView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47154b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.f47160h = deviceUtil.G() / 10;
        this.f47161i = deviceUtil.G() / 5;
        this.f47162j = jk.g.a(8.0f);
        this.f47168p = -1;
        this.f47169q = new SparseBooleanArray();
        this.f47171s = true;
    }

    private final void f() {
        Handler handler = this.f47170r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f47171s = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(SwipingTextureView swipingTextureView) {
        int i10 = swipingTextureView.f47167o;
        Handler handler = swipingTextureView.getHandler();
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        swipingTextureView.f47167o = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(SwipingTextureView swipingTextureView) {
        if (swipingTextureView.f47169q.size() == 0) {
            swipingTextureView.f();
        }
    }

    private final void i() {
        e();
        this.f47163k = CoroutineUtil.f48072a.e(1000L, 50L, new Function1() { // from class: com.startshorts.androidplayer.ui.view.base.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j10;
                j10 = SwipingTextureView.j(SwipingTextureView.this, ((Long) obj).longValue());
                return j10;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.view.base.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit k10;
                k10 = SwipingTextureView.k(SwipingTextureView.this);
                return k10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(SwipingTextureView swipingTextureView, long j10) {
        if (1000 - j10 >= 250 && !swipingTextureView.f47171s && !swipingTextureView.f47164l) {
            swipingTextureView.f47164l = true;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(SwipingTextureView swipingTextureView) {
        if (!swipingTextureView.f47165m && Math.abs(swipingTextureView.f47158f) <= swipingTextureView.f47162j && !swipingTextureView.f47171s) {
            swipingTextureView.f47165m = true;
        }
        return Unit.f60915a;
    }

    public final void e() {
        this.f47164l = false;
        this.f47165m = false;
        this.f47166n = false;
        r rVar = this.f47163k;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f47163k = null;
    }

    @Nullable
    public final b getMListener() {
        return null;
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
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.base.SwipingTextureView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingTextureView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47154b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.f47160h = deviceUtil.G() / 10;
        this.f47161i = deviceUtil.G() / 5;
        this.f47162j = jk.g.a(8.0f);
        this.f47168p = -1;
        this.f47169q = new SparseBooleanArray();
        this.f47171s = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingTextureView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47154b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.f47160h = deviceUtil.G() / 10;
        this.f47161i = deviceUtil.G() / 5;
        this.f47162j = jk.g.a(8.0f);
        this.f47168p = -1;
        this.f47169q = new SparseBooleanArray();
        this.f47171s = true;
    }

    public final void setMListener(@Nullable b bVar) {
    }
}
