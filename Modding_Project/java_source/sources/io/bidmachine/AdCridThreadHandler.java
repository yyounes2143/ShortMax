package io.bidmachine;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdCridThreadHandler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdCridThreadHandler {
    @NotNull
    private final String name;
    @NotNull
    private final Runnable runnable;
    @NotNull
    private final fr.j tag;
    @Nullable
    private Thread thread;

    public AdCridThreadHandler(@NotNull String crid) {
        Intrinsics.checkNotNullParameter(crid, "crid");
        this.tag = new fr.j("AdCridThreadManager");
        String str = "io.bidmachine.crid." + crid;
        this.name = str;
        Runnable runnable = new Runnable() { // from class: io.bidmachine.a
            @Override // java.lang.Runnable
            public final void run() {
                AdCridThreadHandler.runnable$lambda$0(AdCridThreadHandler.this);
            }
        };
        this.runnable = runnable;
        Thread thread = new Thread(runnable, str);
        thread.start();
        this.thread = thread;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runnable$lambda$0(AdCridThreadHandler this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Thread currentThread = Thread.currentThread();
        try {
            fr.j jVar = this$0.tag;
            io.bidmachine.core.a.c(jVar, this$0.name + " started");
            Thread.sleep(Long.MAX_VALUE);
        } catch (InterruptedException unused) {
            currentThread.interrupt();
        }
    }

    public final void destroy() {
        Thread thread = this.thread;
        if (thread != null) {
            thread.interrupt();
        }
        this.thread = null;
        fr.j jVar = this.tag;
        io.bidmachine.core.a.c(jVar, this.name + " stopped");
    }
}
