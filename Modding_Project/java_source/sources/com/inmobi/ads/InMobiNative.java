package com.inmobi.ads;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;
import com.inmobi.media.A5;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.AbstractC3221w5;
import com.inmobi.media.C2903c8;
import com.inmobi.media.H8;
import com.inmobi.media.InterfaceC3269z5;
import com.inmobi.media.S5;
import com.inmobi.media.U3;
import com.inmobi.media.U7;
import com.inmobi.media.Uc;
import com.inmobi.media.V7;
import com.inmobi.media.V8;
import com.inmobi.media.Vc;
import com.inmobi.media.Wa;
import com.inmobi.media.Yd;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiNative {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: j  reason: collision with root package name */
    public static final String f23407j = "InMobiNative";

    /* renamed from: a  reason: collision with root package name */
    public final V8 f23408a;

    /* renamed from: b  reason: collision with root package name */
    public final NativeCallbacks f23409b;

    /* renamed from: c  reason: collision with root package name */
    public U7 f23410c;

    /* renamed from: d  reason: collision with root package name */
    public VideoEventListener f23411d;

    /* renamed from: e  reason: collision with root package name */
    public WeakReference f23412e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f23413f;

    /* renamed from: g  reason: collision with root package name */
    public final Wa f23414g;

    /* renamed from: h  reason: collision with root package name */
    public WeakReference f23415h;

    /* renamed from: i  reason: collision with root package name */
    public LockScreenListener f23416i;

    @Metadata
    /* loaded from: classes5.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata
    /* loaded from: classes5.dex */
    public interface LockScreenListener {
        void onActionRequired(@Nullable InMobiNative inMobiNative);
    }

    @Metadata
    /* loaded from: classes5.dex */
    public static final class NativeCallbacks extends H8 {

        /* renamed from: b  reason: collision with root package name */
        private boolean f23417b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NativeCallbacks(@NotNull InMobiNative inMobiNative) {
            super(inMobiNative);
            Intrinsics.checkNotNullParameter(inMobiNative, "inMobiNative");
            this.f23417b = true;
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public byte getType() {
            return (byte) 0;
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdClicked(@NotNull Map<Object, ? extends Object> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            InMobiNative ad2 = getNativeRef().get();
            if (ad2 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = ad2.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad2, "ad");
                ((V7) mPubListener).f24310a.onAdClicked(ad2);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdDismissed() {
            InMobiNative ad2 = getNativeRef().get();
            if (ad2 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = ad2.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad2, "ad");
                ((V7) mPubListener).f24310a.onAdFullScreenDismissed(ad2);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdDisplayed(@NotNull AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            InMobiNative ad2 = getNativeRef().get();
            if (ad2 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = ad2.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad2, "ad");
                ((V7) mPubListener).f24310a.onAdFullScreenDisplayed(ad2);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchFailed(@NotNull InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            onAdLoadFailed(status);
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdFetchSuccessful(@NotNull AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = inMobiNative.getMPubListener();
            if (mPubListener != null) {
                mPubListener.a(inMobiNative, info);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdImpressed() {
            InMobiNative ad2 = getNativeRef().get();
            if (ad2 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = ad2.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad2, "ad");
                ((V7) mPubListener).f24310a.onAdImpressed(ad2);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdImpression(@Nullable Yd yd2) {
            U7 u72;
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative != null) {
                u72 = inMobiNative.getMPubListener();
            } else {
                u72 = null;
            }
            if (u72 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                if (yd2 != null) {
                    yd2.c();
                    return;
                }
                return;
            }
            u72.a(inMobiNative);
            if (yd2 != null) {
                yd2.d();
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdLoadFailed(@NotNull InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else if (!this.f23417b) {
                this.f23417b = true;
                U7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    mPubListener.a(inMobiNative, status);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdLoadSucceeded(@NotNull AdMetaInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
            } else if (!this.f23417b) {
                this.f23417b = true;
                U7 mPubListener = inMobiNative.getMPubListener();
                if (mPubListener != null) {
                    mPubListener.b(inMobiNative, info);
                }
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAdWillDisplay() {
            InMobiNative ad2 = getNativeRef().get();
            if (ad2 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            LockScreenListener lockScreenListener = ad2.f23416i;
            if (lockScreenListener != null) {
                lockScreenListener.onActionRequired(ad2);
            }
            U7 mPubListener = ad2.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad2, "ad");
                ((V7) mPubListener).f24310a.onAdFullScreenWillDisplay(ad2);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onAudioStateChanged(boolean z10) {
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            VideoEventListener videoEventListener = inMobiNative.f23411d;
            if (videoEventListener != null) {
                videoEventListener.onAudioStateChanged(inMobiNative, z10);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onRequestPayloadCreated(@NotNull byte[] request) {
            Intrinsics.checkNotNullParameter(request, "request");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = inMobiNative.getMPubListener();
            if (mPubListener != null) {
                ((V7) mPubListener).f24310a.onRequestPayloadCreated(request);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onRequestPayloadCreationFailed(@NotNull InMobiAdRequestStatus status) {
            Intrinsics.checkNotNullParameter(status, "reason");
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            U7 mPubListener = inMobiNative.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(status, "status");
                ((V7) mPubListener).f24310a.onRequestPayloadCreationFailed(status);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onUserLeftApplication() {
            InMobiNative ad2 = getNativeRef().get();
            if (ad2 == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            LockScreenListener lockScreenListener = ad2.f23416i;
            if (lockScreenListener != null) {
                lockScreenListener.onActionRequired(ad2);
            }
            U7 mPubListener = ad2.getMPubListener();
            if (mPubListener != null) {
                Intrinsics.checkNotNullParameter(ad2, "ad");
                ((V7) mPubListener).f24310a.onUserWillLeaveApplication(ad2);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onVideoCompleted() {
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            VideoEventListener videoEventListener = inMobiNative.f23411d;
            if (videoEventListener != null) {
                videoEventListener.onVideoCompleted(inMobiNative);
            }
        }

        @Override // com.inmobi.ads.controllers.PublisherCallbacks
        public void onVideoSkipped() {
            InMobiNative inMobiNative = getNativeRef().get();
            if (inMobiNative == null) {
                String str = InMobiNative.f23407j;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                AbstractC2984h7.a((byte) 1, str, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            VideoEventListener videoEventListener = inMobiNative.f23411d;
            if (videoEventListener != null) {
                videoEventListener.onVideoSkipped(inMobiNative);
            }
        }

        public final void resetHasGivenCallbackFlag() {
            this.f23417b = false;
        }
    }

    public InMobiNative(@NotNull Context context, long j10, @NotNull NativeAdEventListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Wa wa2 = new Wa();
        this.f23414g = wa2;
        if (Uc.q()) {
            wa2.f24337a = j10;
            this.f23415h = new WeakReference(context);
            this.f23410c = new V7(listener);
            NativeCallbacks nativeCallbacks = new NativeCallbacks(this);
            this.f23409b = nativeCallbacks;
            this.f23408a = new V8(nativeCallbacks);
            return;
        }
        String TAG = f23407j;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        throw new SdkNotInitializedException(TAG);
    }

    public final boolean a(boolean z10) {
        if (!z10 && this.f23410c == null) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Listener supplied is null, your call is ignored.");
            return false;
        } else if (this.f23415h.get() != null) {
            return true;
        } else {
            String TAG2 = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            AbstractC2984h7.a((byte) 1, TAG2, "Context supplied is null, your call is ignored.");
            return false;
        }
    }

    public final void destroy() {
        View view;
        try {
            WeakReference weakReference = this.f23412e;
            if (weakReference == null) {
                view = null;
            } else {
                Intrinsics.checkNotNull(weakReference);
                view = (View) weakReference.get();
            }
            if (view != null) {
                ((ViewGroup) view).removeAllViews();
            }
            this.f23408a.x();
            this.f23410c = null;
            this.f23411d = null;
            this.f23413f = false;
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Failed to destroy ad; SDK encountered an unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @Nullable
    public final String getAdCtaText() {
        try {
            return this.f23408a.y();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get the ctaText; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    @Nullable
    public final String getAdDescription() {
        try {
            return this.f23408a.z();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get the description; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    @Nullable
    public final String getAdIconUrl() {
        try {
            return this.f23408a.A();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get the iconUrl; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    @Nullable
    public final String getAdLandingPageUrl() {
        try {
            return this.f23408a.B();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get the adLandingPageUrl; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    public final float getAdRating() {
        try {
            return this.f23408a.C();
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            AbstractC2984h7.a((byte) 1, "InMobi", "Could not get rating; SDK encountered an unexpected error");
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return 0.0f;
        }
    }

    @Nullable
    public final String getAdTitle() {
        try {
            return this.f23408a.D();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get the ad title; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    @Nullable
    public final JSONObject getCustomAdContent() {
        try {
            return this.f23408a.E();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get the ad customJson ; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    @Nullable
    public final U7 getMPubListener() {
        return this.f23410c;
    }

    @Nullable
    public final View getPrimaryViewOfWidth(@Nullable Context context, @Nullable View view, @Nullable ViewGroup viewGroup, int i10) {
        C2903c8 c2903c8;
        try {
            if (context == null) {
                String TAG = f23407j;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                AbstractC2984h7.a((byte) 1, TAG, "View can not be rendered using null context");
                return null;
            }
            if (this.f23408a.j() == null) {
                c2903c8 = null;
            } else {
                c2903c8 = (C2903c8) this.f23408a.j();
            }
            if (c2903c8 == null) {
                String TAG2 = f23407j;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                AbstractC2984h7.a((byte) 1, TAG2, "InMobiNative is not initialized. Ignoring InMobiNative.getPrimaryView()");
                return null;
            }
            this.f23415h = new WeakReference(context);
            c2903c8.a(context);
            Intrinsics.checkNotNull(viewGroup);
            WeakReference weakReference = new WeakReference(c2903c8.a(view, viewGroup, i10));
            this.f23412e = weakReference;
            View view2 = (View) weakReference.get();
            if (view2 == null) {
                String TAG3 = f23407j;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                return null;
            }
            this.f23413f = true;
            return view2;
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            AbstractC2984h7.a((byte) 1, "InMobi", "Could not pause ad; SDK encountered an unexpected error");
            String TAG4 = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            return null;
        }
    }

    @ms.c
    public final void getSignals() {
        if (a(false)) {
            this.f23409b.resetHasGivenCallbackFlag();
            Context context = (Context) this.f23415h.get();
            if (context != null) {
                this.f23408a.a(this.f23414g, context, false, "getToken");
            }
            this.f23408a.a(this.f23409b);
        }
    }

    public final boolean isAppDownload() {
        try {
            return this.f23408a.G();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get isAppDownload; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return false;
        }
    }

    public final boolean isReady() {
        return this.f23408a.F();
    }

    @Nullable
    public final Boolean isVideo() {
        try {
            return this.f23408a.I();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not get isVideo; SDK encountered unexpected error");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    public final void load(@Nullable byte[] bArr) {
        if (a(false)) {
            if (Build.VERSION.SDK_INT >= 29) {
                U3.b((Context) this.f23415h.get());
            }
            this.f23414g.f24341e = "AB";
            Context context = (Context) this.f23415h.get();
            if (context != null) {
                this.f23408a.a(this.f23414g, context, true, "native");
            }
            this.f23409b.resetHasGivenCallbackFlag();
            this.f23408a.a(bArr, this.f23409b);
        }
    }

    public final void pause() {
        try {
            this.f23408a.K();
        } catch (Exception unused) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not pause ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    public final void reportAdClickAndOpenLandingPage() {
        try {
            this.f23408a.L();
        } catch (Exception e10) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "reportAdClickAndOpenLandingPage failed; SDK encountered unexpected error");
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void resume() {
        try {
            this.f23408a.M();
        } catch (Exception unused) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "Could not resume ad; SDK encountered an unexpected error");
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
    }

    public final void setContentUrl(@Nullable String str) {
        this.f23414g.f24342f = str;
    }

    public final void setExtras(@Nullable Map<String, String> map) {
        if (map != null) {
            Vc.a(map.get("tp"));
            Vc.b(map.get("tp-v"));
        }
        this.f23414g.f24339c = map;
    }

    public final void setKeywords(@Nullable String str) {
        this.f23414g.f24338b = str;
    }

    public final void setListener(@NotNull NativeAdEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f23410c = new V7(listener);
    }

    public final void setMPubListener(@Nullable U7 u72) {
        this.f23410c = u72;
    }

    @VisibleForTesting
    public final void setPrimaryViewReturned(boolean z10) {
        this.f23413f = z10;
    }

    public final void setVideoEventListener(@NotNull VideoEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f23411d = listener;
    }

    public final void showOnLockScreen(@NotNull LockScreenListener lockScreenListener) {
        Intrinsics.checkNotNullParameter(lockScreenListener, "lockScreenListener");
        if (this.f23415h.get() == null) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "InMobiNative is not initialized. Provided context is null. Ignoring showOnLockScreen");
            return;
        }
        try {
            V8 v82 = this.f23408a;
            Wa wa2 = this.f23414g;
            Object obj = this.f23415h.get();
            Intrinsics.checkNotNull(obj);
            v82.a(wa2, (Context) obj);
            this.f23416i = lockScreenListener;
        } catch (Exception unused) {
            String TAG2 = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            AbstractC2984h7.a((byte) 1, TAG2, "SDK encountered unexpected error in showOnLockScreen");
        }
    }

    public final void takeAction() {
        try {
            this.f23408a.N();
        } catch (Exception unused) {
            String TAG = f23407j;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, "SDK encountered unexpected error in takeAction");
        }
    }

    public final void load() {
        try {
            if (a(true)) {
                this.f23409b.resetHasGivenCallbackFlag();
                if (this.f23413f) {
                    V8 v82 = this.f23408a;
                    v82.a(v82.j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
                    String TAG = f23407j;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    AbstractC2984h7.a((byte) 1, TAG, "You can call load() on an instance of InMobiNative only once if the ad request has been successful. Ignoring InMobiNative.load()");
                    return;
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    U3.b((Context) this.f23415h.get());
                }
                this.f23414g.f24341e = "NonAB";
                Context context = (Context) this.f23415h.get();
                if (context != null) {
                    this.f23408a.a(this.f23414g, context, true, "native");
                }
                this.f23408a.J();
            }
        } catch (Exception e10) {
            this.f23408a.a((short) 2192);
            U7 u72 = this.f23410c;
            if (u72 != null) {
                u72.a(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
            InterfaceC3269z5 p10 = this.f23408a.p();
            if (p10 != null) {
                String TAG2 = f23407j;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) p10).a(TAG2, "Load failed with unexpected error: ", e10);
            }
        }
    }

    public final void load(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (a(true)) {
            this.f23415h = new WeakReference(context);
            load();
        }
    }
}
