package io.bidmachine;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import xq.d;
/* loaded from: classes7.dex */
public abstract class ViewAd<AdType extends ViewAd<AdType, AdRequestType, AdObjectType, UnifiedAdRequestParamsType, AdListenerType>, AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, AdObjectType extends ViewAdObject<AdRequestType, ?, UnifiedAdRequestParamsType>, UnifiedAdRequestParamsType extends xq.d, AdListenerType extends AdListener<AdType>> extends BidMachineAd<AdType, AdRequestType, AdObjectType, lp.b, UnifiedAdRequestParamsType, AdListenerType> {
    /* JADX INFO: Access modifiers changed from: protected */
    public ViewAd(@NonNull Context context, @NonNull AdsType adsType) {
        super(context, adsType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide() {
        ViewAdObject viewAdObject = (ViewAdObject) getLoadedAdObject();
        if (viewAdObject == null) {
            return;
        }
        viewAdObject.hide();
    }

    @Override // io.bidmachine.BidMachineAd
    public boolean isDuplicateShowDisabled() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void show(ViewGroup viewGroup) {
        ViewAdObject viewAdObject = (ViewAdObject) prepareShow();
        if (viewAdObject == null) {
            return;
        }
        try {
            viewAdObject.show(viewGroup, this.rendererConfiguration);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            processShowFail(fr.a.l("Exception showing view ad object", th2));
        }
    }
}
