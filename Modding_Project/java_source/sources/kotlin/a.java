package kotlin;

import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeepRecursive.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Object f60918a;

    static {
        Result.a aVar = Result.f60901b;
        f60918a = Result.d(kotlin.coroutines.intrinsics.a.f());
    }

    public static final <T, R> R b(@NotNull ms.a<T, R> aVar, T t10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return (R) new b(aVar.a(), t10).b();
    }
}
