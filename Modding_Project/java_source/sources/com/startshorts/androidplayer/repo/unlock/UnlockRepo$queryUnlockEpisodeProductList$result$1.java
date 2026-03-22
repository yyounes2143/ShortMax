package com.startshorts.androidplayer.repo.unlock;

import android.content.Context;
import com.startshorts.androidplayer.bean.unlock.QueryUnlockEpisodeProductListResult;
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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryUnlockEpisodeProductList$result$1", f = "UnlockRepo.kt", l = {114}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRepo$queryUnlockEpisodeProductList$result$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44723h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f44724i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44725j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44726k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f44727l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$queryUnlockEpisodeProductList$result$1(Context context, int i10, int i11, String str, c<? super UnlockRepo$queryUnlockEpisodeProductList$result$1> cVar) {
        super(2, cVar);
        this.f44724i = context;
        this.f44725j = i10;
        this.f44726k = i11;
        this.f44727l = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UnlockRepo$queryUnlockEpisodeProductList$result$1(this.f44724i, this.f44725j, this.f44726k, this.f44727l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UnlockRepo$queryUnlockEpisodeProductList$result$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        UnlockRemoteDS f10;
        Object c10;
        a e10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44723h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                c10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            f10 = UnlockRepo.f44686a.f();
            Context context = this.f44724i;
            int i11 = this.f44725j;
            int i12 = this.f44726k;
            String str = this.f44727l;
            this.f44723h = 1;
            c10 = f10.c(context, i11, i12, str, this);
            if (c10 == f11) {
                return f11;
            }
        }
        if (Result.j(c10)) {
            e10 = UnlockRepo.f44686a.e();
            e10.f((QueryUnlockEpisodeProductListResult) c10);
        }
        return Unit.f60915a;
    }
}
