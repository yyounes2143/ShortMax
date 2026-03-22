package xm;

import android.content.Context;
import androidx.annotation.NonNull;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.FullScreenAd;
import io.bidmachine.FullScreenAdObject;
import io.bidmachine.NetworkAdapter;
import xq.h;
/* compiled from: InterstitialAd.java */
/* loaded from: classes7.dex */
public final class a extends FullScreenAd<a, c, FullScreenAdObject<c>, Object> {
    public a(@NonNull Context context) {
        super(context, AdsType.Interstitial);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.BidMachineAd
    /* renamed from: c */
    public FullScreenAdObject<c> createAdObject(@NonNull ContextProvider contextProvider, @NonNull c cVar, @NonNull NetworkAdapter networkAdapter, @NonNull lp.b bVar, @NonNull AdProcessCallback adProcessCallback) {
        h createInterstitial = networkAdapter.createInterstitial();
        if (createInterstitial == null) {
            return null;
        }
        return new FullScreenAdObject<>(contextProvider, adProcessCallback, cVar, bVar, createInterstitial);
    }
}
