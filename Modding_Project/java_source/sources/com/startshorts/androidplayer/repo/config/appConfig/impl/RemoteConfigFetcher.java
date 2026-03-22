package com.startshorts.androidplayer.repo.config.appConfig.impl;

import gt.e;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.a;
import rs.c;
/* compiled from: RemoteConfigFetcher.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RemoteConfigFetcher implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final qg.a f43861a;

    public RemoteConfigFetcher(@NotNull qg.a config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f43861a = config;
    }

    @Override // pg.a
    @Nullable
    public Object a(@NotNull c<? super String> cVar) {
        return e.g(q0.b(), new RemoteConfigFetcher$fetch$2(this, null), cVar);
    }
}
