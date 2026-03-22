package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.DataLoaderListener2;
import com.ss.ttvideoengine.TTVideoEngine;
import com.startshorts.androidplayer.bean.player.PlayerHeaderInfo;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RequestHeadersFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RequestHeadersFeature extends b {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private DataLoaderListener2 f42699d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f42700e = kotlin.c.b(new Function0() { // from class: nf.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List j10;
            j10 = RequestHeadersFeature.j();
            return j10;
        }
    });
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private a f42701f;

    /* compiled from: RequestHeadersFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a(@NotNull PlayerHeaderInfo playerHeaderInfo);
    }

    private final DataLoaderListener2 f() {
        return new DataLoaderListener2() { // from class: nf.d
            @Override // com.ss.ttvideoengine.DataLoaderListener2
            public final void onNotify(int i10, long j10, long j11, String str) {
                RequestHeadersFeature.g(RequestHeadersFeature.this, i10, j10, j11, str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(RequestHeadersFeature requestHeadersFeature, int i10, long j10, long j11, String str) {
        if (i10 != 33) {
            return;
        }
        CoroutineUtil.f48072a.j("PlayerHeaderInfo", true, new RequestHeadersFeature$createListener$1$1(str, requestHeadersFeature, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> i() {
        return (List) this.f42700e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List j() {
        return new ArrayList();
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        super.a(player, params);
        DataLoaderListener2 f10 = f();
        DataLoaderHelper.getDataLoader().addListener(f10);
        this.f42699d = f10;
    }

    @Nullable
    public final a h() {
        return this.f42701f;
    }

    public final void k(@Nullable a aVar) {
        this.f42701f = aVar;
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void release() {
        super.release();
        DataLoaderListener2 dataLoaderListener2 = this.f42699d;
        if (dataLoaderListener2 != null) {
            DataLoaderHelper.getDataLoader().removeListener(dataLoaderListener2);
        }
        this.f42699d = null;
        this.f42701f = null;
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    @NotNull
    public IVideoPlayerFeature.FeatureType type() {
        return IVideoPlayerFeature.FeatureType.REQUEST_HEADERS;
    }
}
