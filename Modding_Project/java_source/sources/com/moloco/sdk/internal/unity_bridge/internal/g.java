package com.moloco.sdk.internal.unity_bridge.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.unity_bridge.MolocoUnityLoadCallback;
import com.moloco.sdk.internal.unity_bridge.MolocoUnityShowCallback;
import com.moloco.sdk.internal.unity_bridge.internal.g;
import com.moloco.sdk.publisher.AdLoad;
import com.moloco.sdk.publisher.InterstitialAd;
import com.moloco.sdk.publisher.InterstitialAdShowListener;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoAd;
import com.moloco.sdk.publisher.MolocoAdError;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final as.a<String, InterstitialAd> f33568a = new as.a<>(0, 1, null);

    /* loaded from: classes6.dex */
    public static final class a implements AdLoad.Listener {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f33570b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ InterstitialAd f33571c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ Handler f33572d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ MolocoUnityLoadCallback f33573e;

        public a(String str, InterstitialAd interstitialAd, Handler handler, MolocoUnityLoadCallback molocoUnityLoadCallback) {
            this.f33570b = str;
            this.f33571c = interstitialAd;
            this.f33572d = handler;
            this.f33573e = molocoUnityLoadCallback;
        }

        public static final void a(MolocoUnityLoadCallback molocoUnityLoadCallback, String str) {
            molocoUnityLoadCallback.onAdLoadSuccess(str);
        }

        public static final void b(MolocoUnityLoadCallback molocoUnityLoadCallback, String str, MolocoAdError molocoAdError) {
            molocoUnityLoadCallback.onAdLoadFailed(str, molocoAdError.toString());
        }

        @Override // com.moloco.sdk.publisher.AdLoad.Listener
        public void onAdLoadFailed(final MolocoAdError molocoAdError) {
            Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
            Handler handler = this.f33572d;
            final MolocoUnityLoadCallback molocoUnityLoadCallback = this.f33573e;
            final String str = this.f33570b;
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.a.b(MolocoUnityLoadCallback.this, str, molocoAdError);
                }
            });
        }

        @Override // com.moloco.sdk.publisher.AdLoad.Listener
        public void onAdLoadSuccess(MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            g.this.f33568a.put(this.f33570b, this.f33571c);
            Handler handler = this.f33572d;
            final MolocoUnityLoadCallback molocoUnityLoadCallback = this.f33573e;
            final String str = this.f33570b;
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.a.a(MolocoUnityLoadCallback.this, str);
                }
            });
        }
    }

    /* loaded from: classes6.dex */
    public static final class b implements InterstitialAdShowListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Handler f33574a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ MolocoUnityShowCallback f33575b;

        public b(Handler handler, MolocoUnityShowCallback molocoUnityShowCallback) {
            this.f33574a = handler;
            this.f33575b = molocoUnityShowCallback;
        }

        public static final void a(MolocoUnityShowCallback molocoUnityShowCallback, MolocoAd molocoAd) {
            molocoUnityShowCallback.onAdClicked(molocoAd.getAdUnitId());
        }

        public static final void b(MolocoUnityShowCallback molocoUnityShowCallback, MolocoAdError molocoAdError) {
            molocoUnityShowCallback.onAdShowFailed(molocoAdError.getAdUnitId(), molocoAdError.toString());
        }

        public static final void c(MolocoUnityShowCallback molocoUnityShowCallback, MolocoAd molocoAd) {
            molocoUnityShowCallback.onAdHidden(molocoAd.getAdUnitId());
        }

        public static final void d(MolocoUnityShowCallback molocoUnityShowCallback, MolocoAd molocoAd) {
            molocoUnityShowCallback.onAdShowSuccess(molocoAd.getAdUnitId());
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdClicked(final MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            Handler handler = this.f33574a;
            final MolocoUnityShowCallback molocoUnityShowCallback = this.f33575b;
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.j
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.a(MolocoUnityShowCallback.this, molocoAd);
                }
            });
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdHidden(final MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            Handler handler = this.f33574a;
            final MolocoUnityShowCallback molocoUnityShowCallback = this.f33575b;
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.h
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.c(MolocoUnityShowCallback.this, molocoAd);
                }
            });
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdShowFailed(final MolocoAdError molocoAdError) {
            Intrinsics.checkNotNullParameter(molocoAdError, "molocoAdError");
            Handler handler = this.f33574a;
            final MolocoUnityShowCallback molocoUnityShowCallback = this.f33575b;
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.i
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.b(MolocoUnityShowCallback.this, molocoAdError);
                }
            });
        }

        @Override // com.moloco.sdk.publisher.AdShowListener
        public void onAdShowSuccess(final MolocoAd molocoAd) {
            Intrinsics.checkNotNullParameter(molocoAd, "molocoAd");
            Handler handler = this.f33574a;
            final MolocoUnityShowCallback molocoUnityShowCallback = this.f33575b;
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.k
                @Override // java.lang.Runnable
                public final void run() {
                    g.b.d(MolocoUnityShowCallback.this, molocoAd);
                }
            });
        }
    }

    public static final Unit c(Handler handler, g gVar, final String str, String str2, final MolocoUnityLoadCallback molocoUnityLoadCallback, InterstitialAd interstitialAd, final MolocoAdError.AdCreateError adCreateError) {
        if (adCreateError != null) {
            handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.c
                @Override // java.lang.Runnable
                public final void run() {
                    g.e(MolocoUnityLoadCallback.this, str, adCreateError);
                }
            });
            return Unit.f60915a;
        }
        Intrinsics.checkNotNull(interstitialAd, "null cannot be cast to non-null type com.moloco.sdk.publisher.InterstitialAd");
        gVar.g(interstitialAd, str, str2, handler, molocoUnityLoadCallback);
        return Unit.f60915a;
    }

    public static final void d(MolocoUnityLoadCallback molocoUnityLoadCallback, String str) {
        molocoUnityLoadCallback.onAdLoadSuccess(str);
    }

    public static final void e(MolocoUnityLoadCallback molocoUnityLoadCallback, String str, MolocoAdError.AdCreateError adCreateError) {
        molocoUnityLoadCallback.onAdLoadFailed(str, adCreateError.toString());
    }

    public static final void f(MolocoUnityShowCallback molocoUnityShowCallback, String str) {
        molocoUnityShowCallback.onAdShowFailed(str, "Ad cannot be shown as it was not loaded");
    }

    public final Handler a() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return new Handler(myLooper);
        }
        throw new IllegalStateException("Can't create handler inside thread " + Thread.currentThread() + " that has not called Looper.prepare()");
    }

    public final void g(InterstitialAd interstitialAd, final String str, String str2, Handler handler, final MolocoUnityLoadCallback molocoUnityLoadCallback) {
        InterstitialAd interstitialAd2 = this.f33568a.get(str);
        if (interstitialAd2 != null) {
            if (interstitialAd2.isLoaded()) {
                handler.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.d(MolocoUnityLoadCallback.this, str);
                    }
                });
                return;
            }
            interstitialAd2.destroy();
        }
        interstitialAd.load(str2, new a(str, interstitialAd, handler, molocoUnityLoadCallback));
    }

    public final void h(@NotNull final String adUnitId, @NotNull final MolocoUnityShowCallback callback) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Handler a10 = a();
        InterstitialAd interstitialAd = this.f33568a.get(adUnitId);
        if (interstitialAd != null && interstitialAd.isLoaded()) {
            interstitialAd.show(new b(a10, callback));
            return;
        }
        if (interstitialAd != null) {
            interstitialAd.destroy();
        }
        a10.post(new Runnable() { // from class: com.moloco.sdk.internal.unity_bridge.internal.b
            @Override // java.lang.Runnable
            public final void run() {
                g.f(MolocoUnityShowCallback.this, adUnitId);
            }
        });
    }

    public final void i(@NotNull String mediation, @NotNull final String adUnitId, @NotNull final String bidResponse, @NotNull final MolocoUnityLoadCallback unityLoadCallback) {
        Intrinsics.checkNotNullParameter(mediation, "mediation");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        Intrinsics.checkNotNullParameter(unityLoadCallback, "unityLoadCallback");
        final Handler a10 = a();
        Moloco.createInterstitial$default(new MediationInfo(mediation), adUnitId, null, new Function2() { // from class: com.moloco.sdk.internal.unity_bridge.internal.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return g.c(a10, this, adUnitId, bidResponse, unityLoadCallback, (InterstitialAd) obj, (MolocoAdError.AdCreateError) obj2);
            }
        }, 4, null);
    }
}
