package io.ktor.utils.io;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteChannelSequential.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT}, m = "writeFully$suspendImpl")
/* loaded from: classes8.dex */
public final class ByteChannelSequentialBase$writeFully$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59463h;

    /* renamed from: i  reason: collision with root package name */
    Object f59464i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59465j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ByteChannelSequentialBase f59466k;

    /* renamed from: l  reason: collision with root package name */
    int f59467l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteChannelSequentialBase$writeFully$1(ByteChannelSequentialBase byteChannelSequentialBase, rs.c<? super ByteChannelSequentialBase$writeFully$1> cVar) {
        super(cVar);
        this.f59466k = byteChannelSequentialBase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59465j = obj;
        this.f59467l |= Integer.MIN_VALUE;
        return ByteChannelSequentialBase.L(this.f59466k, null, this);
    }
}
