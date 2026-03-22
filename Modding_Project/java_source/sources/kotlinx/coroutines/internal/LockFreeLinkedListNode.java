package kotlinx.coroutines.internal;

import gt.h0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeLinkedList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"})
/* loaded from: classes8.dex */
public class LockFreeLinkedListNode {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61819a = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61820b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f61821c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
        if (androidx.concurrent.futures.a.a(kotlinx.coroutines.internal.LockFreeLinkedListNode.f61819a, r3, r2, ((kotlinx.coroutines.internal.b) r4).f61823a) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.coroutines.internal.LockFreeLinkedListNode g() {
        /*
            r7 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = n()
            java.lang.Object r0 = r0.get(r7)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r0 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r0
            r1 = 0
            r2 = r0
        Lc:
            r3 = r1
        Ld:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = m()
            java.lang.Object r4 = r4.get(r2)
            if (r4 != r7) goto L26
            if (r0 != r2) goto L1a
            return r2
        L1a:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = n()
            boolean r0 = androidx.concurrent.futures.a.a(r1, r7, r0, r2)
            if (r0 != 0) goto L25
            goto L0
        L25:
            return r2
        L26:
            boolean r5 = r7.p()
            if (r5 == 0) goto L2d
            return r1
        L2d:
            boolean r5 = r4 instanceof kotlinx.coroutines.internal.b
            if (r5 == 0) goto L4f
            if (r3 == 0) goto L44
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = m()
            kotlinx.coroutines.internal.b r4 = (kotlinx.coroutines.internal.b) r4
            kotlinx.coroutines.internal.LockFreeLinkedListNode r4 = r4.f61823a
            boolean r2 = androidx.concurrent.futures.a.a(r5, r3, r2, r4)
            if (r2 != 0) goto L42
            goto L0
        L42:
            r2 = r3
            goto Lc
        L44:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = n()
            java.lang.Object r2 = r4.get(r2)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r2 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r2
            goto Ld
        L4f:
            java.lang.String r3 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4, r3)
            r3 = r4
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r6 = r3
            r3 = r2
            r2 = r6
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.g():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    private final LockFreeLinkedListNode h(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) f61820b.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    private final void i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f61820b;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (j() != lockFreeLinkedListNode) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f61820b, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (p()) {
            lockFreeLinkedListNode.g();
        }
    }

    private final b s() {
        b bVar = (b) f61821c.get(this);
        if (bVar == null) {
            b bVar2 = new b(this);
            f61821c.set(this, bVar2);
            return bVar2;
        }
        return bVar;
    }

    public final boolean c(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, int i10) {
        LockFreeLinkedListNode l10;
        do {
            l10 = l();
            if (l10 instanceof a) {
                if ((((a) l10).f61822d & i10) == 0 && l10.c(lockFreeLinkedListNode, i10)) {
                    return true;
                }
                return false;
            }
        } while (!l10.d(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean d(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f61820b.set(lockFreeLinkedListNode, this);
        f61819a.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!androidx.concurrent.futures.a.a(f61819a, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.i(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean e(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        f61820b.set(lockFreeLinkedListNode, this);
        f61819a.set(lockFreeLinkedListNode, this);
        while (j() == this) {
            if (androidx.concurrent.futures.a.a(f61819a, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.i(this);
                return true;
            }
        }
        return false;
    }

    public final void f(int i10) {
        c(new a(i10), i10);
    }

    @NotNull
    public final Object j() {
        return f61819a.get(this);
    }

    @NotNull
    public final LockFreeLinkedListNode k() {
        b bVar;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object j10 = j();
        if (j10 instanceof b) {
            bVar = (b) j10;
        } else {
            bVar = null;
        }
        if (bVar == null || (lockFreeLinkedListNode = bVar.f61823a) == null) {
            Intrinsics.checkNotNull(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            return (LockFreeLinkedListNode) j10;
        }
        return lockFreeLinkedListNode;
    }

    @NotNull
    public final LockFreeLinkedListNode l() {
        LockFreeLinkedListNode g10 = g();
        if (g10 == null) {
            return h((LockFreeLinkedListNode) f61820b.get(this));
        }
        return g10;
    }

    public boolean p() {
        return j() instanceof b;
    }

    public boolean q() {
        if (r() == null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final LockFreeLinkedListNode r() {
        Object j10;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            j10 = j();
            if (j10 instanceof b) {
                return ((b) j10).f61823a;
            }
            if (j10 == this) {
                return (LockFreeLinkedListNode) j10;
            }
            Intrinsics.checkNotNull(j10, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) j10;
        } while (!androidx.concurrent.futures.a.a(f61819a, this, j10, lockFreeLinkedListNode.s()));
        lockFreeLinkedListNode.g();
        return null;
    }

    @NotNull
    public String toString() {
        return new PropertyReference0Impl(this) { // from class: kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1
            @Override // kotlin.jvm.internal.PropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return h0.a(this.receiver);
            }
        } + '@' + h0.b(this);
    }
}
