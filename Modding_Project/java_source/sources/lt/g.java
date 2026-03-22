package lt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
/* compiled from: ChannelFlow.kt */
@Metadata
/* loaded from: classes8.dex */
public interface g<T> extends kt.b<T> {

    /* compiled from: ChannelFlow.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static /* synthetic */ kt.b a(g gVar, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 1) != 0) {
                    coroutineContext = EmptyCoroutineContext.f61040a;
                }
                if ((i11 & 2) != 0) {
                    i10 = -3;
                }
                if ((i11 & 4) != 0) {
                    bufferOverflow = BufferOverflow.SUSPEND;
                }
                return gVar.a(coroutineContext, i10, bufferOverflow);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
        }
    }

    @NotNull
    kt.b<T> a(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow);
}
