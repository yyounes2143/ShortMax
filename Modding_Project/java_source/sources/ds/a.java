package ds;

import at.n;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PhaseContent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPhaseContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhaseContent.kt\nio/ktor/util/pipeline/PhaseContent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"})
/* loaded from: classes8.dex */
public final class a<TSubject, Call> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final C0709a f50568e = new C0709a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final List<Object> f50569f = new ArrayList();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final f f50570a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final g f50571b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private List<n<c<TSubject, Call>, TSubject, rs.c<? super Unit>, Object>> f50572c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f50573d;

    /* compiled from: PhaseContent.kt */
    @Metadata
    /* renamed from: ds.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0709a {
        public /* synthetic */ C0709a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0709a() {
        }
    }

    public a(@NotNull f phase, @NotNull g relation, @NotNull List<n<c<TSubject, Call>, TSubject, rs.c<? super Unit>, Object>> interceptors) {
        Intrinsics.checkNotNullParameter(phase, "phase");
        Intrinsics.checkNotNullParameter(relation, "relation");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        this.f50570a = phase;
        this.f50571b = relation;
        this.f50572c = interceptors;
        this.f50573d = true;
    }

    private final void d() {
        this.f50572c = c();
        this.f50573d = false;
    }

    public final void a(@NotNull n<? super c<TSubject, Call>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object> interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        if (this.f50573d) {
            d();
        }
        this.f50572c.add(interceptor);
    }

    public final void b(@NotNull List<n<c<TSubject, Call>, TSubject, rs.c<? super Unit>, Object>> destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        List<n<c<TSubject, Call>, TSubject, rs.c<? super Unit>, Object>> list = this.f50572c;
        if (destination instanceof ArrayList) {
            ((ArrayList) destination).ensureCapacity(destination.size() + list.size());
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            destination.add(list.get(i10));
        }
    }

    @NotNull
    public final List<n<c<TSubject, Call>, TSubject, rs.c<? super Unit>, Object>> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f50572c);
        return arrayList;
    }

    @NotNull
    public final f e() {
        return this.f50570a;
    }

    @NotNull
    public final g f() {
        return this.f50571b;
    }

    public final int g() {
        return this.f50572c.size();
    }

    public final boolean h() {
        return this.f50572c.isEmpty();
    }

    @NotNull
    public final List<n<c<TSubject, Call>, TSubject, rs.c<? super Unit>, Object>> i() {
        this.f50573d = true;
        return this.f50572c;
    }

    @NotNull
    public String toString() {
        return "Phase `" + this.f50570a.a() + "`, " + g() + " handlers";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(@org.jetbrains.annotations.NotNull ds.f r3, @org.jetbrains.annotations.NotNull ds.g r4) {
        /*
            r2 = this;
            java.lang.String r0 = "phase"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "relation"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.util.List<java.lang.Object> r0 = ds.a.f50569f
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.Function3<io.ktor.util.pipeline.PipelineContext<TSubject of io.ktor.util.pipeline.PhaseContent, Call of io.ktor.util.pipeline.PhaseContent>, TSubject of io.ktor.util.pipeline.PhaseContent, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>{ io.ktor.util.pipeline.PipelineKt.PipelineInterceptorFunction<TSubject of io.ktor.util.pipeline.PhaseContent, Call of io.ktor.util.pipeline.PhaseContent> }>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            java.util.List r1 = kotlin.jvm.internal.TypeIntrinsics.asMutableList(r0)
            r2.<init>(r3, r4, r1)
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L1f
            return
        L1f:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "The shared empty array list has been modified"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ds.a.<init>(ds.f, ds.g):void");
    }
}
