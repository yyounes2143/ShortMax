package yr;

import gt.d0;
import gt.r1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutinesUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutinesUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,29:1\n1295#2,2:30\n48#3,4:32\n*S KotlinDebug\n*F\n+ 1 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n*L\n16#1:30,2\n28#1:32,4\n*E\n"})
/* loaded from: classes8.dex */
public final class k {
    @NotNull
    public static final CoroutineContext a(@Nullable kotlinx.coroutines.r rVar) {
        return r1.a(rVar).plus(new a(d0.D8));
    }

    public static /* synthetic */ CoroutineContext b(kotlinx.coroutines.r rVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            rVar = null;
        }
        return a(rVar);
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n*L\n1#1,110:1\n28#2:111\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a extends kotlin.coroutines.a implements d0 {
        public a(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        }
    }
}
