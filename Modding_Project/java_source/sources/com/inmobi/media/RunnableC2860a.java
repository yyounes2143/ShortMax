package com.inmobi.media;

import android.os.Debug;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.a  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class RunnableC2860a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2877b f24468a;

    public RunnableC2860a(C2877b c2877b) {
        this.f24468a = c2877b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f24468a.f24509d.get()) {
            if (this.f24468a.f24511f.hasMessages(DataLoaderHelper.DATALOADER_KEY_INT_OPTIMIZE_RANGE)) {
                this.f24468a.f24511f.removeMessages(DataLoaderHelper.DATALOADER_KEY_INT_OPTIMIZE_RANGE);
                this.f24468a.getClass();
                if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f24468a.f24510e.get()) {
                    StackTraceElement[] a10 = C2877b.a(this.f24468a);
                    H3 h32 = this.f24468a.f23671a;
                    Intrinsics.checkNotNull(a10);
                    h32.a(new mf(a10));
                }
            }
            this.f24468a.f24510e.getAndSet(true);
            this.f24468a.f24511f.sendEmptyMessage(DataLoaderHelper.DATALOADER_KEY_INT_OPTIMIZE_RANGE);
        }
    }
}
