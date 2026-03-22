package ve;

import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DialogDelegate.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c<T> {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f68890i = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final T f68891a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f68892b;

    /* renamed from: c  reason: collision with root package name */
    private int f68893c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f68894d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f68895e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f68896f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Function1<Function0<Unit>, Boolean> f68897g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final Function0<Unit> f68898h;

    /* compiled from: DialogDelegate.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@Nullable T t10, @Nullable Function0<Unit> function0, @NotNull Function1<? super Function0<Unit>, Boolean> showDialogInit) {
        Intrinsics.checkNotNullParameter(showDialogInit, "showDialogInit");
        this.f68891a = t10;
        this.f68897g = showDialogInit;
        this.f68898h = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(final c cVar, final Function0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Logger logger = Logger.f41511a;
        logger.h("DialogDelegate", "showDialog start -> " + cVar);
        Boolean invoke = cVar.f68897g.invoke(new Function0() { // from class: ve.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit d10;
                d10 = c.d(c.this, it);
                return d10;
            }
        });
        if (invoke.booleanValue()) {
            cVar.f68892b = true;
        } else {
            logger.e("DialogDelegate", "showDialog failed -> " + cVar);
        }
        return invoke.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(c cVar, Function0 function0) {
        if (cVar.f68892b) {
            cVar.f68892b = false;
        }
        function0.invoke();
        Logger logger = Logger.f41511a;
        logger.h("DialogDelegate", "showDialog dismissed -> " + cVar);
        return Unit.f60915a;
    }

    public final boolean e() {
        return this.f68895e;
    }

    public final boolean f() {
        if (j() != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final c<T> g() {
        this.f68895e = true;
        return this;
    }

    @NotNull
    public final c<T> h() {
        this.f68894d = false;
        return this;
    }

    @Nullable
    public final T i() {
        return this.f68891a;
    }

    @Nullable
    public final Function0<Unit> j() {
        if (this.f68898h == null) {
            Logger logger = Logger.f41511a;
            logger.h("DialogDelegate", "dismissDialog " + this + " ignore -> dismissShowingDialog is null, ignore dismiss");
        }
        return this.f68898h;
    }

    public final int k() {
        return this.f68893c;
    }

    @NotNull
    public final Function1<Function0<Unit>, Boolean> l() {
        return new Function1() { // from class: ve.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean c10;
                c10 = c.c(c.this, (Function0) obj);
                return Boolean.valueOf(c10);
            }
        };
    }

    public final boolean m() {
        return this.f68894d;
    }

    public final boolean n() {
        return this.f68896f;
    }

    public final boolean o() {
        return this.f68892b;
    }

    public final void p(boolean z10) {
        this.f68894d = z10;
    }

    public final void q(boolean z10) {
        this.f68896f = z10;
    }

    @NotNull
    public String toString() {
        return "(data=" + this.f68891a + ",isShowing=" + this.f68892b + ",coverOther=" + this.f68895e + ",includeInHistory=" + this.f68894d + ",priority=" + this.f68893c + ')';
    }

    public /* synthetic */ c(Object obj, Function0 function0, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : obj, (i10 & 2) != 0 ? null : function0, function1);
    }
}
