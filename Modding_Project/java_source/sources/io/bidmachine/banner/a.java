package io.bidmachine.banner;

import android.content.Context;
import androidx.annotation.NonNull;
import io.bidmachine.AdListener;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import nm.b;
import xq.e;
import xq.g;
/* compiled from: BannerAd.java */
/* loaded from: classes7.dex */
final class a extends ViewAd<a, b, ViewAdObject<b, e, g>, g, AdListener<a>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull Context context) {
        super(context, AdsType.Banner);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.BidMachineAd
    /* renamed from: c */
    public ViewAdObject<b, e, g> createAdObject(@NonNull ContextProvider contextProvider, @NonNull b bVar, @NonNull NetworkAdapter networkAdapter, @NonNull lp.b bVar2, @NonNull AdProcessCallback adProcessCallback) {
        e createBanner = networkAdapter.createBanner();
        if (createBanner == null) {
            return null;
        }
        ViewAdObject<b, e, g> viewAdObject = new ViewAdObject<>(contextProvider, adProcessCallback, bVar, bVar2, createBanner);
        BannerSize k10 = bVar.k();
        viewAdObject.setWidth(k10.width);
        viewAdObject.setHeight(k10.height);
        return viewAdObject;
    }
}
