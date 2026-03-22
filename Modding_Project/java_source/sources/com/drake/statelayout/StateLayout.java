package com.drake.statelayout;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import com.drake.statelayout.StateLayout;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p1.b;
import p1.c;
import p1.e;
/* compiled from: StateLayout.kt */
@Metadata
/* loaded from: classes3.dex */
public final class StateLayout extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<Status, e> f13561a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13562b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13563c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private int[] f13564d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Function2<? super View, Object, Unit> f13565e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Function2<? super View, Object, Unit> f13566f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Function2<? super View, Object, Unit> f13567g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Function2<? super View, Object, Unit> f13568h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Function2<? super StateLayout, Object, Unit> f13569i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private Status f13570j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f13571k;

    /* renamed from: l  reason: collision with root package name */
    private long f13572l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private b f13573m;
    @LayoutRes

    /* renamed from: n  reason: collision with root package name */
    private int f13574n;
    @LayoutRes

    /* renamed from: o  reason: collision with root package name */
    private int f13575o;
    @LayoutRes

    /* renamed from: p  reason: collision with root package name */
    private int f13576p;

    /* compiled from: StateLayout.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            iArr[Status.EMPTY.ordinal()] = 1;
            iArr[Status.ERROR.ordinal()] = 2;
            iArr[Status.LOADING.ordinal()] = 3;
            iArr[Status.CONTENT.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StateLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function2<View, Object, Unit> getOnContent() {
        Function2 function2 = this.f13567g;
        if (function2 == null) {
            return c.f64482a.e();
        }
        return function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function2<View, Object, Unit> getOnEmpty() {
        Function2 function2 = this.f13565e;
        if (function2 == null) {
            return c.f64482a.f();
        }
        return function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function2<View, Object, Unit> getOnError() {
        Function2 function2 = this.f13566f;
        if (function2 == null) {
            return c.f64482a.g();
        }
        return function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Function2<View, Object, Unit> getOnLoading() {
        Function2 function2 = this.f13568h;
        if (function2 == null) {
            return c.f64482a.h();
        }
        return function2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int[] getRetryIds() {
        int[] iArr = this.f13564d;
        if (iArr == null) {
            return c.f64482a.i();
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View j(Status status, Object obj) throws NullPointerException {
        int emptyLayout;
        e eVar = this.f13561a.get(status);
        if (eVar != null) {
            eVar.c(obj);
            return eVar.b();
        }
        int[] iArr = a.$EnumSwitchMapping$0;
        int i10 = iArr[status.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        emptyLayout = -1;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    emptyLayout = getLoadingLayout();
                }
            } else {
                emptyLayout = getErrorLayout();
            }
        } else {
            emptyLayout = getEmptyLayout();
        }
        if (emptyLayout == -1) {
            int i11 = iArr[status.ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            throw new NoWhenBranchMatchedException();
                        }
                        throw new Resources.NotFoundException("No StateLayout contentView is set");
                    }
                    throw new Resources.NotFoundException("No StateLayout loadingLayout is set");
                }
                throw new Resources.NotFoundException("No StateLayout errorLayout is set");
            }
            throw new Resources.NotFoundException("No StateLayout emptyLayout is set");
        }
        View view = LayoutInflater.from(getContext()).inflate(emptyLayout, (ViewGroup) this, false);
        ArrayMap<Status, e> arrayMap = this.f13561a;
        Intrinsics.checkNotNullExpressionValue(view, "view");
        arrayMap.put(status, new e(view, obj));
        return view;
    }

    private final void l(Status status) {
        this.f13561a.remove(status);
    }

    private final void m(final Function0<Unit> function0) {
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            function0.invoke();
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: p1.d
                @Override // java.lang.Runnable
                public final void run() {
                    StateLayout.n(Function0.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "$block");
        block.invoke();
    }

    public static /* synthetic */ void p(StateLayout stateLayout, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        stateLayout.o(obj);
    }

    public static /* synthetic */ void r(StateLayout stateLayout, Object obj, boolean z10, boolean z11, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = true;
        }
        stateLayout.q(obj, z10, z11);
    }

    private final void s(final Status status, final Object obj) {
        Object obj2;
        if (this.f13563c) {
            this.f13562b = true;
        }
        Status status2 = this.f13570j;
        if (status2 == status) {
            e eVar = this.f13561a.get(status2);
            if (eVar != null) {
                obj2 = eVar.a();
            } else {
                obj2 = null;
            }
            if (Intrinsics.areEqual(obj2, obj)) {
                return;
            }
        }
        m(new Function0<Unit>() { // from class: com.drake.statelayout.StateLayout$showStatus$1

            /* compiled from: StateLayout.kt */
            @Metadata
            /* loaded from: classes3.dex */
            public /* synthetic */ class a {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[Status.values().length];
                    iArr[Status.EMPTY.ordinal()] = 1;
                    iArr[Status.ERROR.ordinal()] = 2;
                    iArr[Status.LOADING.ordinal()] = 3;
                    iArr[Status.CONTENT.ordinal()] = 4;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* JADX WARN: Code restructure failed: missing block: B:20:0x009a, code lost:
                r1 = r13.f13577d.getRetryIds();
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00de, code lost:
                r1 = r13.f13577d.getOnContent();
             */
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke2() {
                /*
                    Method dump skipped, instructions count: 301
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.drake.statelayout.StateLayout$showStatus$1.invoke2():void");
            }
        });
    }

    public final long getClickThrottle() {
        return this.f13572l;
    }

    public final int getEmptyLayout() {
        int i10 = this.f13575o;
        if (i10 == -1) {
            return c.b();
        }
        return i10;
    }

    public final int getErrorLayout() {
        int i10 = this.f13574n;
        if (i10 == -1) {
            return c.c();
        }
        return i10;
    }

    public final boolean getLoaded() {
        return this.f13571k;
    }

    public final int getLoadingLayout() {
        int i10 = this.f13576p;
        if (i10 == -1) {
            return c.d();
        }
        return i10;
    }

    @NotNull
    public final b getStateChangedHandler() {
        return this.f13573m;
    }

    @NotNull
    public final Status getStatus() {
        return this.f13570j;
    }

    @NotNull
    public final StateLayout k(@NotNull Function2<? super StateLayout, Object, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.f13569i = block;
        return this;
    }

    public final void o(@Nullable Object obj) {
        if (this.f13563c && this.f13562b) {
            return;
        }
        s(Status.CONTENT, obj);
        this.f13571k = true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() <= 1 && getChildCount() != 0) {
            if (this.f13561a.size() == 0) {
                View view = getChildAt(0);
                Intrinsics.checkNotNullExpressionValue(view, "view");
                setContent(view);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("StateLayout only have one child view");
    }

    public final void q(@Nullable Object obj, boolean z10, boolean z11) {
        Function2<? super StateLayout, Object, Unit> function2;
        if (!z10) {
            s(Status.LOADING, obj);
        }
        if (z11 && (function2 = this.f13569i) != null) {
            function2.invoke(this, obj);
        }
    }

    public final void setClickThrottle(long j10) {
        this.f13572l = j10;
    }

    public final void setContent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f13561a.put(Status.CONTENT, new e(view, null));
    }

    public final void setEmptyLayout(int i10) {
        if (this.f13575o != i10) {
            l(Status.EMPTY);
            this.f13575o = i10;
        }
    }

    public final void setErrorLayout(int i10) {
        if (this.f13574n != i10) {
            l(Status.ERROR);
            this.f13574n = i10;
        }
    }

    public final void setLoaded(boolean z10) {
        this.f13571k = z10;
    }

    public final void setLoadingLayout(int i10) {
        if (this.f13576p != i10) {
            l(Status.LOADING);
            this.f13576p = i10;
        }
    }

    public final void setStateChangedHandler(@NotNull b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f13573m = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StateLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StateLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f13561a = new ArrayMap<>();
        this.f13570j = Status.CONTENT;
        this.f13572l = c.a();
        this.f13573m = c.j();
        this.f13574n = -1;
        this.f13575o = -1;
        this.f13576p = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p1.a.f64446h0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr… R.styleable.StateLayout)");
        try {
            setEmptyLayout(obtainStyledAttributes.getResourceId(p1.a.f64448i0, -1));
            setErrorLayout(obtainStyledAttributes.getResourceId(p1.a.f64450j0, -1));
            setLoadingLayout(obtainStyledAttributes.getResourceId(p1.a.f64452k0, -1));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
