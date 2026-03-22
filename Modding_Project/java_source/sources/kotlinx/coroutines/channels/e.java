package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.a;
import kotlinx.coroutines.internal.UndeliveredElementException;
import mt.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConflatedBufferedChannel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,90:1\n1047#2,2:91\n1009#2,2:93\n1009#2,2:95\n1047#2,2:97\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n33#1:91,2\n45#1:93,2\n77#1:95,2\n80#1:97,2\n*E\n"})
/* loaded from: classes8.dex */
public class e<E> extends BufferedChannel<E> {

    /* renamed from: m  reason: collision with root package name */
    private final int f61385m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final BufferOverflow f61386n;

    public e(int i10, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        super(i10, function1);
        this.f61385m = i10;
        this.f61386n = bufferOverflow;
        if (bufferOverflow != BufferOverflow.SUSPEND) {
            if (i10 >= 1) {
                return;
            }
            throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
        }
        throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName() + " instead").toString());
    }

    static /* synthetic */ <E> Object s1(e<E> eVar, E e10, rs.c<? super Unit> cVar) {
        UndeliveredElementException c10;
        Object u12 = eVar.u1(e10, true);
        if (u12 instanceof a.C0855a) {
            a.e(u12);
            Function1<E, Unit> function1 = eVar.f61331b;
            if (function1 != null && (c10 = u.c(function1, e10, null, 2, null)) != null) {
                ms.d.a(c10, eVar.k0());
                throw c10;
            }
            throw eVar.k0();
        }
        return Unit.f60915a;
    }

    private final Object t1(E e10, boolean z10) {
        Function1<E, Unit> function1;
        UndeliveredElementException c10;
        Object h10 = super.h(e10);
        if (!a.i(h10) && !a.h(h10)) {
            if (z10 && (function1 = this.f61331b) != null && (c10 = u.c(function1, e10, null, 2, null)) != null) {
                throw c10;
            }
            return a.f61379b.c(Unit.f60915a);
        }
        return h10;
    }

    private final Object u1(E e10, boolean z10) {
        if (this.f61386n == BufferOverflow.DROP_LATEST) {
            return t1(e10, z10);
        }
        return i1(e10);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.h
    @NotNull
    public Object h(E e10) {
        return u1(e10, false);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.h
    @Nullable
    public Object p(E e10, @NotNull rs.c<? super Unit> cVar) {
        return s1(this, e10, cVar);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected boolean y0() {
        if (this.f61386n == BufferOverflow.DROP_OLDEST) {
            return true;
        }
        return false;
    }
}
