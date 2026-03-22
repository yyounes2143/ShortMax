package io.bidmachine.ads.networks.gam_dynamic;

import android.app.Activity;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.ContextProvider;
import io.bidmachine.RendererConfiguration;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMFullscreenAd.java */
/* loaded from: classes7.dex */
public abstract class l extends xq.h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final o f53790a;
    @Nullable
    @VisibleForTesting(otherwise = 4)

    /* renamed from: b  reason: collision with root package name */
    protected x f53791b;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(@NonNull o oVar) {
        this.f53790a = oVar;
    }

    @Override // xq.b
    @Nullable
    public Map<String, Object> a() {
        x xVar = this.f53791b;
        if (xVar != null) {
            return xVar.getCustomParamsMap();
        }
        return null;
    }

    @Override // xq.b
    @CallSuper
    public void d() {
        x xVar = this.f53791b;
        if (xVar != null) {
            xVar.i();
            this.f53791b = null;
        }
    }

    @Override // xq.b
    public void h() {
        super.h();
        x xVar = this.f53791b;
        if (xVar != null) {
            xVar.D();
        }
    }

    @Override // xq.h
    public void k(@NonNull ContextProvider contextProvider, @NonNull xq.i iVar, @Nullable RendererConfiguration rendererConfiguration) throws Throwable {
        Activity activity = contextProvider.getActivity();
        if (activity == null) {
            iVar.onAdShowFailed(fr.a.i("Activity is null"));
            return;
        }
        x xVar = this.f53791b;
        if (xVar == null) {
            iVar.onAdShowFailed(fr.a.i("Fullscreen object is null"));
        } else if (xVar.p()) {
            iVar.onAdShowFailed(fr.a.i("Fullscreen object is expired"));
        } else if (!this.f53791b.q()) {
            iVar.onAdShowFailed(fr.a.i("Fullscreen object not loaded"));
        } else {
            hm.o l10 = l();
            if (l10 == null) {
                iVar.onAdShowFailed(fr.a.i("Fullscreen listener is null"));
            } else {
                this.f53791b.M(activity, l10);
            }
        }
    }

    @Nullable
    protected abstract hm.o l();
}
