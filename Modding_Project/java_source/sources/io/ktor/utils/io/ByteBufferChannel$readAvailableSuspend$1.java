package io.ktor.utils.io;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_VR_PREDICT_ACCURACY_THRESHOLD, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_NOTIFY_SEI_IMMEDIATELY_BEFORE_FIRSTFRAME}, m = "readAvailableSuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$readAvailableSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59354h;

    /* renamed from: i  reason: collision with root package name */
    Object f59355i;

    /* renamed from: j  reason: collision with root package name */
    int f59356j;

    /* renamed from: k  reason: collision with root package name */
    int f59357k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f59358l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59359m;

    /* renamed from: n  reason: collision with root package name */
    int f59360n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readAvailableSuspend$1(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$readAvailableSuspend$1> cVar) {
        super(cVar);
        this.f59359m = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c02;
        this.f59358l = obj;
        this.f59360n |= Integer.MIN_VALUE;
        c02 = this.f59359m.c0(null, 0, 0, this);
        return c02;
    }
}
