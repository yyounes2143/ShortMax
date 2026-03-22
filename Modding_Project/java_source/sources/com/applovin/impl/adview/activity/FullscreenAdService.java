package com.applovin.impl.adview.activity;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.k7;
import com.applovin.impl.m2;
import com.applovin.impl.q2;
import com.applovin.impl.sdk.o;
/* loaded from: classes2.dex */
public class FullscreenAdService extends Service {
    public static final String DATA_KEY_RAW_FULL_AD_RESPONSE = "raw_full_ad_response";
    private static final String TAG = "FullscreenAdService";

    /* loaded from: classes2.dex */
    private static class b extends Handler {
        private b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                m2 m2Var = AppLovinFullscreenActivity.parentInterstitialWrapper;
                if (m2Var == null) {
                    if (!k7.a(1.0d)) {
                        super.handleMessage(message);
                        return;
                    }
                    throw new RuntimeException("parentWrapper is null for " + message.what);
                }
                com.applovin.impl.sdk.ad.b f10 = m2Var.f();
                int i10 = message.what;
                c cVar = c.AD;
                if (i10 == cVar.b()) {
                    Bundle bundle = new Bundle();
                    bundle.putString(FullscreenAdService.DATA_KEY_RAW_FULL_AD_RESPONSE, f10.getRawFullResponse());
                    Message obtain = Message.obtain((Handler) null, cVar.b());
                    obtain.setData(bundle);
                    try {
                        message.replyTo.send(obtain);
                    } catch (RemoteException e10) {
                        o.c(FullscreenAdService.TAG, "Failed to respond to Fullscreen Activity in another process with ad", e10);
                    }
                } else if (message.what == c.AD_DISPLAYED.b()) {
                    q2.a(m2Var.c(), f10);
                } else if (message.what == c.AD_CLICKED.b()) {
                    q2.a(m2Var.b(), f10);
                } else if (message.what == c.AD_VIDEO_STARTED.b()) {
                    q2.a(m2Var.d(), f10);
                } else if (message.what == c.AD_VIDEO_ENDED.b()) {
                    Bundle data = message.getData();
                    q2.a(m2Var.d(), f10, data.getDouble("percent_viewed"), data.getBoolean("fully_watched"));
                } else if (message.what == c.AD_HIDDEN.b()) {
                    q2.b(m2Var.c(), f10);
                } else {
                    super.handleMessage(message);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum c {
        AD(0),
        AD_DISPLAYED(1),
        AD_CLICKED(2),
        AD_VIDEO_STARTED(3),
        AD_VIDEO_ENDED(4),
        AD_HIDDEN(5);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f7398a;

        c(int i10) {
            this.f7398a = i10;
        }

        public int b() {
            return this.f7398a;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new Messenger(new b()).getBinder();
    }
}
