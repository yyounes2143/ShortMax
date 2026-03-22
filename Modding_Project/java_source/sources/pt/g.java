package pt;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Select.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g<P, Q> implements f<P, Q> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object f64996a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<Object, i<?>, Object, Unit> f64997b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final n<Object, Object, Object, Object> f64998c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final n<i<?>, Object, Object, n<Throwable, Object, CoroutineContext, Unit>> f64999d;

    /* JADX WARN: Multi-variable type inference failed */
    public g(@NotNull Object obj, @NotNull n<Object, ? super i<?>, Object, Unit> nVar, @NotNull n<Object, Object, Object, ? extends Object> nVar2, @Nullable n<? super i<?>, Object, Object, ? extends n<? super Throwable, Object, ? super CoroutineContext, Unit>> nVar3) {
        this.f64996a = obj;
        this.f64997b = nVar;
        this.f64998c = nVar2;
        this.f64999d = nVar3;
    }
}
