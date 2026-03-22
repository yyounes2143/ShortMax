package io.ktor.utils.io;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteReadChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.ByteReadChannelKt", f = "ByteReadChannel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE}, m = "copyAndClose")
/* loaded from: classes8.dex */
public final class ByteReadChannelKt$copyAndClose$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59488h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59489i;

    /* renamed from: j  reason: collision with root package name */
    int f59490j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteReadChannelKt$copyAndClose$1(rs.c<? super ByteReadChannelKt$copyAndClose$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59489i = obj;
        this.f59490j |= Integer.MIN_VALUE;
        return ByteReadChannelKt.b(null, null, 0L, this);
    }
}
