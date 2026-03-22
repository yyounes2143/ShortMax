package io.bidmachine.ads.networks.nast;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.bidmachine.ContextProvider;
import io.bidmachine.ImageDataImpl;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.VisibilitySource;
import mp.i;
import xq.k;
import xq.l;
import xq.m;
import xq.n;
/* compiled from: NastNative.java */
/* loaded from: classes7.dex */
class a extends l {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NastNative.java */
    /* loaded from: classes7.dex */
    public static final class b extends i {
        private b() {
        }

        @Override // mp.i, mp.j
        public boolean hasVideo() {
            if (TextUtils.isEmpty(o()) && TextUtils.isEmpty(g())) {
                return false;
            }
            return true;
        }
    }

    @Override // xq.b
    /* renamed from: i */
    public void b(@NonNull ContextProvider contextProvider, @NonNull m mVar, @NonNull n nVar, @NonNull k kVar, @NonNull NetworkAdUnit networkAdUnit) throws Throwable {
        io.bidmachine.ads.networks.nast.b bVar = new io.bidmachine.ads.networks.nast.b(kVar);
        if (!bVar.d(nVar, mVar)) {
            return;
        }
        mVar.setVisibilitySource(VisibilitySource.BidMachine);
        i w10 = new b().y(bVar.f53875b).s(bVar.f53876c).q(bVar.f53877d).t(new ImageDataImpl(bVar.f53879f)).u(new ImageDataImpl(bVar.f53880g)).A(bVar.f53881h).z(bVar.f53882i).r(bVar.f53883j).v(false).p(bVar.f53884k).w(bVar.f53885l);
        Float f10 = bVar.f53878e;
        if (f10 != null) {
            w10.x(f10.floatValue());
        }
        mVar.a(w10);
    }
}
