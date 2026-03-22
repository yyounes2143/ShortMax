package lt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractSharedFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,130:1\n29#2:131\n29#2:133\n29#2:136\n16#3:132\n16#3:134\n16#3:137\n1#4:135\n13402#5,2:138\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n27#1:131\n42#1:133\n73#1:136\n27#1:132\n42#1:134\n73#1:137\n92#1:138,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class a<S extends c<?>> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private S[] f62301a;

    /* renamed from: b  reason: collision with root package name */
    private int f62302b;

    /* renamed from: c  reason: collision with root package name */
    private int f62303c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private n f62304d;

    public static final /* synthetic */ int c(a aVar) {
        return aVar.f62302b;
    }

    public static final /* synthetic */ c[] e(a aVar) {
        return aVar.f62301a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final S f() {
        S s10;
        n nVar;
        synchronized (this) {
            try {
                S[] sArr = this.f62301a;
                if (sArr == null) {
                    sArr = j(2);
                    this.f62301a = sArr;
                } else if (this.f62302b >= sArr.length) {
                    Object[] copyOf = Arrays.copyOf(sArr, sArr.length * 2);
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                    this.f62301a = (S[]) ((c[]) copyOf);
                    sArr = (S[]) ((c[]) copyOf);
                }
                int i10 = this.f62303c;
                do {
                    s10 = sArr[i10];
                    if (s10 == null) {
                        s10 = i();
                        sArr[i10] = s10;
                    }
                    i10++;
                    if (i10 >= sArr.length) {
                        i10 = 0;
                    }
                    Intrinsics.checkNotNull(s10, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!s10.a(this));
                this.f62303c = i10;
                this.f62302b++;
                nVar = this.f62304d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (nVar != null) {
            nVar.Z(1);
        }
        return s10;
    }

    @NotNull
    public final kt.i<Integer> h() {
        n nVar;
        synchronized (this) {
            nVar = this.f62304d;
            if (nVar == null) {
                nVar = new n(this.f62302b);
                this.f62304d = nVar;
            }
        }
        return nVar;
    }

    @NotNull
    protected abstract S i();

    @NotNull
    protected abstract S[] j(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k(@NotNull S s10) {
        n nVar;
        int i10;
        rs.c<Unit>[] b10;
        synchronized (this) {
            try {
                int i11 = this.f62302b - 1;
                this.f62302b = i11;
                nVar = this.f62304d;
                if (i11 == 0) {
                    this.f62303c = 0;
                }
                Intrinsics.checkNotNull(s10, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                b10 = s10.b(this);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (rs.c<Unit> cVar : b10) {
            if (cVar != null) {
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(Unit.f60915a));
            }
        }
        if (nVar != null) {
            nVar.Z(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int l() {
        return this.f62302b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final S[] m() {
        return this.f62301a;
    }
}
