package com.startshorts.androidplayer.repo.ad;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdReportRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ad.AdReportRemoteDS$adReport$2", f = "AdReportRemoteDS.kt", l = {12}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AdReportRemoteDS$adReport$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43120h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43121i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43122j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43123k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43124l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f43125m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f43126n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f43127o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdReportRemoteDS$adReport$2(String str, String str2, String str3, String str4, int i10, int i11, String str5, c<? super AdReportRemoteDS$adReport$2> cVar) {
        super(1, cVar);
        this.f43121i = str;
        this.f43122j = str2;
        this.f43123k = str3;
        this.f43124l = str4;
        this.f43125m = i10;
        this.f43126n = i11;
        this.f43127o = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new AdReportRemoteDS$adReport$2(this.f43121i, this.f43122j, this.f43123k, this.f43124l, this.f43125m, this.f43126n, this.f43127o, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43120h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43121i;
            String str2 = this.f43122j;
            String str3 = this.f43123k;
            String str4 = this.f43124l;
            int i11 = this.f43125m;
            int i12 = this.f43126n;
            String str5 = this.f43127o;
            this.f43120h = 1;
            obj = j10.n1(str, str2, str3, str4, i11, i12, str5, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((AdReportRemoteDS$adReport$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
