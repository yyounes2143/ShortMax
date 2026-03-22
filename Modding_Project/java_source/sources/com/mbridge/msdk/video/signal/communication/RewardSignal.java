package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.u0;
/* loaded from: classes6.dex */
public class RewardSignal extends BaseRewardSignal implements BaseIRewardCommunication {

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f31203i = 0;

    /* renamed from: h  reason: collision with root package name */
    private Handler f31204h = new Handler(Looper.getMainLooper());

    /* loaded from: classes6.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31205a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31206b;

        a(Object obj, String str) {
            this.f31205a = obj;
            this.f31206b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.getEndScreenInfo(this.f31205a, this.f31206b);
        }
    }

    /* loaded from: classes6.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31208a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31209b;

        b(Object obj, String str) {
            this.f31208a = obj;
            this.f31209b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.install(this.f31208a, this.f31209b);
        }
    }

    /* loaded from: classes6.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31211a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31212b;

        c(Object obj, String str) {
            this.f31211a = obj;
            this.f31212b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.notifyCloseBtn(this.f31211a, this.f31212b);
        }
    }

    /* loaded from: classes6.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31214a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31215b;

        d(Object obj, String str) {
            this.f31214a = obj;
            this.f31215b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.toggleCloseBtn(this.f31214a, this.f31215b);
        }
    }

    /* loaded from: classes6.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31217a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31218b;

        e(Object obj, String str) {
            this.f31217a = obj;
            this.f31218b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.getEndScreenInfo(this.f31217a, this.f31218b);
        }
    }

    /* loaded from: classes6.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31220a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31221b;

        f(Object obj, String str) {
            this.f31220a = obj;
            this.f31221b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.setOrientation(this.f31220a, this.f31221b);
        }
    }

    /* loaded from: classes6.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31223a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31224b;

        g(Object obj, String str) {
            this.f31223a = obj;
            this.f31224b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.handlerPlayableException(this.f31223a, this.f31224b);
        }
    }

    /* loaded from: classes6.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f31226a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31227b;

        h(Object obj, String str) {
            this.f31226a = obj;
            this.f31227b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.openURL(this.f31226a, this.f31227b);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        if (u0.h()) {
            super.getEndScreenInfo(obj, str);
        } else {
            this.f31204h.post(new a(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        if (u0.h()) {
            super.handlerPlayableException(obj, str);
        } else {
            this.f31204h.post(new g(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void install(Object obj, String str) {
        if (u0.h()) {
            super.install(obj, str);
        } else {
            this.f31204h.post(new b(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        if (u0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f31204h.post(new c(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void openURL(Object obj, String str) {
        if (u0.h()) {
            super.openURL(obj, str);
        } else {
            this.f31204h.post(new h(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void setOrientation(Object obj, String str) {
        if (u0.h()) {
            super.setOrientation(obj, str);
        } else {
            this.f31204h.post(new f(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        if (u0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f31204h.post(new d(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        if (u0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f31204h.post(new e(obj, str));
        }
    }
}
