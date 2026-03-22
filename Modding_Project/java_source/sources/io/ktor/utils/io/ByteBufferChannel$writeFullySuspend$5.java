package io.ktor.utils.io;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_BUFFER_PROCESS_COVERT_ORDER}, m = "writeFullySuspend")
/* loaded from: classes8.dex */
public final class ByteBufferChannel$writeFullySuspend$5 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59400h;

    /* renamed from: i  reason: collision with root package name */
    Object f59401i;

    /* renamed from: j  reason: collision with root package name */
    int f59402j;

    /* renamed from: k  reason: collision with root package name */
    int f59403k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f59404l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ ByteBufferChannel f59405m;

    /* renamed from: n  reason: collision with root package name */
    int f59406n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$writeFullySuspend$5(ByteBufferChannel byteBufferChannel, rs.c<? super ByteBufferChannel$writeFullySuspend$5> cVar) {
        super(cVar);
        this.f59405m = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object N0;
        this.f59404l = obj;
        this.f59406n |= Integer.MIN_VALUE;
        N0 = this.f59405m.N0(null, 0, 0, this);
        return N0;
    }
}
