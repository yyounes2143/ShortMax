package io.bidmachine;

import androidx.annotation.NonNull;
import io.bidmachine.ExpirationHandler;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public class BidToken implements ExpirationHandler.Listener {
    @NonNull
    private final AdRequest<?, ?, ?> adRequest;
    @NonNull
    private final ExpirationHandler expirationHandler;
    @NonNull
    private final ExpirationListener<BidToken> expirationListener;
    @NonNull

    /* renamed from: id  reason: collision with root package name */
    private final String f53562id = UUID.randomUUID().toString();

    /* loaded from: classes7.dex */
    private static class b implements ExpirationHandler.TaskScheduler {
        private b() {
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void cancelTask(@NonNull jr.b bVar) {
            BidTokenTaskManager.cancel(bVar);
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void scheduleTask(@NonNull jr.b bVar, long j10) {
            BidTokenTaskManager.schedule(bVar, j10, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BidToken(@NonNull AdRequest<?, ?, ?> adRequest, int i10, @NonNull ExpirationListener<BidToken> expirationListener) {
        this.adRequest = adRequest;
        this.expirationHandler = new ExpirationHandler(TimeUnit.SECONDS.toMillis(i10), this, new b());
        this.expirationListener = expirationListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroyAdRequest() {
        this.adRequest.clearNetworkAdUnits();
        this.adRequest.destroy();
    }

    @NonNull
    public AdRequest<?, ?, ?> getAdRequest() {
        return this.adRequest;
    }

    @NonNull
    public String getId() {
        return this.f53562id;
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        this.expirationListener.onExpired(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startExpiration() {
        this.expirationHandler.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopExpiration() {
        this.expirationHandler.stop();
    }
}
