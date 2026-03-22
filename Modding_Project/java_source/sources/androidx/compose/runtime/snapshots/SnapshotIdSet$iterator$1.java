package androidx.compose.runtime.snapshots;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: SnapshotIdSet.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {252, 256, MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nSnapshotIdSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotIdSet.kt\nandroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1\n+ 2 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n*L\n1#1,315:1\n83#2,4:316\n36#2:320\n36#2:321\n*S KotlinDebug\n*F\n+ 1 SnapshotIdSet.kt\nandroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1\n*L\n252#1:316,4\n256#1:320\n263#1:321\n*E\n"})
/* loaded from: classes.dex */
final class SnapshotIdSet$iterator$1 extends RestrictedSuspendLambda implements Function2<kotlin.sequences.i<? super Long>, rs.c<? super Unit>, Object> {
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ SnapshotIdSet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotIdSet$iterator$1(SnapshotIdSet snapshotIdSet, rs.c<? super SnapshotIdSet$iterator$1> cVar) {
        super(2, cVar);
        this.this$0 = snapshotIdSet;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        SnapshotIdSet$iterator$1 snapshotIdSet$iterator$1 = new SnapshotIdSet$iterator$1(this.this$0, cVar);
        snapshotIdSet$iterator$1.L$0 = obj;
        return snapshotIdSet$iterator$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0073 -> B:19:0x0076). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0093 -> B:30:0x00b0). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00ad -> B:30:0x00b0). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d0 -> B:43:0x00f1). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00ef -> B:42:0x00f0). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlin.sequences.i<? super Long> iVar, rs.c<? super Unit> cVar) {
        return ((SnapshotIdSet$iterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
