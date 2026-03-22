package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttvideoengine.TTVideoEngine;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class b implements IVideoPlayerFeature {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42710c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private TTVideoEngine f42711a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private s f42712b;

    /* compiled from: BaseFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        if (Intrinsics.areEqual(this.f42711a, player)) {
            return;
        }
        this.f42711a = player;
        this.f42712b = params;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final TTVideoEngine b() {
        return this.f42711a;
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void release() {
        this.f42711a = null;
        this.f42712b = null;
    }
}
