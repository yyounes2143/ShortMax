package bf;

import android.app.Activity;
import android.content.Context;
import bf.e;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReviewManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: b */
    private static int f2617b;
    @NotNull

    /* renamed from: a */
    public static final e f2616a = new e();
    @NotNull

    /* renamed from: c */
    private static final a f2618c = new c();
    @NotNull

    /* renamed from: d */
    private static final a f2619d = new d();
    @NotNull

    /* renamed from: e */
    private static final a f2620e = new b();

    /* compiled from: ReviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static abstract class a {
        @NotNull

        /* renamed from: a */
        private final String f2621a;

        public a(@NotNull String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f2621a = scene;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ boolean d(a aVar, Activity activity, Function0 function0, Function0 function02, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    function0 = new Function0() { // from class: bf.c
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit e10;
                            e10 = e.a.e();
                            return e10;
                        }
                    };
                }
                if ((i10 & 4) != 0) {
                    function02 = new Function0() { // from class: bf.d
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit f10;
                            f10 = e.a.f();
                            return f10;
                        }
                    };
                }
                return aVar.c(activity, function0, function02);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: display");
        }

        public static final Unit e() {
            return Unit.f60915a;
        }

        public static final Unit f() {
            return Unit.f60915a;
        }

        public final boolean c(@NotNull Activity activity, @NotNull Function0<Unit> onShow, @NotNull Function0<Unit> onDismiss) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(onShow, "onShow");
            Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
            if (h()) {
                onShow.invoke();
                e.f2616a.l(activity, onDismiss);
                return true;
            }
            return false;
        }

        @NotNull
        public final String g() {
            return this.f2621a;
        }

        public abstract boolean h();

        public abstract void i();
    }

    /* compiled from: ReviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b extends a {
        b() {
            super("immersion");
        }

        @Override // bf.e.a
        public boolean h() {
            if ((e.f2617b / 1000) / 60 >= 20 && e.f2616a.g()) {
                return true;
            }
            return false;
        }

        @Override // bf.e.a
        public void i() {
            e.f2617b += 200;
        }
    }

    /* compiled from: ReviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends a {
        c() {
            super("pay");
        }

        @Override // bf.e.a
        public boolean h() {
            if (ud.b.f68412a.s1(g()) >= 1 && e.f2616a.g()) {
                return true;
            }
            return false;
        }

        @Override // bf.e.a
        public void i() {
            ud.b bVar = ud.b.f68412a;
            int s12 = bVar.s1(g()) + 1;
            bVar.G4(g(), s12);
            Logger logger = Logger.f41511a;
            logger.h("ReviewManager", "triggerCondition " + g() + ' ' + s12);
        }
    }

    /* compiled from: ReviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d extends a {
        d() {
            super("task");
        }

        @Override // bf.e.a
        public boolean h() {
            if (ud.b.f68412a.s1(g()) >= 1 && e.f2616a.g()) {
                return true;
            }
            return false;
        }

        @Override // bf.e.a
        public void i() {
            ud.b bVar = ud.b.f68412a;
            int s12 = bVar.s1(g()) + 1;
            bVar.G4(g(), s12);
            Logger logger = Logger.f41511a;
            logger.h("ReviewManager", "triggerCondition " + g() + ' ' + s12);
        }
    }

    private e() {
    }

    public final boolean g() {
        String str = (String) ng.e.f62912a.i("androidReviewSwitch", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        if (ud.b.f68412a.A0() && Intrinsics.areEqual(str, "1")) {
            return true;
        }
        return false;
    }

    private final void k() {
        IntentUtil intentUtil = IntentUtil.f48164a;
        u uVar = u.f51776a;
        Context b10 = uVar.b();
        String packageName = uVar.b().getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        intentUtil.d(b10, packageName);
    }

    public final void l(Activity activity, final Function0<Unit> function0) {
        try {
            n.f2636a.i("ReviewManager", activity, new Function0() { // from class: bf.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit m10;
                    m10 = e.m();
                    return m10;
                }
            }, new Function0() { // from class: bf.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit n10;
                    n10 = e.n(Function0.this);
                    return n10;
                }
            });
        } catch (Exception e10) {
            function0.invoke();
            Logger logger = Logger.f41511a;
            logger.e("ReviewManager", "requestReviewFlow exception -> " + e10.getMessage());
            k();
        }
    }

    public static final Unit m() {
        f2616a.k();
        return Unit.f60915a;
    }

    public static final Unit n(Function0 function0) {
        ud.b.f68412a.M3(false);
        function0.invoke();
        return Unit.f60915a;
    }

    @NotNull
    public final a h() {
        return f2620e;
    }

    @NotNull
    public final a i() {
        return f2618c;
    }

    @NotNull
    public final a j() {
        return f2619d;
    }
}
