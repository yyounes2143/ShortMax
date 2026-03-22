package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Await.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", l = {47}, m = "joinAll")
/* loaded from: classes8.dex */
public final class AwaitKt$joinAll$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61267h;

    /* renamed from: i  reason: collision with root package name */
    int f61268i;

    /* renamed from: j  reason: collision with root package name */
    int f61269j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f61270k;

    /* renamed from: l  reason: collision with root package name */
    int f61271l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$joinAll$1(rs.c<? super AwaitKt$joinAll$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61270k = obj;
        this.f61271l |= Integer.MIN_VALUE;
        return AwaitKt.d(null, this);
    }
}
