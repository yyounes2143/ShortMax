package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import io.bidmachine.AdListener;
import io.bidmachine.FullScreenAd;
import io.bidmachine.FullScreenAdObject;
import io.bidmachine.FullScreenAdRequest;
/* loaded from: classes7.dex */
public abstract class FullScreenAd<SelfType extends FullScreenAd<SelfType, AdRequestType, AdObjectType, ListenerType>, AdRequestType extends FullScreenAdRequest<AdRequestType>, AdObjectType extends FullScreenAdObject<AdRequestType>, ListenerType extends AdListener<SelfType>> extends BidMachineAd<SelfType, AdRequestType, AdObjectType, lp.b, xq.j, ListenerType> {
    /* JADX INFO: Access modifiers changed from: protected */
    public FullScreenAd(@NonNull Context context, @NonNull AdsType adsType) {
        super(context, adsType);
    }

    private void resetTracked() {
        this.isFinishTracked.set(false);
        this.isCloseTracked.set(false);
    }

    @Override // io.bidmachine.BidMachineAd
    public boolean isDuplicateShowDisabled() {
        return true;
    }

    public void show() {
        FullScreenAdObject fullScreenAdObject = (FullScreenAdObject) prepareShow();
        if (fullScreenAdObject == null) {
            return;
        }
        try {
            resetTracked();
            fullScreenAdObject.show(getContextProvider(), this.rendererConfiguration);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            processShowFail(fr.a.l("Exception showing fullscreen object", th2));
        }
    }
}
