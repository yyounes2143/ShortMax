package com.applovin.impl;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.impl.adview.AppLovinWebViewBase;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class j0 extends AppLovinWebViewBase {

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f8152b;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f8153a;

    public j0(Context context) {
        super(context);
        this.f8153a = new AtomicReference();
        if (f8152b == null) {
            try {
                WebView.class.getDeclaredMethod("onTouchEvent", MotionEvent.class);
                f8152b = Boolean.TRUE;
            } catch (NoSuchMethodException unused) {
                com.applovin.impl.sdk.o.h("AppLovinSdk", "WebView.onTouchEvent() not implemented");
                f8152b = Boolean.FALSE;
            }
        }
    }

    public boolean a() {
        if (this.f8153a.get() != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public MotionEvent getAndClearLastClickEvent() {
        return (MotionEvent) this.f8153a.getAndSet(null);
    }

    @Nullable
    public MotionEvent getLastClickEvent() {
        return (MotionEvent) this.f8153a.get();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f8153a.set(MotionEvent.obtain(motionEvent));
        if (f8152b.booleanValue()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }
}
