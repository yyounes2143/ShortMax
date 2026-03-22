package com.startshorts.androidplayer.manager.push;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TestPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.TestPushManager", f = "TestPushManager.kt", l = {VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS}, m = "pushMissCheckInNotification-IoAF18A")
/* loaded from: classes6.dex */
public final class TestPushManager$pushMissCheckInNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42874h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ TestPushManager f42875i;

    /* renamed from: j  reason: collision with root package name */
    int f42876j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestPushManager$pushMissCheckInNotification$1(TestPushManager testPushManager, c<? super TestPushManager$pushMissCheckInNotification$1> cVar) {
        super(cVar);
        this.f42875i = testPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42874h = obj;
        this.f42876j |= Integer.MIN_VALUE;
        Object i10 = this.f42875i.i(this);
        if (i10 == a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
