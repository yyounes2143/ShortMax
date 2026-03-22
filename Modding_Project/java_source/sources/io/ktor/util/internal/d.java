package io.ktor.util.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LockFreeLinkedList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,809:1\n172#1,3:815\n172#1,3:818\n1#2:810\n155#3,2:811\n155#3,2:813\n155#3,2:821\n155#3,2:823\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListNode\n*L\n238#1:815,3\n261#1:818,3\n181#1:811,2\n193#1:813,2\n618#1:821,2\n636#1:823,2\n*E\n"})
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f59309a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_next");

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f59310b = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_prev");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59311c = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_removedRef");
    @NotNull
    volatile /* synthetic */ Object _next = this;
    @NotNull
    volatile /* synthetic */ Object _prev = this;
    @NotNull
    private volatile /* synthetic */ Object _removedRef = null;

    private final d b(d dVar, e eVar) {
        Object obj;
        while (true) {
            d dVar2 = null;
            while (true) {
                obj = dVar._next;
                if (obj == eVar) {
                    return dVar;
                }
                if (obj instanceof e) {
                    ((e) obj).a(dVar);
                } else if (obj instanceof f) {
                    if (dVar2 != null) {
                        break;
                    }
                    dVar = c.a(dVar._prev);
                } else {
                    Object obj2 = this._prev;
                    if (obj2 instanceof f) {
                        return null;
                    }
                    if (obj != this) {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }");
                        dVar2 = dVar;
                        dVar = (d) obj;
                    } else if (obj2 == dVar) {
                        return null;
                    } else {
                        if (androidx.concurrent.futures.a.a(f59310b, this, obj2, dVar) && !(dVar._prev instanceof f)) {
                            return null;
                        }
                    }
                }
            }
            dVar.h();
            androidx.concurrent.futures.a.a(f59309a, dVar2, dVar, ((f) obj).f59312a);
            dVar = dVar2;
        }
    }

    private final d c() {
        d dVar = this;
        while (!(dVar instanceof b)) {
            dVar = dVar.f();
            if (dVar == this) {
                throw new IllegalStateException("Cannot loop to this while looking for list head");
            }
        }
        return dVar;
    }

    private final void d(d dVar) {
        g();
        dVar.b(c.a(this._prev), null);
    }

    private final d h() {
        Object obj;
        d dVar;
        do {
            obj = this._prev;
            if (obj instanceof f) {
                return ((f) obj).f59312a;
            }
            if (obj == this) {
                dVar = c();
            } else {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }");
                dVar = (d) obj;
            }
        } while (!androidx.concurrent.futures.a.a(f59310b, this, obj, dVar.j()));
        return (d) obj;
    }

    private final f j() {
        f fVar = (f) this._removedRef;
        if (fVar == null) {
            f fVar2 = new f(this);
            f59311c.lazySet(this, fVar2);
            return fVar2;
        }
        return fVar;
    }

    @NotNull
    public final Object e() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof e)) {
                return obj;
            }
            ((e) obj).a(this);
        }
    }

    @NotNull
    public final d f() {
        return c.a(e());
    }

    public final void g() {
        Object e10;
        d h10 = h();
        Object obj = this._next;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.ktor.util.internal.Removed");
        d dVar = ((f) obj).f59312a;
        while (true) {
            d dVar2 = null;
            while (true) {
                Object e11 = dVar.e();
                if (e11 instanceof f) {
                    dVar.h();
                    dVar = ((f) e11).f59312a;
                } else {
                    e10 = h10.e();
                    if (e10 instanceof f) {
                        if (dVar2 != null) {
                            break;
                        }
                        h10 = c.a(h10._prev);
                    } else if (e10 != this) {
                        Intrinsics.checkNotNull(e10, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }");
                        d dVar3 = (d) e10;
                        if (dVar3 == dVar) {
                            return;
                        }
                        dVar2 = h10;
                        h10 = dVar3;
                    } else if (androidx.concurrent.futures.a.a(f59309a, h10, this, dVar)) {
                        return;
                    }
                }
            }
            h10.h();
            androidx.concurrent.futures.a.a(f59309a, dVar2, h10, ((f) e10).f59312a);
            h10 = dVar2;
        }
    }

    public boolean i() {
        Object e10;
        d dVar;
        do {
            e10 = e();
            if ((e10 instanceof f) || e10 == this) {
                return false;
            }
            Intrinsics.checkNotNull(e10, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }");
            dVar = (d) e10;
        } while (!androidx.concurrent.futures.a.a(f59309a, this, e10, dVar.j()));
        d(dVar);
        return true;
    }

    @NotNull
    public String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + '@' + hashCode();
    }
}
