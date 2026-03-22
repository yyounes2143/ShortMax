package kotlinx.coroutines.flow;

import gt.s0;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import mt.a0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SharedFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,746:1\n29#2:747\n29#2:750\n29#2:769\n29#2:773\n29#2:782\n29#2:793\n29#2:804\n16#3:748\n16#3:751\n16#3:770\n16#3:774\n16#3:783\n16#3:794\n16#3:805\n375#4:749\n1#5:752\n91#6,2:753\n93#6,2:756\n95#6:759\n91#6,2:775\n93#6,2:778\n95#6:781\n91#6,2:797\n93#6,2:800\n95#6:803\n13402#7:755\n13403#7:758\n13402#7:777\n13403#7:780\n13402#7:799\n13403#7:802\n426#8,9:760\n435#8,2:771\n426#8,9:784\n435#8,2:795\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n366#1:747\n406#1:750\n500#1:769\n521#1:773\n641#1:782\n676#1:793\n704#1:804\n366#1:748\n406#1:751\n500#1:770\n521#1:774\n641#1:783\n676#1:794\n704#1:805\n388#1:749\n468#1:753,2\n468#1:756,2\n468#1:759\n544#1:775,2\n544#1:778,2\n544#1:781\n691#1:797,2\n691#1:800,2\n691#1:803\n468#1:755\n468#1:758\n544#1:777\n544#1:780\n691#1:799\n691#1:802\n498#1:760,9\n498#1:771,2\n675#1:784,9\n675#1:795,2\n*E\n"})
/* loaded from: classes8.dex */
public class SharedFlowImpl<T> extends lt.a<kt.h> implements kt.d<T>, kt.a<T>, lt.g<T> {

    /* renamed from: e  reason: collision with root package name */
    private final int f61636e;

    /* renamed from: f  reason: collision with root package name */
    private final int f61637f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final BufferOverflow f61638g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Object[] f61639h;

    /* renamed from: i  reason: collision with root package name */
    private long f61640i;

    /* renamed from: j  reason: collision with root package name */
    private long f61641j;

    /* renamed from: k  reason: collision with root package name */
    private int f61642k;

    /* renamed from: l  reason: collision with root package name */
    private int f61643l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SharedFlow.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements s0 {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final SharedFlowImpl<?> f61644a;

        /* renamed from: b  reason: collision with root package name */
        public long f61645b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Object f61646c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final rs.c<Unit> f61647d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull SharedFlowImpl<?> sharedFlowImpl, long j10, @Nullable Object obj, @NotNull rs.c<? super Unit> cVar) {
            this.f61644a = sharedFlowImpl;
            this.f61645b = j10;
            this.f61646c = obj;
            this.f61647d = cVar;
        }

