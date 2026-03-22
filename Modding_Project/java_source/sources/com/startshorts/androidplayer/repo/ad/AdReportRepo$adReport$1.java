package com.startshorts.androidplayer.repo.ad;

import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdReportRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ad.AdReportRepo$adReport$1", f = "AdReportRepo.kt", l = {16}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AdReportRepo$adReport$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43130h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43131i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43132j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43133k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43134l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f43135m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f43136n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f43137o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdReportRepo$adReport$1(String str, String str2, String str3, String str4, int i10, int i11, String str5, c<? super AdReportRepo$adReport$1> cVar) {
        super(2, cVar);
        this.f43131i = str;
        this.f43132j = str2;
        this.f43133k = str3;
        this.f43134l = str4;
        this.f43135m = i10;
        this.f43136n = i11;
        this.f43137o = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdReportRepo$adReport$1(this.f43131i, this.f43132j, this.f43133k, this.f43134l, this.f43135m, this.f43136n, this.f43137o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AdReportRepo$adReport$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AdReportRemoteDS d10;
        Object a10;
        Object f10 = a.f();
        int i10 = this.f43130h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            d10 = AdReportRepo.f43128a.d();
            String str = this.f43131i;
            String str2 = this.f43132j;
            String str3 = this.f43133k;
            String str4 = this.f43134l;
            int i11 = this.f43135m;
            int i12 = this.f43136n;
            String str5 = this.f43137o;
            this.f43130h = 1;
            a10 = d10.a(str, str2, str3, str4, i11, i12, str5, this);
            if (a10 == f10) {
                return f10;
            }
        }
        if (Result.j(a10)) {
            Logger.f41511a.h("AdReportRepo", "adReport succeed");
        }
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            Logger logger = Logger.f41511a;
            logger.e("AdReportRepo", "adReport failed -> " + g10.getMessage());
        }
        return Unit.f60915a;
    }
}
