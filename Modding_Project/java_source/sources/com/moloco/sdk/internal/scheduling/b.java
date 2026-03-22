package com.moloco.sdk.internal.scheduling;

import gt.c0;
import gt.q0;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class b implements a {
    @Override // com.moloco.sdk.internal.scheduling.a
    @NotNull
    /* renamed from: b */
    public c0 getDefault() {
        return q0.a();
    }

    @Override // com.moloco.sdk.internal.scheduling.a
    @NotNull
    /* renamed from: c */
    public c0 getIo() {
        return q0.b();
    }

    @Override // com.moloco.sdk.internal.scheduling.a
    @NotNull
    /* renamed from: d */
    public c0 getMain() {
        return q0.c();
    }

    @Override // com.moloco.sdk.internal.scheduling.a
    @NotNull
    /* renamed from: e */
    public c0 a() {
        return q0.c().m();
    }
}
