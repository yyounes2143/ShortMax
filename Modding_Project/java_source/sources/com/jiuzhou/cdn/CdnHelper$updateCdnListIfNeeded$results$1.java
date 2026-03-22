package com.jiuzhou.cdn;

import com.jiuzhou.cdn.a;
import com.jiuzhou.cdn.model.CdnInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kt.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CdnHelper.kt */
@Metadata
@d(c = "com.jiuzhou.cdn.CdnHelper$updateCdnListIfNeeded$results$1", f = "CdnHelper.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class CdnHelper$updateCdnListIfNeeded$results$1 extends SuspendLambda implements Function2<a.C0348a, c<? super b<? extends CdnInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f25559h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f25560i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<CdnInfo> f25561j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CdnHelper.kt */
    @Metadata
    @d(c = "com.jiuzhou.cdn.CdnHelper$updateCdnListIfNeeded$results$1$1", f = "CdnHelper.kt", l = {184}, m = "invokeSuspend")
    /* renamed from: com.jiuzhou.cdn.CdnHelper$updateCdnListIfNeeded$results$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<kt.c<? super CdnInfo>, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f25562h;

        /* renamed from: i  reason: collision with root package name */
        private /* synthetic */ Object f25563i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ a.C0348a f25564j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ List<CdnInfo> f25565k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(a.C0348a c0348a, List<CdnInfo> list, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f25564j = c0348a;
            this.f25565k = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f25564j, this.f25565k, cVar);
            anonymousClass1.f25563i = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CdnInfo m10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f25562h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.c cVar = (kt.c) this.f25563i;
                a.C0348a c0348a = this.f25564j;
                List<CdnInfo> list = this.f25565k;
                Intrinsics.checkNotNull(list);
                m10 = CdnHelper.m(c0348a, list);
                if (m10 != null) {
                    this.f25562h = 1;
                    if (cVar.emit(m10, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kt.c<? super CdnInfo> cVar, c<? super Unit> cVar2) {
            return ((AnonymousClass1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnHelper$updateCdnListIfNeeded$results$1(List<CdnInfo> list, c<? super CdnHelper$updateCdnListIfNeeded$results$1> cVar) {
        super(2, cVar);
        this.f25561j = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CdnHelper$updateCdnListIfNeeded$results$1 cdnHelper$updateCdnListIfNeeded$results$1 = new CdnHelper$updateCdnListIfNeeded$results$1(this.f25561j, cVar);
        cdnHelper$updateCdnListIfNeeded$results$1.f25560i = obj;
        return cdnHelper$updateCdnListIfNeeded$results$1;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(a.C0348a c0348a, c<? super b<CdnInfo>> cVar) {
        return ((CdnHelper$updateCdnListIfNeeded$results$1) create(c0348a, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f25559h == 0) {
            f.b(obj);
            return kotlinx.coroutines.flow.c.F(new AnonymousClass1((a.C0348a) this.f25560i, this.f25561j, null));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
