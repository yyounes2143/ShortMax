package ot;

import gt.b1;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public class e extends b1 {

    /* renamed from: b  reason: collision with root package name */
    private final int f64390b;

    /* renamed from: c  reason: collision with root package name */
    private final int f64391c;

    /* renamed from: d  reason: collision with root package name */
    private final long f64392d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f64393e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private CoroutineScheduler f64394f = o();

    public e(int i10, int i11, long j10, @NotNull String str) {
        this.f64390b = i10;
        this.f64391c = i11;
        this.f64392d = j10;
        this.f64393e = str;
    }

    private final CoroutineScheduler o() {
        return new CoroutineScheduler(this.f64390b, this.f64391c, this.f64392d, this.f64393e);
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        CoroutineScheduler.p(this.f64394f, runnable, false, false, 6, null);
    }

    @Override // gt.c0
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        CoroutineScheduler.p(this.f64394f, runnable, false, true, 2, null);
    }

    @Override // gt.b1
    @NotNull
    public Executor m() {
        return this.f64394f;
    }

    public final void p(@NotNull Runnable runnable, boolean z10, boolean z11) {
        this.f64394f.o(runnable, z10, z11);
    }
}
