package jt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g {
    @NotNull
    public static final <E> d<E> a(int i10, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        d<E> eVar;
        if (i10 != -2) {
            if (i10 != -1) {
                if (i10 != 0) {
                    if (i10 != Integer.MAX_VALUE) {
                        if (bufferOverflow == BufferOverflow.SUSPEND) {
                            return new BufferedChannel(i10, function1);
                        }
                        return new kotlinx.coroutines.channels.e(i10, bufferOverflow, function1);
                    }
                    return new BufferedChannel(Integer.MAX_VALUE, function1);
                } else if (bufferOverflow == BufferOverflow.SUSPEND) {
                    eVar = new BufferedChannel<>(0, function1);
                } else {
                    eVar = new kotlinx.coroutines.channels.e<>(1, bufferOverflow, function1);
                }
            } else if (bufferOverflow == BufferOverflow.SUSPEND) {
                return new kotlinx.coroutines.channels.e(1, BufferOverflow.DROP_OLDEST, function1);
            } else {
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            }
        } else if (bufferOverflow == BufferOverflow.SUSPEND) {
            eVar = new BufferedChannel<>(d.E8.a(), function1);
        } else {
            eVar = new kotlinx.coroutines.channels.e<>(1, bufferOverflow, function1);
        }
        return eVar;
    }

    public static /* synthetic */ d b(int i10, BufferOverflow bufferOverflow, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        return a(i10, bufferOverflow, function1);
    }
}
