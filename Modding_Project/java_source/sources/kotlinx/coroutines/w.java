package kotlinx.coroutines;

import gt.g1;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/ResumeAwaitOnCompletion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1583:1\n1#2:1584\n*E\n"})
/* loaded from: classes8.dex */
public final class w<T> extends g1 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final e<T> f61917e;

    /* JADX WARN: Multi-variable type inference failed */
    public w(@NotNull e<? super T> eVar) {
        this.f61917e = eVar;
    }

    @Override // gt.g1
    public boolean u() {
        return false;
    }

    @Override // gt.g1
    public void v(@Nullable Throwable th2) {
        Object e02 = t().e0();
        if (e02 instanceof gt.t) {
            e<T> eVar = this.f61917e;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(kotlin.f.a(((gt.t) e02).f52556a)));
            return;
        }
        e<T> eVar2 = this.f61917e;
        Result.a aVar2 = Result.f60901b;
        eVar2.resumeWith(Result.d(u.h(e02)));
    }
}
