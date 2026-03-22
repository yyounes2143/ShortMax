package com.applovin.adview;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes2.dex */
public class AppLovinAdView extends RelativeLayout {
    public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.adview.a f7249a;

    public AppLovinAdView(AppLovinAdSize appLovinAdSize) {
        this(appLovinAdSize, (String) null);
    }

    private void a(AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, Context context, AttributeSet attributeSet) {
        if (!isInEditMode()) {
            com.applovin.impl.adview.a aVar = new com.applovin.impl.adview.a();
            this.f7249a = aVar;
            aVar.a(this, context, appLovinAdSize, str, appLovinSdk, attributeSet);
            return;
        }
        a(attributeSet, context);
    }

    public void destroy() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public com.applovin.impl.adview.a getController() {
        return this.f7249a;
    }

    public AppLovinAdSize getSize() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            return aVar.k();
        }
        return null;
    }

    public String getZoneId() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            return aVar.l();
        }
        return null;
    }

    public void loadNextAd() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.u();
        } else {
            o.i("AppLovinSdk", "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.B();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.C();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.c(i10);
        }
    }

    public void pause() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.D();
        }
    }

    public void renderAd(AppLovinAd appLovinAd) {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.c(appLovinAd);
        }
    }

    public void resume() {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.F();
        }
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.a(appLovinAdClickListener);
        }
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.a(appLovinAdDisplayListener);
        }
    }

    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.a(appLovinAdLoadListener);
        }
    }

    public void setAdViewEventListener(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        com.applovin.impl.adview.a aVar = this.f7249a;
        if (aVar != null) {
            aVar.a(appLovinAdViewEventListener);
        }
    }

    public void setExtraInfo(@NonNull String str, @Nullable Object obj) {
        if (str != null) {
            com.applovin.impl.adview.a aVar = this.f7249a;
            if (aVar != null) {
                aVar.a(str, obj);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    @Override // android.view.View
    public String toString() {
        return "AppLovinAdView{zoneId='" + getZoneId() + "\", size=" + getSize() + '}';
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, @Nullable String str) {
        super(k.o());
        a(appLovinAdSize, str, AppLovinSdk.getInstance(k.o()), k.o(), null);
    }

    public AppLovinAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinAdView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a(null, null, null, context, attributeSet);
    }

    private void a(AttributeSet attributeSet, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setText("AppLovin Ad");
        textView.setGravity(17);
        addView(textView, displayMetrics.widthPixels, (int) TypedValue.applyDimension(1, 50.0f, displayMetrics));
    }

    @Deprecated
    public AppLovinAdView(AppLovinAdSize appLovinAdSize, Context context) {
        this(appLovinAdSize, (String) null, context);
    }

    @Deprecated
    public AppLovinAdView(AppLovinAdSize appLovinAdSize, String str, Context context) {
        super(context);
        a(appLovinAdSize, str, null, context, null);
    }

    @Deprecated
    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Context context) {
        this(appLovinSdk, appLovinAdSize, null, context);
    }

    @Deprecated
    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, String str, Context context) {
        super(context.getApplicationContext());
        a(appLovinAdSize, str, appLovinSdk, context, null);
    }
}
