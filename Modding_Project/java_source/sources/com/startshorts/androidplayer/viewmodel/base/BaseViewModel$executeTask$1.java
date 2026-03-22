package com.startshorts.androidplayer.viewmodel.base;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.base.BaseViewModel$executeTask$1", f = "BaseViewModel.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BaseViewModel$executeTask$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    long f48314h;

    /* renamed from: i  reason: collision with root package name */
    int f48315i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f48316j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function2<g0, c<? super Unit>, Object> f48317k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ BaseViewModel f48318l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Function1<String, Unit> f48319m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ boolean f48320n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f48321o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BaseViewModel$executeTask$1(Function2<? super g0, ? super c<? super Unit>, ? extends Object> function2, BaseViewModel baseViewModel, Function1<? super String, Unit> function1, boolean z10, String str, c<? super BaseViewModel$executeTask$1> cVar) {
        super(2, cVar);
        this.f48317k = function2;
        this.f48318l = baseViewModel;
        this.f48319m = function1;
        this.f48320n = z10;
        this.f48321o = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        BaseViewModel$executeTask$1 baseViewModel$executeTask$1 = new BaseViewModel$executeTask$1(this.f48317k, this.f48318l, this.f48319m, this.f48320n, this.f48321o, cVar);
        baseViewModel$executeTask$1.f48316j = obj;
        return baseViewModel$executeTask$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BaseViewModel$executeTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0070  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f48315i
            r2 = 1
            java.lang.String r3 = "ms"
            java.lang.String r4 = " cost: "
            if (r1 == 0) goto L21
            if (r1 != r2) goto L19
            long r0 = r8.f48314h
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L15 java.lang.Exception -> L17
            goto L3a
        L15:
            r9 = move-exception
            goto L7b
        L17:
            r9 = move-exception
            goto L65
        L19:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L21:
            kotlin.f.b(r9)
            java.lang.Object r9 = r8.f48316j
            gt.g0 r9 = (gt.g0) r9
            long r5 = java.lang.System.currentTimeMillis()
            kotlin.jvm.functions.Function2<gt.g0, rs.c<? super kotlin.Unit>, java.lang.Object> r1 = r8.f48317k     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            r8.f48314h = r5     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            r8.f48315i = r2     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            java.lang.Object r9 = r1.invoke(r9, r8)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            if (r9 != r0) goto L39
            return r0
        L39:
            r0 = r5
        L3a:
            boolean r9 = r8.f48320n
            if (r9 != 0) goto L78
            com.startshorts.androidplayer.viewmodel.base.BaseViewModel r9 = r8.f48318l
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
        L45:
            java.lang.String r5 = r8.f48321o
            r2.append(r5)
            r2.append(r4)
            long r4 = java.lang.System.currentTimeMillis()
            long r4 = r4 - r0
            r2.append(r4)
            r2.append(r3)
            java.lang.String r0 = r2.toString()
            r9.v(r0)
            goto L78
        L60:
            r9 = move-exception
            r0 = r5
            goto L7b
        L63:
            r9 = move-exception
            r0 = r5
        L65:
            com.startshorts.androidplayer.viewmodel.base.BaseViewModel r2 = r8.f48318l     // Catch: java.lang.Throwable -> L15
            kotlin.jvm.functions.Function1<java.lang.String, kotlin.Unit> r5 = r8.f48319m     // Catch: java.lang.Throwable -> L15
            com.startshorts.androidplayer.viewmodel.base.BaseViewModel.c(r2, r9, r5)     // Catch: java.lang.Throwable -> L15
            boolean r9 = r8.f48320n
            if (r9 != 0) goto L78
            com.startshorts.androidplayer.viewmodel.base.BaseViewModel r9 = r8.f48318l
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            goto L45
        L78:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L7b:
            boolean r2 = r8.f48320n
            if (r2 != 0) goto La0
            com.startshorts.androidplayer.viewmodel.base.BaseViewModel r2 = r8.f48318l
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r8.f48321o
            r5.append(r6)
            r5.append(r4)
            long r6 = java.lang.System.currentTimeMillis()
            long r6 = r6 - r0
            r5.append(r6)
            r5.append(r3)
            java.lang.String r0 = r5.toString()
            r2.v(r0)
        La0:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.base.BaseViewModel$executeTask$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
