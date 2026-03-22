package com.startshorts.androidplayer.repo.config.appConfig;

import com.startshorts.androidplayer.bean.turbolink.KeyValueParam;
import com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo;
import gt.g;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTurboLinkRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TurboLinkRepo.kt\ncom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,42:1\n126#2:43\n153#2,3:44\n*S KotlinDebug\n*F\n+ 1 TurboLinkRepo.kt\ncom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo\n*L\n20#1:43\n20#1:44,3\n*E\n"})
/* loaded from: classes7.dex */
public final class TurboLinkRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final TurboLinkRepo f43851a = new TurboLinkRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43852b = c.b(new Function0() { // from class: ng.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            g0 e10;
            e10 = TurboLinkRepo.e();
            return e10;
        }
    });

    private TurboLinkRepo() {
    }

    private final g0 c() {
        return (g0) f43852b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g0 e() {
        return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()));
    }

    public final void b(@NotNull String event, @NotNull Map<String, String> params) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(params, "params");
        ArrayList arrayList = new ArrayList(params.size());
        for (Map.Entry<String, String> entry : params.entrySet()) {
            arrayList.add(new KeyValueParam(entry.getKey(), entry.getValue()));
        }
        g.d(c(), null, null, new TurboLinkRepo$eventReport$1(event, arrayList, null), 3, null);
    }

    public final void d() {
        g.d(c(), null, null, new TurboLinkRepo$openEvent$1(null), 3, null);
    }
}
