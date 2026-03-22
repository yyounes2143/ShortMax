package io.ktor.utils.io;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ENGINE_CODE_OPTIMIZATION, TTVideoEngineInterface.PLAYER_OPTION_CONFIG_CENTER_CHECK_DIFF}, m = "readAvailableSuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$readAvailableSuspend$3 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59361h;

    /* renamed from: i  reason: collision with root package name */
    Object f59362i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59363j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59364k;

    /* renamed from: l  reason: collision with root package name */
    int f59365l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readAvailableSuspend$3(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$readAvailableSuspend$3> cVar) {
        super(cVar);
        this.f59364k = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object b02;
        this.f59363j = obj;
        this.f59365l |= Integer.MIN_VALUE;
        b02 = this.f59364k.b0(null, this);
        return b02;
    }
}
