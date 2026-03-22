package com.startshorts.androidplayer.manager.event;

import android.os.Bundle;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.g0;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.EventManager$logAppActiveForegroundAgain$1", f = "EventManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class EventManager$logAppActiveForegroundAgain$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42482h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42483i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventManager$logAppActiveForegroundAgain$1(String str, c<? super EventManager$logAppActiveForegroundAgain$1> cVar) {
        super(2, cVar);
        this.f42483i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventManager$logAppActiveForegroundAgain$1(this.f42483i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventManager$logAppActiveForegroundAgain$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f42482h == 0) {
            f.b(obj);
            if (b.f68412a.z(TimeUtil.f48175a.f(jk.f.a(new Date())))) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("from", this.f42483i);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "interactive", bundle, 0L, 4, null);
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
