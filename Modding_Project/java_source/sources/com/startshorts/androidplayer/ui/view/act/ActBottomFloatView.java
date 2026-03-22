package com.startshorts.androidplayer.ui.view.act;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.LifecycleRegistry;
import ce.j;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.act.ActBottomFloatView;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.m;
/* compiled from: ActBottomFloatView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActBottomFloatView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActBottomFloatView.kt\ncom/startshorts/androidplayer/ui/view/act/ActBottomFloatView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,225:1\n254#2:226\n256#2,2:227\n256#2,2:229\n256#2,2:231\n256#2,2:233\n256#2,2:235\n256#2,2:237\n*S KotlinDebug\n*F\n+ 1 ActBottomFloatView.kt\ncom/startshorts/androidplayer/ui/view/act/ActBottomFloatView\n*L\n154#1:226\n145#1:227,2\n146#1:229,2\n163#1:231,2\n164#1:233,2\n177#1:235,2\n178#1:237,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ActBottomFloatView extends BaseConstraintLayout implements LifecycleOwner {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f47010i = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private CustomFrescoView f47011b;

    /* renamed from: c  reason: collision with root package name */
    private CustomFrescoView f47012c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private r f47013d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private Function1<? super ActResource, Boolean> f47014e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private r f47015f;

    /* renamed from: g  reason: collision with root package name */
    private long f47016g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final LifecycleRegistry f47017h;

    /* compiled from: ActBottomFloatView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ActBottomFloatView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends z2.a<m> {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f47019c;

        b(String str) {
            this.f47019c = str;
        }

        @Override // z2.a, z2.b
        public void c(String str, Throwable th2) {
            String message;
            ActBottomFloatView actBottomFloatView = ActBottomFloatView.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("showImage failed -> url(");
            sb2.append(this.f47019c);
            sb2.append(") reason(");
            if (th2 == null) {
                message = "null";
            } else {
                message = th2.getMessage();
            }
            sb2.append(message);
            sb2.append(')');
            actBottomFloatView.r(sb2.toString());
        }

        @Override // z2.a, z2.b
        /* renamed from: g */
        public void d(String str, m mVar, Animatable animatable) {
            ActBottomFloatView actBottomFloatView = ActBottomFloatView.this;
            actBottomFloatView.s("showImage succeed -> url(" + this.f47019c + ')');
            super.d(str, mVar, animatable);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActBottomFloatView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47014e = new Function1() { // from class: bj.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean R;
                R = ActBottomFloatView.R((ActResource) obj);
                return Boolean.valueOf(R);
            }
        };
        this.f47017h = new LifecycleRegistry(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(ActBottomFloatView actBottomFloatView, ActResource actResource) {
        Intrinsics.checkNotNullParameter(actResource, "actResource");
        actBottomFloatView.J();
        actBottomFloatView.s("expand -> " + actResource);
        CustomFrescoView customFrescoView = actBottomFloatView.f47011b;
        CustomFrescoView customFrescoView2 = null;
        if (customFrescoView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceIv");
            customFrescoView = null;
        }
        customFrescoView.setVisibility(0);
        CustomFrescoView customFrescoView3 = actBottomFloatView.f47012c;
        if (customFrescoView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceShrinkedIv");
        } else {
            customFrescoView2 = customFrescoView3;
        }
        customFrescoView2.setVisibility(8);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object M(rs.c<? super com.startshorts.androidplayer.bean.act.ActResource> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$getBottomFloatActResource$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$getBottomFloatActResource$1 r0 = (com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$getBottomFloatActResource$1) r0
            int r1 = r0.f47022j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47022j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$getBottomFloatActResource$1 r0 = new com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$getBottomFloatActResource$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f47020h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f47022j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.manager.act.ActResourceManager r5 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a
            r0.f47022j = r3
            java.lang.Object r5 = r5.k(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r5 = kotlin.collections.CollectionsKt.firstOrNull(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.act.ActBottomFloatView.M(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(ActBottomFloatView actBottomFloatView, final Context context, View view) {
        actBottomFloatView.S(new Function1() { // from class: bj.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O;
                O = ActBottomFloatView.O(context, (ActResource) obj);
                return O;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(Context context, ActResource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        EventManager eventManager = EventManager.f42463a;
        eventManager.S("bf_icon_tab", it);
        EventManager.s0(eventManager, "bf_icon_tab_click", EventManager.x(eventManager, it, false, 2, null), 0L, 4, null);
        j.o(j.f3485a, context, "bf_icon_tab", it, null, 8, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(CustomFrescoView customFrescoView, String str) {
        if (str == null) {
            r("showImage failed -> url(null)");
            return;
        }
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        frescoConfig.setAutoPlayAnim(true);
        frescoConfig.setControllerListener(new b(str));
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean R(ActResource actResource) {
        if (actResource != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S(Function1<? super ActResource, Unit> function1) {
        if (!isAttachedToWindow()) {
            r("onActActive -> failed. isAttachedToWindow = false");
        } else {
            CoroutineUtil.l(CoroutineUtil.f48072a, "onActActive", false, new ActBottomFloatView$onActActive$1(this, function1, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(ActBottomFloatView actBottomFloatView, ActResource actResource) {
        Intrinsics.checkNotNullParameter(actResource, "actResource");
        try {
            if (actBottomFloatView.f47013d == null) {
                actBottomFloatView.s("shrink -> " + actResource + ' ');
                CustomFrescoView customFrescoView = actBottomFloatView.f47011b;
                CustomFrescoView customFrescoView2 = null;
                if (customFrescoView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceIv");
                    customFrescoView = null;
                }
                customFrescoView.setVisibility(8);
                CustomFrescoView customFrescoView3 = actBottomFloatView.f47012c;
                if (customFrescoView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceShrinkedIv");
                } else {
                    customFrescoView2 = customFrescoView3;
                }
                customFrescoView2.setVisibility(0);
            }
            long L = DeviceUtil.f48146a.L();
            if (L - actBottomFloatView.f47016g > 500) {
                actBottomFloatView.f47016g = L;
                actBottomFloatView.Y();
            }
        } catch (Exception unused) {
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X(ActBottomFloatView actBottomFloatView, ActResource actResource) {
        Intrinsics.checkNotNullParameter(actResource, "actResource");
        actBottomFloatView.s("shrinkImmediately -> " + actResource + ' ');
        CustomFrescoView customFrescoView = actBottomFloatView.f47011b;
        CustomFrescoView customFrescoView2 = null;
        if (customFrescoView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceIv");
            customFrescoView = null;
        }
        customFrescoView.setVisibility(8);
        CustomFrescoView customFrescoView3 = actBottomFloatView.f47012c;
        if (customFrescoView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceShrinkedIv");
        } else {
            customFrescoView2 = customFrescoView3;
        }
        customFrescoView2.setVisibility(0);
        actBottomFloatView.J();
        return Unit.f60915a;
    }

    private final void Y() {
        J();
        this.f47013d = CoroutineUtil.g(CoroutineUtil.f48072a, 3000L, null, new Function0() { // from class: bj.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit Z;
                Z = ActBottomFloatView.Z(ActBottomFloatView.this);
                return Z;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z(ActBottomFloatView actBottomFloatView) {
        actBottomFloatView.K();
        actBottomFloatView.f47013d = null;
        return Unit.f60915a;
    }

    public final void J() {
        r rVar = this.f47013d;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f47013d = null;
    }

    public final void K() {
        S(new Function1() { // from class: bj.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L;
                L = ActBottomFloatView.L(ActBottomFloatView.this, (ActResource) obj);
                return L;
            }
        });
    }

    public final boolean P() {
        CustomFrescoView customFrescoView = this.f47011b;
        CustomFrescoView customFrescoView2 = null;
        if (customFrescoView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceIv");
            customFrescoView = null;
        }
        if (customFrescoView.getVisibility() != 0) {
            CustomFrescoView customFrescoView3 = this.f47012c;
            if (customFrescoView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mActBottomFloatResourceShrinkedIv");
            } else {
                customFrescoView2 = customFrescoView3;
            }
            if (customFrescoView2.getVisibility() != 0) {
                return false;
            }
        }
        return true;
    }

    public final void T() {
        J();
    }

    public final void U() {
        S(new Function1() { // from class: bj.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit V;
                V = ActBottomFloatView.V(ActBottomFloatView.this, (ActResource) obj);
                return V;
            }
        });
    }

    public final void W() {
        S(new Function1() { // from class: bj.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit X;
                X = ActBottomFloatView.X(ActBottomFloatView.this, (ActResource) obj);
                return X;
            }
        });
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_act_bottom_float;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public Lifecycle getLifecycle() {
        return this.f47017h;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ActBottomFloatView";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        r d10;
        super.onAttachedToWindow();
        try {
            this.f47017h.setCurrentState(Lifecycle.State.RESUMED);
            d10 = g.d(LifecycleOwnerKt.getLifecycleScope(this), null, null, new ActBottomFloatView$onAttachedToWindow$1(this, null), 3, null);
            this.f47015f = d10;
        } catch (Exception e10) {
            r("onAttachedToWindow exception -> " + e10.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            s("onDetachedFromWindow");
            this.f47017h.setCurrentState(Lifecycle.State.DESTROYED);
            r rVar = this.f47015f;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.f47015f = null;
        } catch (Exception e10) {
            r("onDetachedFromWindow exception -> " + e10.getMessage());
        }
        super.onDetachedFromWindow();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47011b = (CustomFrescoView) findViewById(R$id.act_bottom_float_resource_iv);
        this.f47012c = (CustomFrescoView) findViewById(R$id.act_bottom_float_resource_iv_shrink);
        setOnClickListener(new View.OnClickListener() { // from class: bj.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActBottomFloatView.N(ActBottomFloatView.this, context, view);
            }
        });
        CoroutineUtil.l(CoroutineUtil.f48072a, "showActInBottomFloat", false, new ActBottomFloatView$initView$2(this, null), 2, null);
    }
}
