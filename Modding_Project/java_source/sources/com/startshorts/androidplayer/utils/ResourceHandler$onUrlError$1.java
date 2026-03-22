package com.startshorts.androidplayer.utils;

import com.jiuzhou.cdn.CdnHelper;
import gt.g0;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ResourceHandler.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.ResourceHandler$onUrlError$1", f = "ResourceHandler.kt", l = {69}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ResourceHandler$onUrlError$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48170h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f48171i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48172j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceHandler$onUrlError$1(Function0<Unit> function0, String str, c<? super ResourceHandler$onUrlError$1> cVar) {
        super(2, cVar);
        this.f48171i = function0;
        this.f48172j = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(Function0 function0) {
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ResourceHandler$onUrlError$1(this.f48171i, this.f48172j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ResourceHandler$onUrlError$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48170h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (!DeviceUtil.f48146a.f0()) {
                Function0<Unit> function0 = this.f48171i;
                if (function0 != null) {
                    function0.invoke();
                }
                return Unit.f60915a;
            }
            CdnHelper cdnHelper = CdnHelper.f25532a;
            String k10 = v.k(this.f48172j);
            final Function0<Unit> function02 = this.f48171i;
            Function0 function03 = new Function0() { // from class: com.startshorts.androidplayer.utils.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = ResourceHandler$onUrlError$1.j(Function0.this);
                    return j10;
                }
            };
            this.f48170h = 1;
            if (CdnHelper.o(cdnHelper, k10, 0L, function03, this, 2, null) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
