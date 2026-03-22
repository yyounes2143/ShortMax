package ot;

import gt.h0;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Tasks.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h extends g {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f64397c;

    public h(@NotNull Runnable runnable, long j10, boolean z10) {
        super(j10, z10);
        this.f64397c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f64397c.run();
    }

    @NotNull
    public String toString() {
        String c10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Task[");
        sb2.append(h0.a(this.f64397c));
        sb2.append('@');
        sb2.append(h0.b(this.f64397c));
        sb2.append(", ");
        sb2.append(this.f64395a);
        sb2.append(", ");
        c10 = i.c(this.f64396b);
        sb2.append(c10);
        sb2.append(']');
        return sb2.toString();
    }
}
