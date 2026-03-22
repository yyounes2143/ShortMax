package lt;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbstractSharedFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,130:1\n29#2:131\n29#2:133\n16#3:132\n16#3:134\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow\n*L\n124#1:131\n126#1:133\n124#1:132\n126#1:134\n*E\n"})
/* loaded from: classes8.dex */
public final class n extends SharedFlowImpl<Integer> implements kt.i<Integer> {
    public n(int i10) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        g(Integer.valueOf(i10));
    }

    @Override // kt.i
    @NotNull
    /* renamed from: Y */
    public Integer getValue() {
        Integer valueOf;
        synchronized (this) {
            valueOf = Integer.valueOf(L().intValue());
        }
        return valueOf;
    }

    public final boolean Z(int i10) {
        boolean g10;
        synchronized (this) {
            g10 = g(Integer.valueOf(L().intValue() + i10));
        }
        return g10;
    }
}
