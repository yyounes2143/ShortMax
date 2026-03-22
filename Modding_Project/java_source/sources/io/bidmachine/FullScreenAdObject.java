package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.FullScreenAdRequest;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public final class FullScreenAdObject<AdRequestType extends FullScreenAdRequest<AdRequestType>> extends AdObjectImpl<AdRequestType, lp.b, xq.h, xq.i, xq.j> {
    private final AtomicBoolean isShowing;
    private final b thresholdTask;

    /* loaded from: classes7.dex */
    class a extends b {
        a() {
            super(null);
        }

        @Override // io.bidmachine.FullScreenAdObject.b
        void c() {
            FullScreenAdObject.this.getProcessCallback().processVisibilityTrackerImpression();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static abstract class b implements Runnable {
        private b() {
        }

        void a() {
            io.bidmachine.core.g.g(this);
        }

        abstract void c();

        void d(long j10) {
            io.bidmachine.core.g.Y(this, j10);
        }

        @Override // java.lang.Runnable
        public void run() {
            c();
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c extends AdObjectImpl.BaseUnifiedAdCallback implements xq.i {
        c(@NonNull AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
        }

        @Override // xq.i
        public void b() {
            this.processCallback.processFinished();
        }

        @Override // xq.i
        public void onAdClosed() {
            this.processCallback.processClosed();
        }

        @Override // xq.i
        public void onAdLoaded() {
            this.processCallback.processLoadSuccess();
        }
    }

    public FullScreenAdObject(@NonNull ContextProvider contextProvider, @NonNull AdProcessCallback adProcessCallback, @NonNull AdRequestType adrequesttype, @NonNull lp.b bVar, @NonNull xq.h hVar) {
        super(contextProvider, adProcessCallback, adrequesttype, bVar, hVar);
        this.isShowing = new AtomicBoolean(false);
        this.thresholdTask = new a();
    }

    private void cancelImpressionThresholdTask() {
        this.thresholdTask.a();
    }

    private void startImpressionThresholdTask() {
        this.thresholdTask.d(getParams().e().b());
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onClosed(boolean z10) {
        this.isShowing.set(false);
        super.onClosed(z10);
        cancelImpressionThresholdTask();
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onFinished() {
        super.onFinished();
        cancelImpressionThresholdTask();
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onImpression() {
        super.onImpression();
        cancelImpressionThresholdTask();
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onShowFailed() {
        this.isShowing.set(false);
        super.onShowFailed();
    }

    @Override // io.bidmachine.AdObjectImpl, lp.a
    public void onShown() {
        super.onShown();
        startImpressionThresholdTask();
    }

    public void show(@NonNull ContextProvider contextProvider, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        if (this.isShowing.get()) {
            io.bidmachine.core.a.d("Fullscreen ad already showing, please wait until the ad closes");
            return;
        }
        this.isShowing.set(true);
        getUnifiedAd().k(contextProvider, getUnifiedAdCallback(), rendererConfiguration);
        getProcessCallback().processFillAd();
    }

    @Override // io.bidmachine.AdObjectImpl
    @NonNull
    public xq.i createUnifiedCallback(@NonNull AdProcessCallback adProcessCallback) {
        return new c(adProcessCallback);
    }
}
