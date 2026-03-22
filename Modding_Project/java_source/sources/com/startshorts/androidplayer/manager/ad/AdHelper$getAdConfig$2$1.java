package com.startshorts.androidplayer.manager.ad;

import android.content.Context;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdHelper.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.ad.AdHelper$getAdConfig$2$1", f = "AdHelper.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdHelper$getAdConfig$2$1 extends SuspendLambda implements Function2<Context, c<? super String>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41599h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdHelper$getAdConfig$2$1(c<? super AdHelper$getAdConfig$2$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdHelper$getAdConfig$2$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(Context context, c<? super String> cVar) {
        return ((AdHelper$getAdConfig$2$1) create(context, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41599h == 0) {
            f.b(obj);
            String h10 = DeviceUtil.f48146a.h();
            if (h10 == null) {
                return "";
            }
            return h10;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
