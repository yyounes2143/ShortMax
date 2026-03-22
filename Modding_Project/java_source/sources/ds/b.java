package ds;

import at.n;
import ds.g;
import io.ktor.util.pipeline.InvalidPhaseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Pipeline.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/Pipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n1549#2:504\n1620#2,3:505\n1855#2,2:508\n800#2,11:510\n288#2,2:521\n1855#2,2:523\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/Pipeline\n*L\n43#1:504\n43#1:505,3\n70#1:508,2\n173#1:510,11\n174#1:521,2\n214#1:523,2\n*E\n"})
/* loaded from: classes8.dex */
public class b<TSubject, TContext> {
    @NotNull
    private volatile /* synthetic */ Object _interceptors;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final yr.b f50574a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f50575b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Object> f50576c;

    /* renamed from: d  reason: collision with root package name */
    private int f50577d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f50578e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private f f50579f;

    public b(@NotNull f... phases) {
        Intrinsics.checkNotNullParameter(phases, "phases");
        this.f50574a = yr.d.a(true);
        this.f50576c = CollectionsKt.t(Arrays.copyOf(phases, phases.length));
        this._interceptors = null;
    }

    private final List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> b() {
        a aVar;
        int p10;
        a<TSubject, TContext> aVar2;
        int i10 = this.f50577d;
        if (i10 == 0) {
            m(CollectionsKt.n());
            return CollectionsKt.n();
        }
        List<Object> list = this.f50576c;
        int i11 = 0;
        if (i10 == 1 && (p10 = CollectionsKt.p(list)) >= 0) {
            int i12 = 0;
            while (true) {
                Object obj = list.get(i12);
                if (obj instanceof a) {
                    aVar2 = (a) obj;
                } else {
                    aVar2 = null;
                }
                if (aVar2 != null && !aVar2.h()) {
                    List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> i13 = aVar2.i();
                    p(aVar2);
                    return i13;
                } else if (i12 == p10) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        int p11 = CollectionsKt.p(list);
        if (p11 >= 0) {
            while (true) {
                Object obj2 = list.get(i11);
                if (obj2 instanceof a) {
                    aVar = (a) obj2;
                } else {
                    aVar = null;
                }
                if (aVar != null) {
                    aVar.b(arrayList);
                }
                if (i11 == p11) {
                    break;
                }
                i11++;
            }
        }
        m(arrayList);
        return arrayList;
    }

    private final c<TSubject, TContext> c(TContext tcontext, TSubject tsubject, CoroutineContext coroutineContext) {
        return d.a(tcontext, q(), tsubject, coroutineContext, g());
    }

    private final a<TSubject, TContext> e(f fVar) {
        List<Object> list = this.f50576c;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj == fVar) {
                a<TSubject, TContext> aVar = new a<>(fVar, g.c.f50585a);
                list.set(i10, aVar);
                return aVar;
            }
            if (obj instanceof a) {
                a<TSubject, TContext> aVar2 = (a) obj;
                if (aVar2.e() == fVar) {
                    return aVar2;
                }
            }
        }
        return null;
    }

    private final int f(f fVar) {
        List<Object> list = this.f50576c;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj == fVar || ((obj instanceof a) && ((a) obj).e() == fVar)) {
                return i10;
            }
        }
        return -1;
    }

    private final List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> h() {
        return (List) this._interceptors;
    }

    private final boolean i(f fVar) {
        List<Object> list = this.f50576c;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj != fVar) {
                if ((obj instanceof a) && ((a) obj).e() == fVar) {
                    return true;
                }
            } else {
                return true;
            }
        }
        return false;
    }

    private final void m(List<? extends n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object>> list) {
        o(list);
        this.f50578e = false;
        this.f50579f = null;
    }

    private final void n() {
        o(null);
        this.f50578e = false;
        this.f50579f = null;
    }

    private final void o(List<? extends n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object>> list) {
        this._interceptors = list;
    }

    private final void p(a<TSubject, TContext> aVar) {
        o(aVar.i());
        this.f50578e = false;
        this.f50579f = aVar.e();
    }

    private final List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> q() {
        if (h() == null) {
            b();
        }
        this.f50578e = true;
        List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> h10 = h();
        Intrinsics.checkNotNull(h10);
        return h10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean r(f fVar, n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> h10 = h();
        if (this.f50576c.isEmpty() || h10 == null || this.f50578e || !TypeIntrinsics.isMutableList(h10)) {
            return false;
        }
        if (Intrinsics.areEqual(this.f50579f, fVar)) {
            h10.add(nVar);
            return true;
        } else if (!Intrinsics.areEqual(fVar, CollectionsKt.C0(this.f50576c)) && f(fVar) != CollectionsKt.p(this.f50576c)) {
            return false;
        } else {
            a<TSubject, TContext> e10 = e(fVar);
            Intrinsics.checkNotNull(e10);
            e10.a(nVar);
            h10.add(nVar);
            return true;
        }
    }

    @Nullable
    public final Object d(@NotNull TContext tcontext, @NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar) {
        return c(tcontext, tsubject, cVar.getContext()).a(tsubject, cVar);
    }

    public boolean g() {
        return this.f50575b;
    }

    public final void j(@NotNull f reference, @NotNull f phase) {
        a aVar;
        g f10;
        f a10;
        Intrinsics.checkNotNullParameter(reference, "reference");
        Intrinsics.checkNotNullParameter(phase, "phase");
        if (i(phase)) {
            return;
        }
        int f11 = f(reference);
        if (f11 != -1) {
            int i10 = f11 + 1;
            int p10 = CollectionsKt.p(this.f50576c);
            if (i10 <= p10) {
                while (true) {
                    Object obj = this.f50576c.get(i10);
                    g.a aVar2 = null;
                    if (obj instanceof a) {
                        aVar = (a) obj;
                    } else {
                        aVar = null;
                    }
                    if (aVar != null && (f10 = aVar.f()) != null) {
                        if (f10 instanceof g.a) {
                            aVar2 = (g.a) f10;
                        }
                        if (aVar2 != null && (a10 = aVar2.a()) != null && Intrinsics.areEqual(a10, reference)) {
                            f11 = i10;
                        }
                        if (i10 == p10) {
                            break;
                        }
                        i10++;
                    } else {
                        break;
                    }
                }
            }
            this.f50576c.add(f11 + 1, new a(phase, new g.a(reference)));
            return;
        }
        throw new InvalidPhaseException("Phase " + reference + " was not registered for this pipeline");
    }

    public final void k(@NotNull f reference, @NotNull f phase) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Intrinsics.checkNotNullParameter(phase, "phase");
        if (i(phase)) {
            return;
        }
        int f10 = f(reference);
        if (f10 != -1) {
            this.f50576c.add(f10, new a(phase, new g.b(reference)));
            return;
        }
        throw new InvalidPhaseException("Phase " + reference + " was not registered for this pipeline");
    }

    public final void l(@NotNull f phase, @NotNull n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(block, "block");
        a<TSubject, TContext> e10 = e(phase);
        if (e10 != null) {
            n nVar = (n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(block, 3);
            if (r(phase, block)) {
                this.f50577d++;
                return;
            }
            e10.a(block);
            this.f50577d++;
            n();
            a();
            return;
        }
        throw new InvalidPhaseException("Phase " + phase + " was not registered for this pipeline");
    }

    public void a() {
    }
}
