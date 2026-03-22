package com.startshorts.androidplayer.manager.push;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_SET_VOICE}, m = "pushStartRechargingNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class DefaultPushManager$pushStartRechargingNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42811h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42812i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42813j;

    /* renamed from: k  reason: collision with root package name */
    int f42814k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$pushStartRechargingNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$pushStartRechargingNotification$1> cVar) {
        super(cVar);
        this.f42813j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object M;
        this.f42812i = obj;
        this.f42814k |= Integer.MIN_VALUE;
        M = this.f42813j.M(this);
        if (M == a.f()) {
            return M;
        }
        return Result.b(M);
    }
}
