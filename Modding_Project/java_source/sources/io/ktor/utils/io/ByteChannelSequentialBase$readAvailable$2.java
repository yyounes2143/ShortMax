package io.ktor.utils.io;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_RANGE_SIZE}, m = "readAvailable$ktor_io")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$readAvailable$2 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59445h;

    /* renamed from: i  reason: collision with root package name */
    Object f59446i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59447j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59448k;

    /* renamed from: l  reason: collision with root package name */
    int f59449l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$readAvailable$2(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$readAvailable$2> cVar) {
        super(cVar);
        this.f59448k = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59447j = obj;
        this.f59449l |= Integer.MIN_VALUE;
        return this.f59448k.F(null, this);
    }
}
