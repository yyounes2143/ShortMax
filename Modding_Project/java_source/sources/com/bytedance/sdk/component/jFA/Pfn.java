package com.bytedance.sdk.component.jFA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.jFA.ba;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
public class Pfn extends WebView {
    private boolean Pfn;
    private final HashSet<String> ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private tB f12777ba;
    private boolean ex;
    public long oJ;
    private boolean tB;

    public Pfn(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ZYk = new HashSet<>();
        this.oJ = System.currentTimeMillis();
        oJ();
    }

    private void ZYk() {
        if (this.tB) {
            return;
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        setOnClickListener(null);
        setOnTouchListener(null);
        Iterator<String> it = this.ZYk.iterator();
        while (it.hasNext()) {
            super.removeJavascriptInterface(it.next());
        }
    }

    private void oJ() {
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(false);
        settings.setSupportMultipleWindows(false);
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        setWebViewClient(new ba.oJ());
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        toString();
        if (!this.tB && !this.Pfn) {
            super.addJavascriptInterface(obj, str);
            this.ZYk.add(str);
        }
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z10) {
        if (!this.tB && !this.Pfn) {
            super.clearCache(z10);
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        toString();
        if (this.tB) {
            return;
        }
        this.tB = true;
        ZYk();
        super.destroy();
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (!this.tB && !this.Pfn) {
            super.evaluateJavascript(str, valueCallback);
        } else if (valueCallback != null) {
            valueCallback.onReceiveValue("");
        }
    }

    @Override // android.webkit.WebView
    public void goBack() {
        if (!this.tB && !this.Pfn) {
            super.goBack();
        }
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(int i10) {
        if (!this.tB && !this.Pfn) {
            super.goBackOrForward(i10);
        }
    }

    @Override // android.webkit.WebView
    public void goForward() {
        if (!this.tB && !this.Pfn) {
            super.goForward();
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!this.tB && !this.Pfn) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (this.tB || this.Pfn) {
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError unused) {
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        toString();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        toString();
        if (this.ex) {
            destroy();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.tB && !this.Pfn) {
            super.onDraw(canvas);
        }
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (!this.tB && !this.Pfn) {
            super.onMeasure(i10, i11);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    @Override // android.webkit.WebView
    public void onPause() {
        if (!this.tB && !this.Pfn) {
            try {
                super.onPause();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.webkit.WebView
    public void onResume() {
        if (!this.tB && !this.Pfn) {
            try {
                super.onResume();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.webkit.WebView
    public void pauseTimers() {
        if (!this.tB && !this.Pfn) {
            super.pauseTimers();
        }
    }

    @Override // android.webkit.WebView
    public void reload() {
        if (!this.tB && !this.Pfn) {
            super.reload();
        }
    }

    @Override // android.webkit.WebView
    public void removeJavascriptInterface(String str) {
        if (!this.tB && !this.Pfn) {
            super.removeJavascriptInterface(str);
            this.ZYk.remove(str);
        }
    }

    @Override // android.webkit.WebView
    public void resumeTimers() {
        if (!this.tB && !this.Pfn) {
            super.resumeTimers();
        }
    }

    public void setDestroyOnDetached(boolean z10) {
        this.ex = z10;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        tB tBVar = this.f12777ba;
        if (tBVar == null) {
            super.setOnTouchListener(onTouchListener);
            return;
        }
        tBVar.oJ(onTouchListener);
        super.setOnTouchListener(this.f12777ba);
    }

    public void setRecycler(boolean z10) {
        this.Pfn = z10;
    }

    public void setTouchListenerProxy(tB tBVar) {
        this.f12777ba = tBVar;
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (!this.tB && !this.Pfn) {
            try {
                super.stopLoading();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        if (this.tB || this.Pfn) {
            return;
        }
        try {
            super.loadUrl(str, map);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError unused) {
        }
    }

    public Pfn(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ZYk = new HashSet<>();
        this.oJ = System.currentTimeMillis();
        oJ();
    }
}
