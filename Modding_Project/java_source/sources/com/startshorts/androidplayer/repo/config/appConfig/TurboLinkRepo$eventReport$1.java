package com.startshorts.androidplayer.repo.config.appConfig;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.turbolink.KeyValueParam;
import com.startshorts.androidplayer.manager.api.base.ApiBuilder;
import com.startshorts.androidplayer.manager.api.base.k;
import gt.g0;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TurboLinkRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo$eventReport$1", f = "TurboLinkRepo.kt", l = {25}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class TurboLinkRepo$eventReport$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43853h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43854i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<KeyValueParam> f43855j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TurboLinkRepo.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo$eventReport$1$1", f = "TurboLinkRepo.kt", l = {26}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo$eventReport$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43856h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ String f43857i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ List<KeyValueParam> f43858j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, List<KeyValueParam> list, c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.f43857i = str;
            this.f43858j = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(c<?> cVar) {
            return new AnonymousClass1(this.f43857i, this.f43858j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = a.f();
            int i10 = this.f43856h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                k.a j10 = k.f41787a.j();
                String str = this.f43857i;
                String d10 = l.d(this.f43858j);
                this.f43856h = 1;
                obj = j10.o(str, d10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(c<? super ServerResult<Object>> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TurboLinkRepo$eventReport$1(String str, List<KeyValueParam> list, c<? super TurboLinkRepo$eventReport$1> cVar) {
        super(2, cVar);
        this.f43854i = str;
        this.f43855j = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new TurboLinkRepo$eventReport$1(this.f43854i, this.f43855j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((TurboLinkRepo$eventReport$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43853h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ApiBuilder n10 = new ApiBuilder().n();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f43854i, this.f43855j, null);
            this.f43853h = 1;
            if (n10.o(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
