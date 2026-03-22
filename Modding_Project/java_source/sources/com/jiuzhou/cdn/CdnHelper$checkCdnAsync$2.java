package com.jiuzhou.cdn;

import com.jiuzhou.cdn.a;
import com.jiuzhou.cdn.model.CdnInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kt.b;
import rs.c;
/* compiled from: CdnHelper.kt */
@Metadata
@d(c = "com.jiuzhou.cdn.CdnHelper$checkCdnAsync$2", f = "CdnHelper.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class CdnHelper$checkCdnAsync$2 extends SuspendLambda implements Function2<CdnInfo, c<? super b<? extends a.C0348a>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f25537h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f25538i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CdnHelper.kt */
    @Metadata
    @d(c = "com.jiuzhou.cdn.CdnHelper$checkCdnAsync$2$1", f = "CdnHelper.kt", l = {238}, m = "invokeSuspend")
    /* renamed from: com.jiuzhou.cdn.CdnHelper$checkCdnAsync$2$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super a.C0348a>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f25539h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ CdnInfo f25540i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CdnInfo cdnInfo, c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.f25540i = cdnInfo;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(c<?> cVar) {
            return new AnonymousClass1(this.f25540i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f25539h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                String cdn = this.f25540i.getCdn();
                String str = "";
                if (cdn == null) {
                    cdn = "";
                }
                String path = this.f25540i.getPath();
                if (path != null) {
                    str = path;
                }
                this.f25539h = 1;
                obj = a.b(cdn, str, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(c<? super a.C0348a> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CdnHelper$checkCdnAsync$2(c<? super CdnHelper$checkCdnAsync$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CdnHelper$checkCdnAsync$2 cdnHelper$checkCdnAsync$2 = new CdnHelper$checkCdnAsync$2(cVar);
        cdnHelper$checkCdnAsync$2.f25538i = obj;
        return cdnHelper$checkCdnAsync$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(CdnInfo cdnInfo, c<? super b<a.C0348a>> cVar) {
        return ((CdnHelper$checkCdnAsync$2) create(cdnInfo, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f25537h == 0) {
            f.b(obj);
            return kotlinx.coroutines.flow.c.b(new AnonymousClass1((CdnInfo) this.f25538i, null));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
