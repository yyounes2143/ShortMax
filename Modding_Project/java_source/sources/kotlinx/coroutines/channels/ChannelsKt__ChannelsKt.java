package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.a;
import org.jetbrains.annotations.NotNull;
/* compiled from: Channels.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n1009#2,2:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,2\n*E\n"})
/* loaded from: classes8.dex */
final /* synthetic */ class ChannelsKt__ChannelsKt {
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> Object a(@NotNull h<? super E> hVar, E e10) {
        Object b10;
        Object h10 = hVar.h(e10);
        if (h10 instanceof a.c) {
            b10 = gt.f.b(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(hVar, e10, null), 1, null);
            return ((a) b10).k();
        }
        Unit unit = (Unit) h10;
        return a.f61379b.c(Unit.f60915a);
    }
}
