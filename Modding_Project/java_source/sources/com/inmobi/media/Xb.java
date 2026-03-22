package com.inmobi.media;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.inmobi.media.GestureDetector$OnGestureListenerC2941ec;
import com.inmobi.media.Xb;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Xb extends WebChromeClient {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f24371a;

    public Xb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        this.f24371a = gestureDetector$OnGestureListenerC2941ec;
    }

    public static final boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final void b(JsResult result, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.confirm();
    }

    public static final void c(JsResult result, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.cancel();
    }

    @Override // android.webkit.WebChromeClient
    public final Bitmap getDefaultVideoPoster() {
        Bitmap defaultVideoPoster = super.getDefaultVideoPoster();
        if (defaultVideoPoster == null) {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }
        return defaultVideoPoster;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage cm2) {
        Intrinsics.checkNotNullParameter(cm2, "cm");
        String str = cm2.message() + " -- From line " + cm2.lineNumber() + " of " + cm2.sourceId();
        InterfaceC3269z5 interfaceC3269z5 = this.f24371a.f24680i;
        if (interfaceC3269z5 != null) {
            String str2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z5).c(str2, I6.a(str2, "access$getTAG$cp(...)", "Console message:", str));
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(final String origin, final GeolocationPermissions.Callback callback) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f24371a.f24696q.get() != null) {
            new AlertDialog.Builder((Context) this.f24371a.f24696q.get()).setTitle("Location Permission").setMessage("Allow location access").setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: ub.b3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    Xb.a(callback, origin, dialogInterface, i10);
                }
            }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: ub.c3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    Xb.b(callback, origin, dialogInterface, i10);
                }
            }).create().show();
        }
        super.onGeolocationPermissionsShowPrompt(origin, callback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        a();
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC3269z5 interfaceC3269z5 = this.f24371a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "jsAlert called with: " + message + url);
        }
        if (GestureDetector$OnGestureListenerC2941ec.a(this.f24371a, result)) {
            Activity fullScreenActivity = this.f24371a.getFullScreenActivity();
            if (fullScreenActivity != null) {
                new AlertDialog.Builder(fullScreenActivity).setMessage(message).setTitle(url).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: ub.d3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i10) {
                        Xb.a(result, dialogInterface, i10);
                    }
                }).setCancelable(false).create().show();
                return true;
            }
            result.cancel();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC3269z5 interfaceC3269z5 = this.f24371a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "jsConfirm called with: " + message + url);
        }
        if (GestureDetector$OnGestureListenerC2941ec.a(this.f24371a, result)) {
            if (this.f24371a.getFullScreenActivity() != null) {
                new AlertDialog.Builder(this.f24371a.getFullScreenActivity()).setMessage(message).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: ub.z2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i10) {
                        Xb.b(result, dialogInterface, i10);
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: ub.a3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i10) {
                        Xb.c(result, dialogInterface, i10);
                    }
                }).create().show();
                return true;
            }
            result.cancel();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(result, "result");
        InterfaceC3269z5 interfaceC3269z5 = this.f24371a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "jsPrompt called with: " + message + url);
        }
        if (!GestureDetector$OnGestureListenerC2941ec.a(this.f24371a, result)) {
            return true;
        }
        if (this.f24371a.getFullScreenActivity() == null) {
            result.cancel();
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24371a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z5).c(str, X8.a(str, "access$getTAG$cp(...)", "webview progress changed - ", i10));
        }
        super.onProgressChanged(webView, i10);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        FrameLayout frameLayout;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f24371a.f24696q.get() != null) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f24371a;
            gestureDetector$OnGestureListenerC2941ec.O = view;
            gestureDetector$OnGestureListenerC2941ec.P = callback;
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: ub.e3
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return Xb.a(view2, motionEvent);
                    }
                });
            }
            Activity activity = (Activity) this.f24371a.f24696q.get();
            if (activity != null) {
                frameLayout = (FrameLayout) activity.findViewById(16908290);
            } else {
                frameLayout = null;
            }
            View view2 = this.f24371a.O;
            if (view2 != null) {
                view2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            if (frameLayout != null) {
                frameLayout.addView(this.f24371a.O, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            }
            View view3 = this.f24371a.O;
            if (view3 != null) {
                view3.requestFocus();
            }
            final GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f24371a;
            View view4 = gestureDetector$OnGestureListenerC2941ec2.O;
            View.OnKeyListener onKeyListener = new View.OnKeyListener() { // from class: ub.f3
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view5, int i10, KeyEvent keyEvent) {
                    return Xb.a(GestureDetector$OnGestureListenerC2941ec.this, this, view5, i10, keyEvent);
                }
            };
            if (view4 != null) {
                view4.setOnKeyListener(onKeyListener);
            }
            if (view4 != null) {
                view4.setFocusable(true);
            }
            if (view4 != null) {
                view4.setFocusableInTouchMode(true);
            }
            if (view4 != null) {
                view4.requestFocus();
            }
        }
    }

    public static final void a(JsResult result, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(result, "$result");
        result.confirm();
    }

    public static final void b(GeolocationPermissions.Callback callback, String origin, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(origin, "$origin");
        callback.invoke(origin, false, false);
    }

    public static final boolean a(GestureDetector$OnGestureListenerC2941ec this$0, Xb this$1, View view, int i10, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f24680i;
            if (interfaceC3269z5 != null) {
                String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                ((A5) interfaceC3269z5).a(str, "Back pressed when HTML5 video is playing.");
            }
            this$1.a();
            return true;
        }
        return false;
    }

    public final void a() {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f24371a;
        if (gestureDetector$OnGestureListenerC2941ec.O == null) {
            return;
        }
        WebChromeClient.CustomViewCallback customViewCallback = gestureDetector$OnGestureListenerC2941ec.P;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f24371a;
        gestureDetector$OnGestureListenerC2941ec2.P = null;
        View view = gestureDetector$OnGestureListenerC2941ec2.O;
        if ((view != null ? view.getParent() : null) != null) {
            View view2 = this.f24371a.O;
            ViewParent parent = view2 != null ? view2.getParent() : null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.f24371a.O);
            }
            this.f24371a.O = null;
        }
    }

    public static final void a(GeolocationPermissions.Callback callback, String origin, DialogInterface dialogInterface, int i10) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(origin, "$origin");
        callback.invoke(origin, true, false);
    }
}
