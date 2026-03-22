package dn;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import cn.b0;
import cn.m0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;
/* compiled from: ReorderingSeiMessageQueue.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final b f50546a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<b0> f50547b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<a> f50548c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final PriorityQueue<a> f50549d = new PriorityQueue<>();

    /* renamed from: e  reason: collision with root package name */
    private int f50550e = -1;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private a f50551f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReorderingSeiMessageQueue.java */
    /* loaded from: classes8.dex */
    public static final class a implements Comparable<a> {

        /* renamed from: b  reason: collision with root package name */
        public long f50553b = -9223372036854775807L;

        /* renamed from: a  reason: collision with root package name */
        public final List<b0> f50552a = new ArrayList();

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            return Long.compare(this.f50553b, aVar.f50553b);
        }

        public void b(long j10, b0 b0Var) {
            boolean z10;
            if (j10 != -9223372036854775807L) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            cn.a.g(this.f50552a.isEmpty());
            this.f50553b = j10;
            this.f50552a.add(b0Var);
        }
    }

    /* compiled from: ReorderingSeiMessageQueue.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a(long j10, b0 b0Var);
    }

    public i(b bVar) {
        this.f50546a = bVar;
    }

    private b0 c(b0 b0Var) {
        b0 pop;
        if (this.f50547b.isEmpty()) {
            pop = new b0();
        } else {
            pop = this.f50547b.pop();
        }
        pop.S(b0Var.a());
        System.arraycopy(b0Var.e(), b0Var.f(), pop.e(), 0, pop.a());
        return pop;
    }

    private void e(int i10) {
        while (this.f50549d.size() > i10) {
            a aVar = (a) m0.i(this.f50549d.poll());
            for (int i11 = 0; i11 < aVar.f50552a.size(); i11++) {
                this.f50546a.a(aVar.f50553b, aVar.f50552a.get(i11));
                this.f50547b.push(aVar.f50552a.get(i11));
            }
            aVar.f50552a.clear();
            a aVar2 = this.f50551f;
            if (aVar2 != null && aVar2.f50553b == aVar.f50553b) {
                this.f50551f = null;
            }
            this.f50548c.push(aVar);
        }
    }

    public void a(long j10, b0 b0Var) {
        a pop;
        int i10 = this.f50550e;
        if (i10 != 0 && (i10 == -1 || this.f50549d.size() < this.f50550e || j10 >= ((a) m0.i(this.f50549d.peek())).f50553b)) {
            b0 c10 = c(b0Var);
            a aVar = this.f50551f;
            if (aVar != null && j10 == aVar.f50553b) {
                aVar.f50552a.add(c10);
                return;
            }
            if (this.f50548c.isEmpty()) {
                pop = new a();
            } else {
                pop = this.f50548c.pop();
            }
            pop.b(j10, c10);
            this.f50549d.add(pop);
            this.f50551f = pop;
            int i11 = this.f50550e;
            if (i11 != -1) {
                e(i11);
                return;
            }
            return;
        }
        this.f50546a.a(j10, b0Var);
    }

    public void b() {
        this.f50549d.clear();
    }

    public void d() {
        e(0);
    }

    public int f() {
        return this.f50550e;
    }

    public void g(int i10) {
        boolean z10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f50550e = i10;
        e(i10);
    }
}
