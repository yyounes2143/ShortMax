package com.unity3d.services.core.domain;

import gt.c0;
import gt.q0;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SDKDispatchers.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SDKDispatchers implements ISDKDispatchers {
    @NotNull

    /* renamed from: io  reason: collision with root package name */
    private final c0 f49540io = q0.b();
    @NotNull

    /* renamed from: default  reason: not valid java name */
    private final c0 f33default = q0.a();
    @NotNull
    private final c0 main = q0.c();

    @Override // com.unity3d.services.core.domain.ISDKDispatchers
    @NotNull
    public c0 getDefault() {
        return this.f33default;
    }

    @Override // com.unity3d.services.core.domain.ISDKDispatchers
    @NotNull
    public c0 getIo() {
        return this.f49540io;
    }

    @Override // com.unity3d.services.core.domain.ISDKDispatchers
    @NotNull
    public c0 getMain() {
        return this.main;
    }
}
