package com.bytedance.bdtracker;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes3.dex */
public final class x0 extends v0 {

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f12516b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f12517c;

    /* loaded from: classes3.dex */
    public static final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            x0.this.f12517c.run();
            x0.this.f12516b = true;
        }
    }

    public x0(@NotNull Runnable checkTask) {
        Intrinsics.checkParameterIsNotNull(checkTask, "checkTask");
        this.f12517c = checkTask;
        this.f12516b = true;
    }

    @Override // com.bytedance.bdtracker.v0
    public void a() {
        if (this.f12516b) {
            this.f12516b = false;
            this.f12463a.removeCallbacks(this.f12517c);
            this.f12463a.postDelayed(new a(), 500L);
        }
    }
}
