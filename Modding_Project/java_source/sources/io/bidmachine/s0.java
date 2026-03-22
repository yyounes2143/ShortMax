package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.ApiRequest;
import io.bidmachine.a5;
import io.bidmachine.core.NetworkRequest;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdResponseLoader.java */
/* loaded from: classes7.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final fr.j f58598a = new fr.j("AdResponseLoader");

    /* renamed from: b  reason: collision with root package name */
    private final String f58599b;

    /* renamed from: c  reason: collision with root package name */
    private a f58600c;

    /* renamed from: d  reason: collision with root package name */
    private b f58601d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdResponseLoader.java */
    /* loaded from: classes7.dex */
    public interface a {
        void a(@Nullable fr.a aVar);

        void b(@NonNull u uVar);

        void onCancel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdResponseLoader.java */
    /* loaded from: classes7.dex */
    public static class b implements NetworkRequest.b<Response, fr.a>, NetworkRequest.c {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f58602a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final String f58603b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final AdRequestParameters f58604c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final NetworkAdUnitManager f58605d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private final WeakReference<a> f58606e;
        @NonNull

        /* renamed from: f  reason: collision with root package name */
        private final AtomicBoolean f58607f = new AtomicBoolean(false);
        @NonNull

        /* renamed from: g  reason: collision with root package name */
        private final AtomicBoolean f58608g = new AtomicBoolean(false);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AdResponseLoader.java */
        /* loaded from: classes7.dex */
        public class a implements a5.a<u> {
            a() {
            }

            @Override // io.bidmachine.a5.a
            public void a(@NonNull fr.a aVar) {
                b.this.f58605d.notifyNetworkAuctionResult(null);
                b.this.f58605d.notifyNetworkClearAuction();
                b.this.l(aVar);
            }

            @Override // io.bidmachine.a5.a
            /* renamed from: b */
            public void onSuccess(@NonNull u uVar) {
                AdResponseStatus adResponseStatus;
                boolean f10 = b.this.f();
                if (f10) {
                    adResponseStatus = AdResponseStatus.Idle;
                } else {
                    adResponseStatus = AdResponseStatus.Busy;
                }
                uVar.Z(adResponseStatus);
                w0.e().p(uVar);
                if (f10) {
                    uVar.X();
                    return;
                }
                b.this.f58605d.notifyNetworkAuctionResult(uVar.J());
                b.this.m(uVar);
            }
        }

        public b(@NonNull String str, @NonNull String str2, @NonNull AdRequestParameters adRequestParameters, @NonNull NetworkAdUnitManager networkAdUnitManager, @NonNull a aVar) {
            this.f58602a = str;
            this.f58603b = str2;
            this.f58604c = adRequestParameters;
            this.f58605d = networkAdUnitManager;
            this.f58606e = new WeakReference<>(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean f() {
            if (!this.f58608g.get() && !this.f58607f.get() && this.f58606e.get() != null) {
                return false;
            }
            return true;
        }

        @Nullable
        private a j() {
            if (f()) {
                return null;
            }
            this.f58607f.set(true);
            return this.f58606e.get();
        }

        private void k() {
            a j10 = j();
            if (j10 != null) {
                j10.onCancel();
            }
            g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(@Nullable fr.a aVar) {
            a j10 = j();
            if (j10 != null) {
                j10.a(aVar);
            }
            g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(@NonNull u uVar) {
            a j10 = j();
            if (j10 != null) {
                j10.b(uVar);
            } else {
                uVar.Z(AdResponseStatus.Idle);
            }
            g();
        }

        public void g() {
            this.f58608g.set(true);
            this.f58606e.clear();
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: h */
        public void a(@Nullable fr.a aVar) {
            x4.b().c(this.f58602a);
            this.f58605d.notifyNetworkAuctionResult(null);
            this.f58605d.notifyNetworkClearAuction();
            u m10 = w0.e().m(this.f58604c);
            if (m10 != null) {
                m(m10);
            } else {
                l(aVar);
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: i */
        public void onSuccess(@Nullable Response response) {
            x4.b().c(this.f58602a);
            UrlProvider.setAuctionUrlFromSuccessRequest(this.f58603b);
            a5.a(this.f58604c, this.f58605d, response, new a());
        }

        @Override // io.bidmachine.core.NetworkRequest.c
        public void onCanceled() {
            x4.b().c(this.f58602a);
            this.f58605d.notifyNetworkClearAuction();
            k();
        }
    }

    public s0(@NonNull String str) {
        this.f58599b = str;
    }

    public void a() {
        io.bidmachine.core.a.c(this.f58598a, "cancel");
        this.f58600c = null;
        b bVar = this.f58601d;
        if (bVar != null) {
            bVar.g();
            this.f58601d = null;
        }
    }

    public void b(@NonNull AdRequestParameters adRequestParameters, @NonNull NetworkAdUnitManager networkAdUnitManager, @NonNull ApiRequest.Builder<?, Response> builder, @NonNull a aVar) {
        io.bidmachine.core.a.c(this.f58598a, "load");
        b bVar = this.f58601d;
        if (bVar != null) {
            bVar.g();
        }
        this.f58600c = aVar;
        b bVar2 = new b(this.f58599b, builder.getUrl(), adRequestParameters, networkAdUnitManager, aVar);
        this.f58601d = bVar2;
        builder.setCallback(bVar2);
        builder.setCancelCallback(this.f58601d);
        x4.b().a(this.f58599b, builder.request());
    }
}
