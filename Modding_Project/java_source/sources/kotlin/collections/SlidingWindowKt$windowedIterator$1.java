package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SlidingWindow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", l = {34, 40, 49, 55, 58}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class SlidingWindowKt$windowedIterator$1<T> extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i<? super List<? extends T>>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f60929h;

    /* renamed from: i  reason: collision with root package name */
    Object f60930i;

    /* renamed from: j  reason: collision with root package name */
    int f60931j;

    /* renamed from: k  reason: collision with root package name */
    int f60932k;

    /* renamed from: l  reason: collision with root package name */
    private /* synthetic */ Object f60933l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f60934m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f60935n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ Iterator<T> f60936o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ boolean f60937p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ boolean f60938q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SlidingWindowKt$windowedIterator$1(int i10, int i11, Iterator<? extends T> it, boolean z10, boolean z11, rs.c<? super SlidingWindowKt$windowedIterator$1> cVar) {
        super(2, cVar);
        this.f60934m = i10;
        this.f60935n = i11;
        this.f60936o = it;
        this.f60937p = z10;
        this.f60938q = z11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$1 = new SlidingWindowKt$windowedIterator$1(this.f60934m, this.f60935n, this.f60936o, this.f60937p, this.f60938q, cVar);
        slidingWindowKt$windowedIterator$1.f60933l = obj;
        return slidingWindowKt$windowedIterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, rs.c<? super Unit> cVar) {
        return invoke((kotlin.sequences.i) ((kotlin.sequences.i) obj), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x014e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00a2 -> B:16:0x0055). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0117 -> B:59:0x011a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0145 -> B:72:0x0148). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.SlidingWindowKt$windowedIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    public final Object invoke(kotlin.sequences.i<? super List<? extends T>> iVar, rs.c<? super Unit> cVar) {
        return ((SlidingWindowKt$windowedIterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
