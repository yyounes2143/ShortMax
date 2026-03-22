package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class BufferedChannelKt$createSegmentFunction$1<E> extends FunctionReferenceImpl implements Function2<Long, b<E>, b<E>> {

    /* renamed from: a  reason: collision with root package name */
    public static final BufferedChannelKt$createSegmentFunction$1 f61369a = new BufferedChannelKt$createSegmentFunction$1();

    BufferedChannelKt$createSegmentFunction$1() {
        super(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    public final b<E> b(long j10, b<E> bVar) {
        b<E> x10;
        x10 = BufferedChannelKt.x(j10, bVar);
        return x10;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Long l10, Object obj) {
        return b(l10.longValue(), (b) obj);
    }
}
