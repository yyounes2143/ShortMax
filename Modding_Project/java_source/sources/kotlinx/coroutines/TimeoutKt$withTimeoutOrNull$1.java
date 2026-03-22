package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Timeout.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {102}, m = "withTimeoutOrNull")
/* loaded from: classes8.dex */
public final class TimeoutKt$withTimeoutOrNull$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    long f61306h;

    /* renamed from: i  reason: collision with root package name */
    Object f61307i;

    /* renamed from: j  reason: collision with root package name */
    Object f61308j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f61309k;

    /* renamed from: l  reason: collision with root package name */
    int f61310l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeoutKt$withTimeoutOrNull$1(rs.c<? super TimeoutKt$withTimeoutOrNull$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61309k = obj;
        this.f61310l |= Integer.MIN_VALUE;
        return TimeoutKt.e(0L, null, this);
    }
}
