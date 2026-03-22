package com.startshorts.androidplayer.repo.unlock;

import android.content.Context;
import com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult;
import gt.g0;
import kh.a;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo$querySingleUnlockEpisodeMethods$result$1", f = "UnlockRepo.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRepo$querySingleUnlockEpisodeMethods$result$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44709h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f44710i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f44711j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44712k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f44713l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f44714m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$querySingleUnlockEpisodeMethods$result$1(boolean z10, Context context, int i10, int i11, String str, c<? super UnlockRepo$querySingleUnlockEpisodeMethods$result$1> cVar) {
        super(2, cVar);
        this.f44710i = z10;
        this.f44711j = context;
        this.f44712k = i10;
        this.f44713l = i11;
        this.f44714m = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UnlockRepo$querySingleUnlockEpisodeMethods$result$1(this.f44710i, this.f44711j, this.f44712k, this.f44713l, this.f44714m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UnlockRepo$querySingleUnlockEpisodeMethods$result$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        UnlockRemoteDS f10;
        Object b10;
        a e10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44709h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                b10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            f10 = UnlockRepo.f44686a.f();
            boolean z10 = this.f44710i;
            Context context = this.f44711j;
            int i11 = this.f44712k;
            int i12 = this.f44713l;
            String str = this.f44714m;
            this.f44709h = 1;
            b10 = f10.b(z10, context, i11, i12, str, this);
            if (b10 == f11) {
                return f11;
            }
        }
        if (Result.j(b10)) {
            e10 = UnlockRepo.f44686a.e();
            e10.e((QuerySingleUnlockEpisodeMethodsResult) b10);
        }
        return Unit.f60915a;
    }
}
