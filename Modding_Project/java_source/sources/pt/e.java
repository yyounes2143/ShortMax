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
public final class e<Q> implements d<Q> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f64992a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<Object, i<?>, Object, Unit> f64993b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final n<Object, Object, Object, Object> f64994c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> f64995d;

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull Object obj, @NotNull n<Object, ? super i<?>, Object, Unit> nVar, @NotNull n<Object, Object, Object, ? extends Object> nVar2, @Nullable n<? super i<?>, Object, Object, ? extends n<? super Throwable, Object, ? super CoroutineContext, Unit>> nVar3) {
        this.f64992a = obj;
        this.f64993b = nVar;
        this.f64994c = nVar2;
        this.f64995d = nVar3;
    }

    @Override // pt.h
    @Nullable
    public n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> a() {
        return this.f64995d;
    }

    @Override // pt.h
    @NotNull
    public n<Object, Object, Object, Object> b() {
        return this.f64994c;
    }

    @Override // pt.h
    @NotNull
    public n<Object, i<?>, Object, Unit> c() {
        return this.f64993b;
    }

    @Override // pt.h
    @NotNull
    public Object d() {
        return this.f64992a;
    }

    public /* synthetic */ e(Object obj, n nVar, n nVar2, n nVar3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, nVar, nVar2, (i10 & 8) != 0 ? null : nVar3);
    }
}
