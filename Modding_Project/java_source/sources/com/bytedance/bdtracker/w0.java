package com.bytedance.bdtracker;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public final class w0 extends v0 {

    /* renamed from: b  reason: collision with root package name */
    public final Runnable f12493b;

    public w0(@NotNull Runnable checkTask) {
        Intrinsics.checkParameterIsNotNull(checkTask, "checkTask");
        this.f12493b = checkTask;
    }

    @Override // com.bytedance.bdtracker.v0
    public void a() {
        this.f12463a.removeCallbacks(this.f12493b);
        this.f12463a.postDelayed(this.f12493b, 100L);
    }
}