        @Override // gt.s0
        public void dispose() {
            this.f61644a.y(this);
        }
    }

    /* compiled from: SharedFlow.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedFlowImpl(int i10, int i11, @NotNull BufferOverflow bufferOverflow) {
        this.f61636e = i10;
        this.f61637f = i11;
        this.f61638g = bufferOverflow;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|(3:(6:(1:(1:11)(2:41|42))(1:43)|12|13|14|15|(3:16|(3:28|29|(2:31|32)(1:33))(4:18|(1:20)|21|(2:23|24)(1:26))|27))(4:44|45|46|47)|37|38)(5:53|54|55|(2:57|(1:59))|61)|48|49|15|(3:16|(0)(0)|27)))|64|6|(0)(0)|48|49|15|(3:16|(0)(0)|27)) */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c2, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c3, code lost:
        r5 = r8;
        r8 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ <T> java.lang.Object A(kotlinx.coroutines.flow.SharedFlowImpl<T> r8, kt.c<? super T> r9, rs.c<?> r10) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.A(kotlinx.coroutines.flow.SharedFlowImpl, kt.c, rs.c):java.lang.Object");
    }

    private final void B(long j10) {
        lt.c[] e10;
        if (lt.a.c(this) != 0 && (e10 = lt.a.e(this)) != null) {
            for (lt.c cVar : e10) {
                if (cVar != null) {
                    kt.h hVar = (kt.h) cVar;
                    long j11 = hVar.f62039a;
                    if (j11 >= 0 && j11 < j10) {
                        hVar.f62039a = j10;
                    }
                }
            }
        }
        this.f61641j = j10;
    }

    private final void E() {
        Object[] objArr = this.f61639h;
        Intrinsics.checkNotNull(objArr);
        kt.g.g(objArr, K(), null);
        this.f61642k--;
        long K = K() + 1;
        if (this.f61640i < K) {
            this.f61640i = K;
        }
        if (this.f61641j < K) {
            B(K);
        }
    }

    static /* synthetic */ <T> Object F(SharedFlowImpl<T> sharedFlowImpl, T t10, rs.c<? super Unit> cVar) {
        if (sharedFlowImpl.g(t10)) {
            return Unit.f60915a;
        }
        Object G = sharedFlowImpl.G(t10, cVar);
        if (G == kotlin.coroutines.intrinsics.a.f()) {
            return G;
        }
        return Unit.f60915a;
    }

    private final Object G(T t10, rs.c<? super Unit> cVar) {
        rs.c<Unit>[] cVarArr;
        a aVar;
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        rs.c<Unit>[] cVarArr2 = lt.b.f62305a;
        synchronized (this) {
            try {
                if (R(t10)) {
                    Result.a aVar2 = Result.f60901b;
                    eVar.resumeWith(Result.d(Unit.f60915a));
                    cVarArr = I(cVarArr2);
                    aVar = null;
                } else {
                    a aVar3 = new a(this, P() + K(), t10, eVar);
                    H(aVar3);
                    this.f61643l++;
                    if (this.f61637f == 0) {
                        cVarArr2 = I(cVarArr2);
                    }
                    cVarArr = cVarArr2;
                    aVar = aVar3;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVar != null) {
            gt.l.a(eVar, aVar);
        }
        for (rs.c<Unit> cVar2 : cVarArr) {
            if (cVar2 != null) {
                Result.a aVar4 = Result.f60901b;
                cVar2.resumeWith(Result.d(Unit.f60915a));
            }
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(Object obj) {
        int P = P();
        Object[] objArr = this.f61639h;
        if (objArr == null) {
            objArr = Q(null, 0, 2);
        } else if (P >= objArr.length) {
            objArr = Q(objArr, P, objArr.length * 2);
        }
        kt.g.g(objArr, K() + P, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object[], java.lang.Object] */
    public final rs.c<Unit>[] I(rs.c<Unit>[] cVarArr) {
        lt.c[] e10;
        kt.h hVar;
        rs.c<? super Unit> cVar;
        int length = cVarArr.length;
        if (lt.a.c(this) != 0 && (e10 = lt.a.e(this)) != null) {
            int length2 = e10.length;
            int i10 = 0;
            cVarArr = cVarArr;
            while (i10 < length2) {
                lt.c cVar2 = e10[i10];
                if (cVar2 != null && (cVar = (hVar = (kt.h) cVar2).f62040b) != null && T(hVar) >= 0) {
                    int length3 = cVarArr.length;
                    cVarArr = cVarArr;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(cVarArr, Math.max(2, cVarArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        cVarArr = copyOf;
                    }
                    cVarArr[length] = cVar;
                    hVar.f62040b = null;
                    length++;
                }
                i10++;
                cVarArr = cVarArr;
            }
        }
        return cVarArr;
    }

    private final long J() {
        return K() + this.f61642k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long K() {
        return Math.min(this.f61641j, this.f61640i);
    }

    private final Object M(long j10) {
        Object f10;
        Object[] objArr = this.f61639h;
        Intrinsics.checkNotNull(objArr);
        f10 = kt.g.f(objArr, j10);
        if (f10 instanceof a) {
            return ((a) f10).f61646c;
        }
        return f10;
    }

    private final long N() {
        return K() + this.f61642k + this.f61643l;
    }

    private final int O() {
        return (int) ((K() + this.f61642k) - this.f61640i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int P() {
        return this.f61642k + this.f61643l;
    }

    private final Object[] Q(Object[] objArr, int i10, int i11) {
        Object f10;
        if (i11 > 0) {
            Object[] objArr2 = new Object[i11];
            this.f61639h = objArr2;
            if (objArr == null) {
                return objArr2;
            }
            long K = K();
            for (int i12 = 0; i12 < i10; i12++) {
                long j10 = i12 + K;
                f10 = kt.g.f(objArr, j10);
                kt.g.g(objArr2, j10, f10);
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean R(T t10) {
        if (l() == 0) {
            return S(t10);
        }
        if (this.f61642k >= this.f61637f && this.f61641j <= this.f61640i) {
            int i10 = b.$EnumSwitchMapping$0[this.f61638g.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return true;
                }
                if (i10 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                return false;
            }
        }
        H(t10);
        int i11 = this.f61642k + 1;
        this.f61642k = i11;
        if (i11 > this.f61637f) {
            E();
        }
        if (O() > this.f61636e) {
            V(this.f61640i + 1, this.f61641j, J(), N());
        }
        return true;
    }

    private final boolean S(T t10) {
        if (this.f61636e == 0) {
            return true;
        }
        H(t10);
        int i10 = this.f61642k + 1;
        this.f61642k = i10;
        if (i10 > this.f61636e) {
            E();
        }
        this.f61641j = K() + this.f61642k;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long T(kt.h hVar) {
        long j10 = hVar.f62039a;
        if (j10 < J()) {
            return j10;
        }
        if (this.f61637f > 0 || j10 > K() || this.f61643l == 0) {
            return -1L;
        }
        return j10;
    }

    private final Object U(kt.h hVar) {
        Object obj;
        rs.c<Unit>[] cVarArr = lt.b.f62305a;
        synchronized (this) {
            try {
                long T = T(hVar);
                if (T < 0) {
                    obj = kt.g.f62038a;
                } else {
                    long j10 = hVar.f62039a;
                    Object M = M(T);
                    hVar.f62039a = T + 1;
                    cVarArr = W(j10);
                    obj = M;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (rs.c<Unit> cVar : cVarArr) {
            if (cVar != null) {
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(Unit.f60915a));
            }
        }
        return obj;
    }

    private final void V(long j10, long j11, long j12, long j13) {
        long min = Math.min(j11, j10);
        for (long K = K(); K < min; K++) {
            Object[] objArr = this.f61639h;
            Intrinsics.checkNotNull(objArr);
            kt.g.g(objArr, K, null);
        }
        this.f61640i = j10;
        this.f61641j = j11;
        this.f61642k = (int) (j12 - min);
        this.f61643l = (int) (j13 - j12);
    }

    private final Object x(kt.h hVar, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        synchronized (this) {
            try {
                if (T(hVar) < 0) {
                    hVar.f62040b = eVar;
                } else {
                    Result.a aVar = Result.f60901b;
                    eVar.resumeWith(Result.d(Unit.f60915a));
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(a aVar) {
        Object f10;
        synchronized (this) {
            if (aVar.f61645b < K()) {
                return;
            }
            Object[] objArr = this.f61639h;
            Intrinsics.checkNotNull(objArr);
            f10 = kt.g.f(objArr, aVar.f61645b);
            if (f10 == aVar) {
                kt.g.g(objArr, aVar.f61645b, kt.g.f62038a);
                z();
                Unit unit = Unit.f60915a;
            }
        }
    }

    private final void z() {
        Object f10;
        if (this.f61637f == 0 && this.f61643l <= 1) {
            return;
        }
        Object[] objArr = this.f61639h;
        Intrinsics.checkNotNull(objArr);
        while (this.f61643l > 0) {
            f10 = kt.g.f(objArr, (K() + P()) - 1);
            if (f10 == kt.g.f62038a) {
                this.f61643l--;
                kt.g.g(objArr, K() + P(), null);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // lt.a
    @NotNull
    /* renamed from: C */
    public kt.h i() {
        return new kt.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // lt.a
    @NotNull
    /* renamed from: D */
    public kt.h[] j(int i10) {
        return new kt.h[i10];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T L() {
        Object f10;
        Object[] objArr = this.f61639h;
        Intrinsics.checkNotNull(objArr);
        f10 = kt.g.f(objArr, (this.f61640i + O()) - 1);
        return (T) f10;
    }

    @NotNull
    public final rs.c<Unit>[] W(long j10) {
        int i10;
        long j11;
        long j12;
        long j13;
        boolean z10;
        Object f10;
        Object f11;
        long j14;
        lt.c[] e10;
        if (j10 > this.f61641j) {
            return lt.b.f62305a;
        }
        long K = K();
        long j15 = this.f61642k + K;
        if (this.f61637f == 0 && this.f61643l > 0) {
            j15++;
        }
        if (lt.a.c(this) != 0 && (e10 = lt.a.e(this)) != null) {
            for (lt.c cVar : e10) {
                if (cVar != null) {
                    long j16 = ((kt.h) cVar).f62039a;
                    if (j16 >= 0 && j16 < j15) {
                        j15 = j16;
                    }
                }
            }
        }
        if (j15 <= this.f61641j) {
            return lt.b.f62305a;
        }
        long J = J();
        if (l() > 0) {
            i10 = Math.min(this.f61643l, this.f61637f - ((int) (J - j15)));
        } else {
            i10 = this.f61643l;
        }
        rs.c<Unit>[] cVarArr = lt.b.f62305a;
        long j17 = this.f61643l + J;
        if (i10 > 0) {
            cVarArr = new rs.c[i10];
            Object[] objArr = this.f61639h;
            Intrinsics.checkNotNull(objArr);
            long j18 = J;
            int i11 = 0;
            while (true) {
                if (J < j17) {
                    f11 = kt.g.f(objArr, J);
                    j11 = j15;
                    a0 a0Var = kt.g.f62038a;
                    if (f11 != a0Var) {
                        Intrinsics.checkNotNull(f11, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                        a aVar = (a) f11;
                        int i12 = i11 + 1;
                        j12 = j17;
                        cVarArr[i11] = aVar.f61647d;
                        kt.g.g(objArr, J, a0Var);
                        kt.g.g(objArr, j18, aVar.f61646c);
                        j14 = 1;
                        j18++;
                        if (i12 >= i10) {
                            break;
                        }
                        i11 = i12;
                    } else {
                        j12 = j17;
                        j14 = 1;
                    }
                    J += j14;
                    j15 = j11;
                    j17 = j12;
                } else {
                    j11 = j15;
                    j12 = j17;
                    break;
                }
            }
            J = j18;
        } else {
            j11 = j15;
            j12 = j17;
        }
        int i13 = (int) (J - K);
        if (l() == 0) {
            j13 = J;
        } else {
            j13 = j11;
        }
        long max = Math.max(this.f61640i, J - Math.min(this.f61636e, i13));
        if (this.f61637f == 0 && max < j12) {
            Object[] objArr2 = this.f61639h;
            Intrinsics.checkNotNull(objArr2);
            f10 = kt.g.f(objArr2, max);
            if (Intrinsics.areEqual(f10, kt.g.f62038a)) {
                J++;
                max++;
            }
        }
        V(max, j13, J, j12);
        z();
        if (cVarArr.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return I(cVarArr);
        }
        return cVarArr;
    }

    public final long X() {
        long j10 = this.f61640i;
        if (j10 < this.f61641j) {
            this.f61641j = j10;
        }
        return j10;
    }

    @Override // lt.g
    @NotNull
    public kt.b<T> a(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        return kt.g.e(this, coroutineContext, i10, bufferOverflow);
    }

    @Override // kt.f, kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<?> cVar2) {
        return A(this, cVar, cVar2);
    }

    @Override // kt.d
    public void d() {
        synchronized (this) {
            V(J(), this.f61641j, J(), N());
            Unit unit = Unit.f60915a;
        }
    }

    @Override // kt.d, kt.c
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        return F(this, t10, cVar);
    }

    @Override // kt.d
    public boolean g(T t10) {
        int i10;
        boolean z10;
        rs.c<Unit>[] cVarArr = lt.b.f62305a;
        synchronized (this) {
            if (R(t10)) {
                cVarArr = I(cVarArr);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        for (rs.c<Unit> cVar : cVarArr) {
            if (cVar != null) {
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(Unit.f60915a));
            }
        }
        return z10;
    }
}
