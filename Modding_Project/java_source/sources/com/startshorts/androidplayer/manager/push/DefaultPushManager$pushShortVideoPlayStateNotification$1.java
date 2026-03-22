package com.startshorts.androidplayer.manager.push;

import android.graphics.Bitmap;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.repo.push.PushRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager$pushShortVideoPlayStateNotification$1", f = "DefaultPushManager.kt", l = {109}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class DefaultPushManager$pushShortVideoPlayStateNotification$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42809h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortPlayNotification f42810i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushShortVideoPlayStateNotification$1(ShortPlayNotification shortPlayNotification, c<? super DefaultPushManager$pushShortVideoPlayStateNotification$1> cVar) {
        super(2, cVar);
        this.f42810i = shortPlayNotification;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DefaultPushManager$pushShortVideoPlayStateNotification$1(this.f42810i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DefaultPushManager$pushShortVideoPlayStateNotification$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f42809h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            PushRepo pushRepo = PushRepo.f44374a;
            String cover = this.f42810i.getCover();
            this.f42809h = 1;
            obj = pushRepo.n(cover, this);
            if (obj == f10) {
                return f10;
            }
        }
        Bitmap bitmap = (Bitmap) obj;
        if (bitmap != null) {
            this.f42810i.setBitmap(bitmap);
        }
        PushUtil.f42895a.L(this.f42810i);
        return Unit.f60915a;
    }
}
