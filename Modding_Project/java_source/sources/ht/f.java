package ht;

import android.os.Handler;
import android.os.Looper;
import gt.i;
import gt.l1;
import gt.m0;
import gt.q0;
import gt.s0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HandlerDispatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"})
/* loaded from: classes8.dex */
public final class f extends g implements m0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Handler f53259a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f53260b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f53261c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final f f53262d;

    private f(Handler handler, String str, boolean z10) {
        super(null);
        this.f53259a = handler;
        this.f53260b = str;
        this.f53261c = z10;
        this.f53262d = z10 ? this : new f(handler, str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(f fVar, Runnable runnable) {
        fVar.f53259a.removeCallbacks(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(i iVar, f fVar) {
        iVar.f(fVar, Unit.f60915a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(f fVar, Runnable runnable, Throwable th2) {
        fVar.f53259a.removeCallbacks(runnable);
        return Unit.f60915a;
    }

    private final void w(CoroutineContext coroutineContext, Runnable runnable) {
        t.c(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        q0.b().dispatch(coroutineContext, runnable);
    }

    @Override // gt.m0
    public void a(long j10, @NotNull final i<? super Unit> iVar) {
        final Runnable runnable = new Runnable() { // from class: ht.d
            @Override // java.lang.Runnable
            public final void run() {
                f.R(i.this, this);
            }
        };
        if (this.f53259a.postDelayed(runnable, kotlin.ranges.e.k(j10, 4611686018427387903L))) {
            iVar.u(new Function1() { // from class: ht.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit T;
                    T = f.T(f.this, runnable, (Throwable) obj);
                    return T;
                }
            });
        } else {
            w(iVar.getContext(), runnable);
        }
    }

    @Override // ht.g, gt.m0
    @NotNull
    public s0 c(long j10, @NotNull final Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        if (this.f53259a.postDelayed(runnable, kotlin.ranges.e.k(j10, 4611686018427387903L))) {
            return new s0() { // from class: ht.c
                @Override // gt.s0
                public final void dispose() {
                    f.P(f.this, runnable);
                }
            };
        }
        w(coroutineContext, runnable);
        return l1.f52546a;
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        if (!this.f53259a.post(runnable)) {
            w(coroutineContext, runnable);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.f53259a == this.f53259a && fVar.f53261c == this.f53261c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int identityHashCode = System.identityHashCode(this.f53259a);
        if (this.f53261c) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return identityHashCode ^ i10;
    }

    @Override // gt.c0
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        if (this.f53261c && Intrinsics.areEqual(Looper.myLooper(), this.f53259a.getLooper())) {
            return false;
        }
        return true;
    }

    @Override // gt.j1, gt.c0
    @NotNull
    public String toString() {
        String o10 = o();
        if (o10 == null) {
            String str = this.f53260b;
            if (str == null) {
                str = this.f53259a.toString();
            }
            if (this.f53261c) {
                return str + ".immediate";
            }
            return str;
        }
        return o10;
    }

    @Override // ht.g
    @NotNull
    /* renamed from: x */
    public f p() {
        return this.f53262d;
    }

    public /* synthetic */ f(Handler handler, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public f(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }
}
