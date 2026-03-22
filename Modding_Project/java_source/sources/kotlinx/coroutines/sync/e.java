package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.a0;
import mt.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Semaphore.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,396:1\n370#1,2:397\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n383#1:397,2\n*E\n"})
/* loaded from: classes8.dex */
public final class e extends x<e> {

    /* renamed from: e  reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f61908e;

    public e(long j10, @Nullable e eVar, int i10) {
        super(j10, eVar, i10);
        int i11;
        i11 = d.f61907f;
        this.f61908e = new AtomicReferenceArray(i11);
    }

    @Override // mt.x
    public int r() {
        int i10;
        i10 = d.f61907f;
        return i10;
    }

    @Override // mt.x
    public void s(int i10, @Nullable Throwable th2, @NotNull CoroutineContext coroutineContext) {
        a0 a0Var;
        a0Var = d.f61906e;
        v().set(i10, a0Var);
        t();
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + this.f62709c + ", hashCode=" + hashCode() + ']';
    }

    public final /* synthetic */ AtomicReferenceArray v() {
        return this.f61908e;
    }
}
