package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GraphRequestBatch.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGraphRequestBatch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphRequestBatch.kt\ncom/facebook/GraphRequestBatch\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"})
/* loaded from: classes3.dex */
public final class a0 extends AbstractList<GraphRequest> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f14883g = new b(null);
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicInteger f14884h = new AtomicInteger();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Handler f14885a;

    /* renamed from: b  reason: collision with root package name */
    private int f14886b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f14887c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private List<GraphRequest> f14888d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private List<a> f14889e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f14890f;

    /* compiled from: GraphRequestBatch.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a(@NotNull a0 a0Var);
    }

    /* compiled from: GraphRequestBatch.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: GraphRequestBatch.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface c extends a {
        void b(@NotNull a0 a0Var, long j10, long j11);
    }

    public a0(@NotNull Collection<GraphRequest> requests) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        this.f14887c = String.valueOf(Integer.valueOf(f14884h.incrementAndGet()));
        this.f14889e = new ArrayList();
        this.f14888d = new ArrayList(requests);
    }

    private final List<b0> g() {
        return GraphRequest.f14841n.i(this);
    }

    private final z i() {
        return GraphRequest.f14841n.l(this);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public void add(int i10, @NotNull GraphRequest element) {
        Intrinsics.checkNotNullParameter(element, "element");
        this.f14888d.add(i10, element);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: c */
    public boolean add(@NotNull GraphRequest element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f14888d.add(element);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f14888d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        boolean z10;
        if (obj == null) {
            z10 = true;
        } else {
            z10 = obj instanceof GraphRequest;
        }
        if (!z10) {
            return false;
        }
        return e((GraphRequest) obj);
    }

    public final void d(@NotNull a callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!this.f14889e.contains(callback)) {
            this.f14889e.add(callback);
        }
    }

    public /* bridge */ boolean e(GraphRequest graphRequest) {
        return super.contains(graphRequest);
    }

    @NotNull
    public final List<b0> f() {
        return g();
    }

    @NotNull
    public final z h() {
        return i();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        boolean z10;
        if (obj == null) {
            z10 = true;
        } else {
            z10 = obj instanceof GraphRequest;
        }
        if (!z10) {
            return -1;
        }
        return s((GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    /* renamed from: j */
    public GraphRequest get(int i10) {
        return this.f14888d.get(i10);
    }

    @Nullable
    public final String l() {
        return this.f14890f;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        boolean z10;
        if (obj == null) {
            z10 = true;
        } else {
            z10 = obj instanceof GraphRequest;
        }
        if (!z10) {
            return -1;
        }
        return t((GraphRequest) obj);
    }

    @Nullable
    public final Handler m() {
        return this.f14885a;
    }

    @NotNull
    public final List<a> n() {
        return this.f14889e;
    }

    @NotNull
    public final String o() {
        return this.f14887c;
    }

    @NotNull
    public final List<GraphRequest> p() {
        return this.f14888d;
    }

    public int q() {
        return this.f14888d.size();
    }

    public final int r() {
        return this.f14886b;
    }

    public /* bridge */ int s(GraphRequest graphRequest) {
        return super.indexOf(graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return q();
    }

    public /* bridge */ int t(GraphRequest graphRequest) {
        return super.lastIndexOf(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: u */
    public final /* bridge */ GraphRequest remove(int i10) {
        return w(i10);
    }

    public /* bridge */ boolean v(GraphRequest graphRequest) {
        return super.remove(graphRequest);
    }

    @NotNull
    public GraphRequest w(int i10) {
        return this.f14888d.remove(i10);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    /* renamed from: x */
    public GraphRequest set(int i10, @NotNull GraphRequest element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f14888d.set(i10, element);
    }

    public final void y(@Nullable Handler handler) {
        this.f14885a = handler;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj == null ? true : obj instanceof GraphRequest) {
            return v((GraphRequest) obj);
        }
        return false;
    }

    public a0(@NotNull GraphRequest... requests) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        this.f14887c = String.valueOf(Integer.valueOf(f14884h.incrementAndGet()));
        this.f14889e = new ArrayList();
        this.f14888d = new ArrayList(kotlin.collections.n.g(requests));
    }
}
