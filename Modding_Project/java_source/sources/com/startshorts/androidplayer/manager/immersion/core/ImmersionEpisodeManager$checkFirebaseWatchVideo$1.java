package com.startshorts.androidplayer.manager.immersion.core;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionEpisodeManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager$checkFirebaseWatchVideo$1", f = "ImmersionEpisodeManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME, 530}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nImmersionEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionEpisodeManager.kt\ncom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$checkFirebaseWatchVideo$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,624:1\n116#2,8:625\n125#2:634\n126#2:637\n1#3:633\n1863#4,2:635\n*S KotlinDebug\n*F\n+ 1 ImmersionEpisodeManager.kt\ncom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$checkFirebaseWatchVideo$1\n*L\n496#1:625,8\n496#1:634\n496#1:637\n519#1:635,2\n*E\n"})
/* loaded from: classes6.dex */
public final class ImmersionEpisodeManager$checkFirebaseWatchVideo$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42550h;

    /* renamed from: i  reason: collision with root package name */
    Object f42551i;

    /* renamed from: j  reason: collision with root package name */
    Object f42552j;

    /* renamed from: k  reason: collision with root package name */
    Object f42553k;

    /* renamed from: l  reason: collision with root package name */
    Object f42554l;

    /* renamed from: m  reason: collision with root package name */
    Object f42555m;

    /* renamed from: n  reason: collision with root package name */
    Object f42556n;

    /* renamed from: o  reason: collision with root package name */
    Object f42557o;

    /* renamed from: p  reason: collision with root package name */
    int f42558p;

    /* renamed from: q  reason: collision with root package name */
    int f42559q;

    /* renamed from: r  reason: collision with root package name */
    int f42560r;

    /* renamed from: s  reason: collision with root package name */
    final /* synthetic */ ImmersionEpisodeManager f42561s;

    /* renamed from: t  reason: collision with root package name */
    final /* synthetic */ String f42562t;

    /* renamed from: u  reason: collision with root package name */
    final /* synthetic */ int f42563u;

    /* renamed from: v  reason: collision with root package name */
    final /* synthetic */ int f42564v;

    /* renamed from: w  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f42565w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionEpisodeManager$checkFirebaseWatchVideo$1(ImmersionEpisodeManager immersionEpisodeManager, String str, int i10, int i11, BaseEpisode baseEpisode, c<? super ImmersionEpisodeManager$checkFirebaseWatchVideo$1> cVar) {
        super(2, cVar);
        this.f42561s = immersionEpisodeManager;
        this.f42562t = str;
        this.f42563u = i10;
        this.f42564v = i11;
        this.f42565w = baseEpisode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionEpisodeManager$checkFirebaseWatchVideo$1(this.f42561s, this.f42562t, this.f42563u, this.f42564v, this.f42565w, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionEpisodeManager$checkFirebaseWatchVideo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x016a A[Catch: all -> 0x01c9, TryCatch #1 {all -> 0x01c9, blocks: (B:39:0x0164, B:41:0x016a, B:44:0x018d, B:46:0x0194, B:48:0x019e, B:56:0x01da, B:58:0x01df, B:59:0x01ed, B:18:0x0090, B:23:0x00a5, B:24:0x00ac, B:30:0x00c5, B:33:0x00d6, B:38:0x010d, B:22:0x00a0), top: B:65:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01da A[Catch: all -> 0x01c9, TryCatch #1 {all -> 0x01c9, blocks: (B:39:0x0164, B:41:0x016a, B:44:0x018d, B:46:0x0194, B:48:0x019e, B:56:0x01da, B:58:0x01df, B:59:0x01ed, B:18:0x0090, B:23:0x00a5, B:24:0x00ac, B:30:0x00c5, B:33:0x00d6, B:38:0x010d, B:22:0x00a0), top: B:65:0x0090 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x01d1 -> B:55:0x01d7). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.immersion.core.ImmersionEpisodeManager$checkFirebaseWatchVideo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
