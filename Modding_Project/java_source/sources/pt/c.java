package pt;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Select.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f64988a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<Object, i<?>, Object, Unit> f64989b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> f64990c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final n<Object, Object, Object, Object> f64991d;

    /* JADX WARN: Multi-variable type inference failed */
    public c(@NotNull Object obj, @NotNull n<Object, ? super i<?>, Object, Unit> nVar, @Nullable n<? super i<?>, Object, Object, ? extends n<? super Throwable, Object, ? super CoroutineContext, Unit>> nVar2) {
        n<Object, Object, Object, Object> nVar3;
        this.f64988a = obj;
        this.f64989b = nVar;
        this.f64990c = nVar2;
        nVar3 = k.f65000a;
        this.f64991d = nVar3;
    }

    @Override // pt.h
    @Nullable
    public n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> a() {
        return this.f64990c;
    }

    @Override // pt.h
    @NotNull
    public n<Object, Object, Object, Object> b() {
        return this.f64991d;
    }

    @Override // pt.h
    @NotNull
    public n<Object, i<?>, Object, Unit> c() {
        return this.f64989b;
    }

    @Override // pt.h
    @NotNull
    public Object d() {
        return this.f64988a;
    }

    public /* synthetic */ c(Object obj, n nVar, n nVar2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, nVar, (i10 & 4) != 0 ? null : nVar2);
    }
}
