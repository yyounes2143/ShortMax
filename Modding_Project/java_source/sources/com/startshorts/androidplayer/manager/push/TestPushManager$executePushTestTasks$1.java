package com.startshorts.androidplayer.manager.push;

import com.startshorts.androidplayer.manager.push.task.PushType;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TestPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager$executePushTestTasks$1", f = "TestPushManager.kt", l = {49, 50}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class TestPushManager$executePushTestTasks$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42856h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushType f42857i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42858j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$executePushTestTasks$1(PushType pushType, String str, c<? super TestPushManager$executePushTestTasks$1> cVar) {
        super(2, cVar);
        this.f42857i = pushType;
        this.f42858j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new TestPushManager$executePushTestTasks$1(this.f42857i, this.f42858j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((TestPushManager$executePushTestTasks$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f42856h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            u.k(u.f51776a, "请2秒内把app切换到后台，否则push不触发", 0, 2, null);
            this.f42856h = 1;
            if (DelayKt.b(2000L, this) == f10) {
                return f10;
            }
        }
        TestPushManager testPushManager = TestPushManager.f42844a;
        PushType pushType = this.f42857i;
        String str = this.f42858j;
        this.f42856h = 2;
        if (testPushManager.a(pushType, str, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
