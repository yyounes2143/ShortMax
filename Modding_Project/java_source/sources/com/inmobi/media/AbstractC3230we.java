package com.inmobi.media;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CallSuper;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.WatermarkData;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.media.AbstractC3230we;
import com.inmobi.media.S0;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.we  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3230we extends F0 {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final C3214ve f25393h = new C3214ve();

    /* renamed from: i  reason: collision with root package name */
    private static final String f25394i = "we";
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final String f25395j = "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: ";
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final String f25396k = "Ad show is already called. Please wait for the the ad to be shown.";
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final String f25397l = "preload() and load() cannot be called on the same instance, please use a different instance.";
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final String f25398m = "Please make an ad request first in order to start loading the ad.";
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final String f25399n = "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: ";

    /* renamed from: a  reason: collision with root package name */
    private byte f25400a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Boolean f25401b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private PublisherCallbacks f25402c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Handler f25403d = new Handler(Looper.getMainLooper());
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private AdMetaInfo f25404e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private InterfaceC3269z5 f25405f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private WatermarkData f25406g;

    public final void a(byte b10) {
        this.f25400a = b10;
    }

    public final void b(@Nullable PublisherCallbacks publisherCallbacks) {
        this.f25402c = publisherCallbacks;
    }

    @Override // com.inmobi.media.F0
    public void c(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdLoadSucceeded " + this);
        }
        this.f25404e = info;
        S0 j10 = j();
        if (j10 != null) {
            j10.b((byte) 1);
        }
    }

    public final void d(@Nullable AdMetaInfo adMetaInfo) {
        this.f25404e = adMetaInfo;
    }

    @Override // com.inmobi.media.F0
    public void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdWillShow " + this);
        }
        byte b10 = this.f25400a;
        if (b10 != 4 && b10 != 5) {
            this.f25403d.post(new Runnable() { // from class: ub.a8
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC3230we.b(AbstractC3230we.this);
                }
            });
            InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
            if (interfaceC3269z52 != null) {
                String TAG2 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).d(TAG2, "AdManager state - WILL_DISPLAY");
            }
            this.f25400a = (byte) 4;
        }
    }

    @Override // com.inmobi.media.F0
    public void h() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onUserLeftApplication " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.w7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.c(AbstractC3230we.this);
            }
        });
    }

    public abstract S0 j();

    @NotNull
    public final JSONObject k() {
        JSONObject bidInfo;
        AdMetaInfo adMetaInfo = this.f25404e;
        if (adMetaInfo == null || (bidInfo = adMetaInfo.getBidInfo()) == null) {
            return new JSONObject();
        }
        return bidInfo;
    }

    @Nullable
    public final PublisherCallbacks l() {
        return this.f25402c;
    }

    @NotNull
    public final String m() {
        String creativeID;
        AdMetaInfo adMetaInfo = this.f25404e;
        if (adMetaInfo == null || (creativeID = adMetaInfo.getCreativeID()) == null) {
            return "";
        }
        return creativeID;
    }

    @Nullable
    public final AdMetaInfo n() {
        return this.f25404e;
    }

    public final byte o() {
        if (v()) {
            return (byte) 2;
        }
        return (byte) 1;
    }

    @Nullable
    public final InterfaceC3269z5 p() {
        return this.f25405f;
    }

    public final byte q() {
        return this.f25400a;
    }

    @NotNull
    public final Handler s() {
        return this.f25403d;
    }

    @Nullable
    public final WatermarkData t() {
        return this.f25406g;
    }

    @Nullable
    public final Boolean u() {
        return this.f25401b;
    }

    public final boolean v() {
        PublisherCallbacks publisherCallbacks = this.f25402c;
        if (publisherCallbacks != null && publisherCallbacks.getType() == 1) {
            return true;
        }
        return false;
    }

    public void w() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "submitAdLoadCalled " + this);
        }
        S0 j10 = j();
        if (j10 != null) {
            j10.t0();
        }
    }

    public final void a(@Nullable Boolean bool) {
        this.f25401b = bool;
    }

    public final void b(@Nullable WatermarkData watermarkData) {
        this.f25406g = watermarkData;
    }

    public final void a(@Nullable InterfaceC3269z5 interfaceC3269z5) {
        this.f25405f = interfaceC3269z5;
    }

    public final void b(@Nullable final S0 s02, @NotNull final InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onLoadFailure " + this);
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
        if (interfaceC3269z52 != null) {
            String TAG2 = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).d(TAG2, "AdManager state - LOAD_FAILED");
        }
        this.f25400a = (byte) 3;
        this.f25403d.post(new Runnable() { // from class: ub.u7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(S0.this, this, status);
            }
        });
    }

    public static final void a(S0 s02, AbstractC3230we this$0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        if (s02 != null) {
            s02.b((byte) 1);
        }
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onAdLoadFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdLoadFailed(status);
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f25405f;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a();
        }
    }

    public static final void c(AbstractC3230we this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onUserLeftApplication");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onUserLeftApplication();
        }
    }

    @Override // com.inmobi.media.F0
    public void b(AdMetaInfo info) {
        S0 j10;
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdFetchSuccess " + this);
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
        if (interfaceC3269z52 != null) {
            String TAG2 = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).d(TAG2, "AdManager state - FETCHED");
        }
        this.f25400a = (byte) 7;
        if (!v() || (j10 = j()) == null) {
            return;
        }
        j10.b((byte) 2);
    }

    @Override // com.inmobi.media.F0
    public void a(@NotNull final InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdFetchFailed " + this);
        }
        this.f25400a = (byte) 3;
        this.f25403d.post(new Runnable() { // from class: ub.z7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this, status);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(status, "$status");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onAdFetchFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdFetchFailed(status);
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f25405f;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a();
        }
    }

    public static final void b(AbstractC3230we this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onAdWillShow");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdWillDisplay();
        }
    }

    @Override // com.inmobi.media.F0
    @CallSuper
    public void a(@NotNull final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdDisplayed " + this);
        }
        if (this.f25400a != 5) {
            this.f25404e = info;
            this.f25403d.post(new Runnable() { // from class: ub.s7
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC3230we.a(AbstractC3230we.this, info);
                }
            });
            InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
            if (interfaceC3269z52 != null) {
                String TAG2 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).d(TAG2, "AdManager state - DISPLAYED");
            }
            this.f25400a = (byte) 5;
        }
    }

    @Override // com.inmobi.media.F0
    public void b(@NotNull final Map<Object, ? extends Object> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdRewardActionCompleted " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.y7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.b(AbstractC3230we.this, rewards);
            }
        });
    }

    public static final void b(AbstractC3230we this$0, Map rewards) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rewards, "$rewards");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onRewardsUnlocked");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRewardsUnlocked(rewards);
        }
    }

    public static /* synthetic */ void r() {
    }

    @Override // com.inmobi.media.F0
    public void b(@NotNull final InMobiAdRequestStatus reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onRequestCreationFailed " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.d8
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.b(AbstractC3230we.this, reason);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onAdDisplayed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdDisplayed(info);
        }
    }

    public static final void b(AbstractC3230we this$0, InMobiAdRequestStatus reason) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(reason, "$reason");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onRequestPayloadCreationFailed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRequestPayloadCreationFailed(reason);
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f25405f;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a();
        }
    }

    @Override // com.inmobi.media.F0
    public void a(@Nullable S0 s02, @NotNull InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdLoadFailed " + this);
        }
        b(s02, status);
    }

    @Override // com.inmobi.media.F0
    public void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdDismissed " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.x7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this);
            }
        });
        InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a();
        }
    }

    @Override // com.inmobi.media.F0
    public void a(@NotNull final Map<Object, ? extends Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdInteraction " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.b8
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this, params);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, Map params) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onAdClicked");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdClicked(params);
        }
    }

    public final void a(@NotNull PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "getSignals " + this);
        }
        if (j() != null) {
            S0 j10 = j();
            if (j10 != null) {
                j10.y0();
            }
            this.f25402c = callbacks;
            S0 j11 = j();
            if (j11 != null) {
                j11.P();
            }
        }
    }

    public void a(@Nullable byte[] bArr, @NotNull PublisherCallbacks callbacks) {
        S0 j10;
        S0 j11;
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "load " + this);
        }
        if (Intrinsics.areEqual(this.f25401b, Boolean.TRUE)) {
            AbstractC2984h7.a((byte) 1, "InMobi", "Cannot call load(byte[]) API after load() API is called");
            InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
            if (interfaceC3269z52 != null) {
                String TAG2 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "Cannot call load(byte[]) API after load() API is called");
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            S0 j12 = j();
            if (j12 != null) {
                j12.a((short) 2140);
                return;
            }
            return;
        }
        this.f25401b = Boolean.FALSE;
        this.f25400a = (byte) 1;
        InterfaceC3269z5 interfaceC3269z53 = this.f25405f;
        if (interfaceC3269z53 != null && (j11 = j()) != null) {
            j11.a(interfaceC3269z53);
        }
        if (j() == null || (j10 = j()) == null || !j10.e((byte) 1)) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f25405f;
        if (interfaceC3269z54 != null) {
            String TAG3 = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            ((A5) interfaceC3269z54).a(TAG3, "load starting. Started INTERNAL_LOAD_TIMER");
        }
        this.f25402c = callbacks;
        S0 j13 = j();
        if (j13 != null) {
            j13.a(bArr);
        }
    }

    @Override // com.inmobi.media.F0
    public void a(@NotNull final byte[] request) {
        Intrinsics.checkNotNullParameter(request, "request");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onRequestCreated " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.v7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this, request);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, byte[] request) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onRequestPayloadCreated");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onRequestPayloadCreated(request);
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f25405f;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a();
        }
    }

    public void a(@NotNull WatermarkData watermarkData) {
        Intrinsics.checkNotNullParameter(watermarkData, "watermarkData");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String str = f25394i;
            StringBuilder a10 = H6.a(str, "TAG", "setWatermark - ");
            a10.append(watermarkData.getWatermarkBase64EncodedString());
            ((A5) interfaceC3269z5).c(str, a10.toString());
        }
        this.f25406g = watermarkData;
    }

    @SuppressLint({"SwitchIntDef"})
    public final boolean a(@NotNull String tag, @NotNull String placementString, @Nullable PublisherCallbacks publisherCallbacks) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(placementString, "placementString");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c(tag, "canProceedToLoad " + this);
        }
        PublisherCallbacks publisherCallbacks2 = this.f25402c;
        if (publisherCallbacks2 != null && publisherCallbacks != null && publisherCallbacks2.getType() != publisherCallbacks.getType()) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            AbstractC2984h7.a((byte) 1, TAG, f25397l);
            InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b(tag, f25397l);
            }
            S0 j10 = j();
            if (j10 != null) {
                j10.a((short) 2005);
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
            return false;
        }
        byte b10 = this.f25400a;
        if (b10 == 8) {
            AbstractC2984h7.a((byte) 1, tag, f25399n + placementString);
            InterfaceC3269z5 interfaceC3269z53 = this.f25405f;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).b(tag, AbstractC2977h0.a(f25399n, placementString));
            }
            S0 j11 = j();
            if (j11 != null) {
                j11.a((short) 2002);
                return false;
            }
            return false;
        } else if (b10 == 1) {
            AbstractC2984h7.a((byte) 1, tag, f25399n + placementString);
            InterfaceC3269z5 interfaceC3269z54 = this.f25405f;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).b(tag, AbstractC2977h0.a(f25399n, placementString));
            }
            S0 j12 = j();
            if (j12 != null) {
                j12.a((short) 2001);
                return false;
            }
            return false;
        } else if (b10 == 5) {
            AbstractC2984h7.a((byte) 1, tag, f25395j + placementString);
            InterfaceC3269z5 interfaceC3269z55 = this.f25405f;
            if (interfaceC3269z55 != null) {
                ((A5) interfaceC3269z55).b(tag, AbstractC2977h0.a(f25395j, placementString));
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
            S0 j13 = j();
            if (j13 != null) {
                j13.b((short) 2003);
                return false;
            }
            return false;
        } else {
            return true;
        }
    }

    public final boolean a(@NotNull String tag, @NotNull String placementString) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(placementString, "placementString");
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "canRender " + this);
        }
        byte b10 = this.f25400a;
        if (b10 == 1) {
            AbstractC2984h7.a((byte) 1, tag, f25399n + placementString);
            InterfaceC3269z5 interfaceC3269z52 = this.f25405f;
            if (interfaceC3269z52 != null) {
                String TAG2 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).b(TAG2, "adload in progress");
            }
            S0 j10 = j();
            if (j10 != null) {
                j10.b((short) 2129);
                return false;
            }
            return false;
        } else if (b10 == 8) {
            AbstractC2984h7.a((byte) 1, tag, f25399n + placementString);
            InterfaceC3269z5 interfaceC3269z53 = this.f25405f;
            if (interfaceC3269z53 != null) {
                String TAG3 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                ((A5) interfaceC3269z53).b(TAG3, "ad loading into view is in progress");
            }
            S0 j11 = j();
            if (j11 != null) {
                j11.b((short) 2164);
                return false;
            }
            return false;
        } else if (b10 != 5) {
            if (b10 == 7) {
                return true;
            }
            InterfaceC3269z5 interfaceC3269z54 = this.f25405f;
            if (interfaceC3269z54 != null) {
                String TAG4 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                ((A5) interfaceC3269z54).b(TAG4, "ad in illegal state");
            }
            S0 j12 = j();
            if (j12 != null) {
                j12.b((short) 2165);
            }
            S0 j13 = j();
            if (j13 != null) {
                j13.m0();
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            throw new IllegalStateException(f25398m);
        } else {
            AbstractC2984h7.a((byte) 1, tag, f25395j + placementString);
            InterfaceC3269z5 interfaceC3269z55 = this.f25405f;
            if (interfaceC3269z55 != null) {
                String TAG5 = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                ((A5) interfaceC3269z55).b(TAG5, "ad active before renderAd");
            }
            S0 j14 = j();
            if (j14 != null) {
                j14.b((short) 2130);
            }
            S0 j15 = j();
            if (j15 != null) {
                j15.m0();
            }
            b(j(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
            return false;
        }
    }

    public static final void a(AbstractC3230we this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onAdDismissed");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdDismissed();
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f25405f;
        if (interfaceC3269z52 != null) {
            String TAG2 = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).b(TAG2, "callback is null");
        }
    }

    @Override // com.inmobi.media.F0
    public void a(@Nullable final Yd yd2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onAdImpression " + this);
        }
        this.f25403d.post(new Runnable() { // from class: ub.r7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this, yd2);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, Yd yd2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f25402c == null) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
            if (interfaceC3269z5 != null) {
                String TAG = f25394i;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).b(TAG, "callback is null");
            }
            if (yd2 != null) {
                yd2.c();
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this$0.f25405f;
        if (interfaceC3269z52 != null) {
            String TAG2 = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).a(TAG2, "callback - onAdImpression");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAdImpression(yd2);
        }
    }

    @Override // com.inmobi.media.F0
    public void a(@NotNull final D1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        this.f25403d.post(new Runnable() { // from class: ub.t7
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this, audioStatusInternal);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, D1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(audioStatusInternal, "$audioStatusInternal");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String str = f25394i;
            StringBuilder a10 = H6.a(str, "TAG", "callback - onAudioStatusChanged - ");
            a10.append(audioStatusInternal.f23559a);
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onAudioStatusChanged(audioStatusInternal);
        }
    }

    @Override // com.inmobi.media.F0
    public void a(@NotNull final String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        this.f25403d.post(new Runnable() { // from class: ub.c8
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3230we.a(AbstractC3230we.this, log);
            }
        });
    }

    public static final void a(AbstractC3230we this$0, String log) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(log, "$log");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "callback - onImraidLog");
        }
        PublisherCallbacks publisherCallbacks = this$0.f25402c;
        if (publisherCallbacks != null) {
            publisherCallbacks.onImraidLog(log);
        }
    }

    public void a(short s10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25405f;
        if (interfaceC3269z5 != null) {
            String TAG = f25394i;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "submitAdLoadDroppedAtSDK " + this);
        }
        S0 j10 = j();
        if (j10 != null) {
            j10.a(s10);
        }
    }
}
