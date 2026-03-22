package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CancellableContinuationImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CompletedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,701:1\n1#2:702\n*E\n"})
/* loaded from: classes8.dex */
public final class h<R> {

    /* renamed from: a  reason: collision with root package name */
    public final R f61812a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final d f61813b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final at.n<Throwable, R, CoroutineContext, Unit> f61814c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Object f61815d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Throwable f61816e;

    /* JADX WARN: Multi-variable type inference failed */
    public h(R r10, @Nullable d dVar, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar, @Nullable Object obj, @Nullable Throwable th2) {
        this.f61812a = r10;
        this.f61813b = dVar;
        this.f61814c = nVar;
        this.f61815d = obj;
        this.f61816e = th2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ h b(h hVar, Object obj, d dVar, at.n nVar, Object obj2, Throwable th2, int i10, Object obj3) {
        R r10 = obj;
        if ((i10 & 1) != 0) {
            r10 = hVar.f61812a;
        }
        if ((i10 & 2) != 0) {
            dVar = hVar.f61813b;
        }
        d dVar2 = dVar;
        at.n<Throwable, R, CoroutineContext, Unit> nVar2 = nVar;
        if ((i10 & 4) != 0) {
            nVar2 = hVar.f61814c;
        }
        at.n nVar3 = nVar2;
        if ((i10 & 8) != 0) {
            obj2 = hVar.f61815d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th2 = hVar.f61816e;
        }
        return hVar.a(r10, dVar2, nVar3, obj4, th2);
    }

    @NotNull
    public final h<R> a(R r10, @Nullable d dVar, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar, @Nullable Object obj, @Nullable Throwable th2) {
        return new h<>(r10, dVar, nVar, obj, th2);
    }

    public final boolean c() {
        if (this.f61816e != null) {
            return true;
        }
        return false;
    }

    public final void d(@NotNull e<?> eVar, @NotNull Throwable th2) {
        d dVar = this.f61813b;
        if (dVar != null) {
            eVar.m(dVar, th2);
        }
        at.n<Throwable, R, CoroutineContext, Unit> nVar = this.f61814c;
        if (nVar != null) {
            eVar.n(nVar, th2, this.f61812a);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (Intrinsics.areEqual(this.f61812a, hVar.f61812a) && Intrinsics.areEqual(this.f61813b, hVar.f61813b) && Intrinsics.areEqual(this.f61814c, hVar.f61814c) && Intrinsics.areEqual(this.f61815d, hVar.f61815d) && Intrinsics.areEqual(this.f61816e, hVar.f61816e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        R r10 = this.f61812a;
        int i10 = 0;
        if (r10 == null) {
            hashCode = 0;
        } else {
            hashCode = r10.hashCode();
        }
        int i11 = hashCode * 31;
        d dVar = this.f61813b;
        if (dVar == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = dVar.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        at.n<Throwable, R, CoroutineContext, Unit> nVar = this.f61814c;
        if (nVar == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = nVar.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Object obj = this.f61815d;
        if (obj == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = obj.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        Throwable th2 = this.f61816e;
        if (th2 != null) {
            i10 = th2.hashCode();
        }
        return i14 + i10;
    }

    @NotNull
    public String toString() {
        return "CompletedContinuation(result=" + this.f61812a + ", cancelHandler=" + this.f61813b + ", onCancellation=" + this.f61814c + ", idempotentResume=" + this.f61815d + ", cancelCause=" + this.f61816e + ')';
    }

    public /* synthetic */ h(Object obj, d dVar, at.n nVar, Object obj2, Throwable th2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i10 & 2) != 0 ? null : dVar, (i10 & 4) != 0 ? null : nVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th2);
    }
}
