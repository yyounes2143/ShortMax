package com.startshorts.androidplayer.manager.attribution;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$parse$1", f = "CampaignParser.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_UPDATE_TIMESTAMP_MODE, 96, 100, 108}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCampaignParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser$parse$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,489:1\n116#2,11:490\n*S KotlinDebug\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser$parse$1\n*L\n91#1:490,11\n*E\n"})
/* loaded from: classes6.dex */
public final class CampaignParser$parse$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41858h;

    /* renamed from: i  reason: collision with root package name */
    Object f41859i;

    /* renamed from: j  reason: collision with root package name */
    Object f41860j;

    /* renamed from: k  reason: collision with root package name */
    int f41861k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignParser$parse$1(rs.c<? super CampaignParser$parse$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignParser$parse$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignParser$parse$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
        if (r7.getShortPlayId() <= 0) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4 A[Catch: all -> 0x0026, TryCatch #1 {all -> 0x0026, blocks: (B:9:0x0021, B:65:0x014b, B:59:0x012d, B:61:0x0135, B:64:0x0146, B:42:0x00cf, B:44:0x00d5, B:21:0x004c, B:33:0x0094, B:35:0x00a4, B:37:0x00ae, B:39:0x00ba, B:41:0x00c0, B:27:0x006c, B:29:0x0076, B:30:0x007f), top: B:72:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ba A[Catch: all -> 0x0026, TryCatch #1 {all -> 0x0026, blocks: (B:9:0x0021, B:65:0x014b, B:59:0x012d, B:61:0x0135, B:64:0x0146, B:42:0x00cf, B:44:0x00d5, B:21:0x004c, B:33:0x0094, B:35:0x00a4, B:37:0x00ae, B:39:0x00ba, B:41:0x00c0, B:27:0x006c, B:29:0x0076, B:30:0x007f), top: B:72:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5 A[Catch: all -> 0x0026, TRY_LEAVE, TryCatch #1 {all -> 0x0026, blocks: (B:9:0x0021, B:65:0x014b, B:59:0x012d, B:61:0x0135, B:64:0x0146, B:42:0x00cf, B:44:0x00d5, B:21:0x004c, B:33:0x0094, B:35:0x00a4, B:37:0x00ae, B:39:0x00ba, B:41:0x00c0, B:27:0x006c, B:29:0x0076, B:30:0x007f), top: B:72:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010f A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:16:0x003d, B:48:0x00ef, B:50:0x010f, B:52:0x0119), top: B:70:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012a  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [qt.a] */
    /* JADX WARN: Type inference failed for: r2v20, types: [qt.a] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00ea -> B:48:0x00ef). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignParser$parse$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
