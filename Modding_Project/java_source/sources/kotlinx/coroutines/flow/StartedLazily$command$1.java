package kotlinx.coroutines.flow;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
/* compiled from: SharingStarted.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", l = {151}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class StartedLazily$command$1 extends SuspendLambda implements Function2<kt.c<? super SharingCommand>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61655h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61656i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kt.i<Integer> f61657j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharingStarted.kt */
    @Metadata
    /* renamed from: kotlinx.coroutines.flow.StartedLazily$command$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1<T> implements kt.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f61658a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kt.c<SharingCommand> f61659b;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Ref.BooleanRef booleanRef, kt.c<? super SharingCommand> cVar) {
            this.f61658a = booleanRef;
            this.f61659b = cVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(int r5, rs.c<? super kotlin.Unit> r6) {
            /*
                r4 = this;
                boolean r0 = r6 instanceof kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
                if (r0 == 0) goto L13
                r0 = r6
                kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = (kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1) r0
                int r1 = r0.f61662j
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f61662j = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1 r0 = new kotlinx.coroutines.flow.StartedLazily$command$1$1$emit$1
                r0.<init>(r4, r6)
            L18:
                java.lang.Object r6 = r0.f61660h
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f61662j
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.f.b(r6)
                goto L4b
            L29:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L31:
                kotlin.f.b(r6)
                if (r5 <= 0) goto L4e
                kotlin.jvm.internal.Ref$BooleanRef r5 = r4.f61658a
                boolean r6 = r5.element
                if (r6 != 0) goto L4e
                r5.element = r3
                kt.c<kotlinx.coroutines.flow.SharingCommand> r5 = r4.f61659b
                kotlinx.coroutines.flow.SharingCommand r6 = kotlinx.coroutines.flow.SharingCommand.START
                r0.f61662j = r3
                java.lang.Object r5 = r5.emit(r6, r0)
                if (r5 != r1) goto L4b
                return r1
            L4b:
                kotlin.Unit r5 = kotlin.Unit.f60915a
                return r5
            L4e:
                kotlin.Unit r5 = kotlin.Unit.f60915a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedLazily$command$1.AnonymousClass1.a(int, rs.c):java.lang.Object");
        }

        @Override // kt.c
        public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
            return a(((Number) obj).intValue(), cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedLazily$command$1(kt.i<Integer> iVar, rs.c<? super StartedLazily$command$1> cVar) {
        super(2, cVar);
        this.f61657j = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        StartedLazily$command$1 startedLazily$command$1 = new StartedLazily$command$1(this.f61657j, cVar);
        startedLazily$command$1.f61656i = obj;
        return startedLazily$command$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61655h;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            kt.i<Integer> iVar = this.f61657j;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(booleanRef, (kt.c) this.f61656i);
            this.f61655h = 1;
            if (iVar.collect(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kt.c<? super SharingCommand> cVar, rs.c<? super Unit> cVar2) {
        return ((StartedLazily$command$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
