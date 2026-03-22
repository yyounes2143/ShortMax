package mp;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineAd;
import io.bidmachine.ContextProvider;
import io.bidmachine.ImageData;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.nativead.view.NativeMediaView;
import java.util.Set;
import xq.l;
import xq.n;
/* compiled from: NativeAd.java */
/* loaded from: classes8.dex */
public final class b extends BidMachineAd<b, NativeRequest, d, lp.b, n, Object> implements j {
    public b(@NonNull Context context) {
        super(context, AdsType.Native);
    }

    private boolean j() {
        if (getLoadedAdObject() == null) {
            log("not loaded, please load ads first");
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.BidMachineAd
    /* renamed from: c */
    public d createAdObject(@NonNull ContextProvider contextProvider, @NonNull NativeRequest nativeRequest, @NonNull NetworkAdapter networkAdapter, @NonNull lp.b bVar, @NonNull AdProcessCallback adProcessCallback) {
        l createNativeAd = networkAdapter.createNativeAd();
        if (createNativeAd == null) {
            return null;
        }
        return new d(contextProvider, adProcessCallback, nativeRequest, bVar, createNativeAd);
    }

    @Nullable
    public String d() {
        if (j()) {
            return getLoadedAdObject().E();
        }
        return null;
    }

    @Nullable
    public String e() {
        if (j()) {
            return getLoadedAdObject().G();
        }
        return null;
    }

    @Nullable
    public View f(@NonNull Context context) {
        if (j()) {
            return getLoadedAdObject().H(context);
        }
        return null;
    }

    @Override // mp.j
    @Nullable
    public ImageData getIcon() {
        if (j()) {
            return getLoadedAdObject().getIcon();
        }
        return null;
    }

    @Override // mp.j
    @Nullable
    public ImageData getMainImage() {
        if (j()) {
            return getLoadedAdObject().getMainImage();
        }
        return null;
    }

    public float h() {
        if (j()) {
            return getLoadedAdObject().I();
        }
        return -1.0f;
    }

    @Override // mp.j
    public boolean hasVideo() {
        if (j() && getLoadedAdObject().hasVideo()) {
            return true;
        }
        return false;
    }

    @Nullable
    public String i() {
        if (j()) {
            return getLoadedAdObject().J();
        }
        return null;
    }

    @Override // io.bidmachine.BidMachineAd
    public boolean isDuplicateShowDisabled() {
        return false;
    }

    public void k(@NonNull ViewGroup viewGroup, @Nullable View view, @Nullable NativeMediaView nativeMediaView, @Nullable Set<View> set) {
        d prepareShow = prepareShow();
        if (prepareShow == null) {
            return;
        }
        prepareShow.P(viewGroup, view, nativeMediaView, set, this.rendererConfiguration);
    }

    public void l() {
        if (j()) {
            getLoadedAdObject().U();
        }
    }
}
