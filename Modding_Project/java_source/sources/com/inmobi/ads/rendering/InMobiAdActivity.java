package com.inmobi.ads.rendering;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.media.A5;
import com.inmobi.media.AbstractC2973gc;
import com.inmobi.media.B2;
import com.inmobi.media.C2899c4;
import com.inmobi.media.C2981h4;
import com.inmobi.media.C3014j5;
import com.inmobi.media.C3046l5;
import com.inmobi.media.C3078n5;
import com.inmobi.media.C3146ra;
import com.inmobi.media.C3251y3;
import com.inmobi.media.Df;
import com.inmobi.media.Gb;
import com.inmobi.media.GestureDetector$OnGestureListenerC2941ec;
import com.inmobi.media.InterfaceC3215w;
import com.inmobi.media.InterfaceC3231x;
import com.inmobi.media.InterfaceC3269z5;
import com.inmobi.media.L3;
import com.inmobi.media.P;
import com.inmobi.media.U3;
import com.inmobi.media.Y3;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@Metadata
@SuppressLint({"ClickableViewAccessibility"})
@SourceDebugExtension({"SMAP\nInMobiAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiAdActivity.kt\ncom/inmobi/ads/rendering/InMobiAdActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,632:1\n1#2:633\n*E\n"})
/* loaded from: classes5.dex */
public final class InMobiAdActivity extends Activity {

    /* renamed from: k  reason: collision with root package name */
    public static final SparseArray f23426k = new SparseArray();

    /* renamed from: l  reason: collision with root package name */
    public static GestureDetector$OnGestureListenerC2941ec f23427l;

    /* renamed from: m  reason: collision with root package name */
    public static AbstractC2973gc f23428m;

    /* renamed from: a  reason: collision with root package name */
    public C3046l5 f23429a;

    /* renamed from: b  reason: collision with root package name */
    public C3014j5 f23430b;

    /* renamed from: c  reason: collision with root package name */
    public GestureDetector$OnGestureListenerC2941ec f23431c;

    /* renamed from: d  reason: collision with root package name */
    public int f23432d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f23433e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f23434f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f23435g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC3269z5 f23436h;

    /* renamed from: i  reason: collision with root package name */
    public Df f23437i;

    /* renamed from: j  reason: collision with root package name */
    public OnBackInvokedCallback f23438j;

    public static final void a(InMobiAdActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a();
    }

    public static final boolean b(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        C2899c4 c2899c4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this$0.f23431c;
            if (gestureDetector$OnGestureListenerC2941ec != null && (c2899c4 = gestureDetector$OnGestureListenerC2941ec.f24715z0) != null) {
                C2899c4.a(c2899c4, 6, true, null, 12);
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this$0.f23431c;
            if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                gestureDetector$OnGestureListenerC2941ec2.reload();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean c(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        C2899c4 c2899c4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this$0.f23431c;
            if (gestureDetector$OnGestureListenerC2941ec != null && gestureDetector$OnGestureListenerC2941ec.canGoBack()) {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this$0.f23431c;
                if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                    gestureDetector$OnGestureListenerC2941ec2.goBack();
                }
            } else {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec3 = this$0.f23431c;
                if (gestureDetector$OnGestureListenerC2941ec3 != null && (c2899c4 = gestureDetector$OnGestureListenerC2941ec3.f24715z0) != null) {
                    C2899c4.a(c2899c4, 5, true, null, 12);
                }
                this$0.f23433e = true;
                this$0.finish();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean d(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this$0.f23431c;
            if (gestureDetector$OnGestureListenerC2941ec2 != null && gestureDetector$OnGestureListenerC2941ec2.canGoForward() && (gestureDetector$OnGestureListenerC2941ec = this$0.f23431c) != null) {
                gestureDetector$OnGestureListenerC2941ec.goForward();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onConfigChanged");
        }
        super.onConfigurationChanged(newConfig);
        C3046l5 c3046l5 = this.f23429a;
        if (c3046l5 != null) {
            c3046l5.b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (r1 == null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01fe A[Catch: Exception -> 0x021d, TryCatch #1 {Exception -> 0x021d, blocks: (B:67:0x01f2, B:71:0x0203, B:75:0x020d, B:78:0x0213, B:74:0x0208, B:70:0x01fe), top: B:114:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0208 A[Catch: Exception -> 0x021d, TryCatch #1 {Exception -> 0x021d, blocks: (B:67:0x01f2, B:71:0x0203, B:75:0x020d, B:78:0x0213, B:74:0x0208, B:70:0x01fe), top: B:114:0x01f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x022f A[Catch: Exception -> 0x0226, TryCatch #4 {Exception -> 0x0226, blocks: (B:83:0x0222, B:87:0x022b, B:89:0x022f, B:90:0x0234, B:92:0x025d, B:93:0x0265, B:95:0x0269, B:96:0x026c, B:98:0x0270, B:99:0x0275), top: B:119:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x025d A[Catch: Exception -> 0x0226, TryCatch #4 {Exception -> 0x0226, blocks: (B:83:0x0222, B:87:0x022b, B:89:0x022f, B:90:0x0234, B:92:0x025d, B:93:0x0265, B:95:0x0269, B:96:0x026c, B:98:0x0270, B:99:0x0275), top: B:119:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0269 A[Catch: Exception -> 0x0226, TryCatch #4 {Exception -> 0x0226, blocks: (B:83:0x0222, B:87:0x022b, B:89:0x022f, B:90:0x0234, B:92:0x025d, B:93:0x0265, B:95:0x0269, B:96:0x026c, B:98:0x0270, B:99:0x0275), top: B:119:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0270 A[Catch: Exception -> 0x0226, TryCatch #4 {Exception -> 0x0226, blocks: (B:83:0x0222, B:87:0x022b, B:89:0x022f, B:90:0x0234, B:92:0x025d, B:93:0x0265, B:95:0x0269, B:96:0x026c, B:98:0x0270, B:99:0x0275), top: B:119:0x0222 }] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r41) {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.rendering.InMobiAdActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        C3014j5 c3014j5;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        C2899c4 c2899c4;
        InterfaceC3215w fullScreenEventsListener;
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onDestroy");
        }
        int i10 = this.f23432d;
        if (100 == i10) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = f23427l;
            if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                gestureDetector$OnGestureListenerC2941ec2.a(Gb.a("IN_CUSTOM_BROWSER", "onClose"));
            }
        } else if (102 == i10 && (c3014j5 = this.f23430b) != null && c3014j5.f24890e != null) {
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            c3014j5.a(Gb.a("IN_CUSTOM_EXPAND", "onClose"));
        }
        if (this.f23433e) {
            int i11 = this.f23432d;
            if (100 == i11) {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec3 = this.f23431c;
                if (gestureDetector$OnGestureListenerC2941ec3 != null && (fullScreenEventsListener = gestureDetector$OnGestureListenerC2941ec3.getFullScreenEventsListener()) != null) {
                    try {
                        fullScreenEventsListener.b(this.f23431c);
                        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec4 = this.f23431c;
                        Intrinsics.checkNotNull(gestureDetector$OnGestureListenerC2941ec4);
                        gestureDetector$OnGestureListenerC2941ec4.b();
                        C3046l5 c3046l5 = this.f23429a;
                        if (c3046l5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                            c3046l5 = null;
                        }
                        GestureDetector$OnGestureListenerC2941ec orientationListener = this.f23431c;
                        Intrinsics.checkNotNull(orientationListener);
                        c3046l5.getClass();
                        Intrinsics.checkNotNullParameter(orientationListener, "orientationListener");
                        c3046l5.f24955b.remove(orientationListener);
                        c3046l5.a();
                        this.f23431c = null;
                    } catch (Exception unused) {
                    }
                }
            } else if (102 == i11) {
                C3014j5 orientationListener2 = this.f23430b;
                if (orientationListener2 != null) {
                    C3046l5 c3046l52 = this.f23429a;
                    if (c3046l52 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                        c3046l52 = null;
                    }
                    c3046l52.getClass();
                    Intrinsics.checkNotNullParameter(orientationListener2, "orientationListener");
                    c3046l52.f24955b.remove(orientationListener2);
                    c3046l52.a();
                    P p10 = orientationListener2.f24888c;
                    if (p10 != null) {
                        p10.b();
                    }
                    RelativeLayout relativeLayout = orientationListener2.f24889d;
                    if (relativeLayout != null) {
                        relativeLayout.removeAllViews();
                    }
                    Y3 y32 = orientationListener2.f24890e;
                    if (y32 != null) {
                        C2981h4 c2981h4 = y32.f24391c;
                        if (c2981h4 != null) {
                            c2981h4.destroy();
                        }
                        y32.f24391c = null;
                        y32.f24392d = null;
                        y32.f24393e = null;
                        Df df2 = y32.f24395g;
                        if (df2 != null) {
                            df2.a();
                        }
                        y32.removeAllViews();
                    }
                    orientationListener2.f24886a.clear();
                    orientationListener2.f24887b = null;
                    orientationListener2.f24888c = null;
                    orientationListener2.f24889d = null;
                    orientationListener2.f24890e = null;
                }
                this.f23430b = null;
            }
        } else {
            int i12 = this.f23432d;
            if (100 != i12 && 102 == i12) {
                C3014j5 orientationListener3 = this.f23430b;
                if (orientationListener3 != null) {
                    C3046l5 c3046l53 = this.f23429a;
                    if (c3046l53 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                        c3046l53 = null;
                    }
                    c3046l53.getClass();
                    Intrinsics.checkNotNullParameter(orientationListener3, "orientationListener");
                    c3046l53.f24955b.remove(orientationListener3);
                    c3046l53.a();
                    P p11 = orientationListener3.f24888c;
                    if (p11 != null) {
                        p11.b();
                    }
                    RelativeLayout relativeLayout2 = orientationListener3.f24889d;
                    if (relativeLayout2 != null) {
                        relativeLayout2.removeAllViews();
                    }
                    Y3 y33 = orientationListener3.f24890e;
                    if (y33 != null) {
                        C2981h4 c2981h42 = y33.f24391c;
                        if (c2981h42 != null) {
                            c2981h42.destroy();
                        }
                        y33.f24391c = null;
                        y33.f24392d = null;
                        y33.f24393e = null;
                        Df df3 = y33.f24395g;
                        if (df3 != null) {
                            df3.a();
                        }
                        y33.removeAllViews();
                    }
                    orientationListener3.f24886a.clear();
                    orientationListener3.f24887b = null;
                    orientationListener3.f24888c = null;
                    orientationListener3.f24889d = null;
                    orientationListener3.f24890e = null;
                }
                this.f23430b = null;
            }
            if (100 == this.f23432d && (gestureDetector$OnGestureListenerC2941ec = this.f23431c) != null && (c2899c4 = gestureDetector$OnGestureListenerC2941ec.f24715z0) != null) {
                C2899c4.a(c2899c4, 9, true, null, 12);
            }
        }
        Df df4 = this.f23437i;
        if (df4 != null) {
            df4.a();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z10) {
        C3014j5 c3014j5;
        C3046l5 c3046l5;
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "multiWindow mode - " + z10);
        }
        super.onMultiWindowModeChanged(z10);
        if (z10 || (c3014j5 = this.f23430b) == null) {
            return;
        }
        InterfaceC3231x interfaceC3231x = c3014j5.f24887b;
        C3146ra orientationProperties = (interfaceC3231x == null || !(interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec)) ? null : ((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).getOrientationProperties();
        if (orientationProperties == null || (c3046l5 = this.f23429a) == null) {
            return;
        }
        c3046l5.a(orientationProperties);
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onNewIntent");
        }
        super.onNewIntent(intent);
        this.f23434f = false;
        this.f23431c = null;
        setIntent(intent);
        C3014j5 c3014j5 = this.f23430b;
        if (c3014j5 != null) {
            SparseArray adContainers = f23426k;
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(adContainers, "adContainers");
            c3014j5.a(intent, adContainers);
            P p10 = c3014j5.f24888c;
            if (p10 != null) {
                p10.g();
            }
        }
    }

    @Override // android.app.Activity
    public final void onPause() {
        C3014j5 c3014j5;
        super.onPause();
        int i10 = this.f23432d;
        if (100 == i10) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = f23427l;
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                gestureDetector$OnGestureListenerC2941ec.a(Gb.a("IN_CUSTOM_BROWSER", "onHidden"));
            }
        } else if (102 == i10 && (c3014j5 = this.f23430b) != null && c3014j5.f24890e != null) {
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            c3014j5.a(Gb.a("IN_CUSTOM_EXPAND", "onHidden"));
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        P p10;
        InterfaceC3215w fullScreenEventsListener;
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onResume");
        }
        super.onResume();
        if (!this.f23433e) {
            int i10 = this.f23432d;
            if (100 == i10) {
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f23431c;
                if (gestureDetector$OnGestureListenerC2941ec != null && (fullScreenEventsListener = gestureDetector$OnGestureListenerC2941ec.getFullScreenEventsListener()) != null) {
                    try {
                        if (!this.f23434f) {
                            this.f23434f = true;
                            fullScreenEventsListener.a(this.f23431c);
                        }
                    } catch (Exception unused) {
                    }
                }
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = f23427l;
                if (gestureDetector$OnGestureListenerC2941ec2 != null) {
                    GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                    gestureDetector$OnGestureListenerC2941ec2.a(Gb.a("IN_CUSTOM_BROWSER", "onVisible"));
                }
            } else if (102 == i10) {
                C3014j5 c3014j5 = this.f23430b;
                if (c3014j5 != null && (p10 = c3014j5.f24888c) != null) {
                    p10.c();
                }
                C3014j5 c3014j52 = this.f23430b;
                if (c3014j52 != null && c3014j52.f24890e != null) {
                    GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                    c3014j52.a(Gb.a("IN_CUSTOM_EXPAND", "onVisible"));
                }
            }
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        C3014j5 c3014j5;
        Window window;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onStart");
        }
        super.onStart();
        L3 l32 = L3.f23796a;
        InMobiAdActivity inMobiAdActivity = null;
        boolean z10 = false;
        if (l32.B()) {
            if (this.f23438j == null) {
                this.f23438j = new OnBackInvokedCallback() { // from class: tb.e
                    public final void onBackInvoked() {
                        InMobiAdActivity.a(InMobiAdActivity.this);
                    }
                };
            }
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            OnBackInvokedCallback onBackInvokedCallback = this.f23438j;
            if (onBackInvokedCallback == null) {
                Intrinsics.throwUninitializedPropertyAccessException("backInvokedCallback");
                onBackInvokedCallback = null;
            }
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, onBackInvokedCallback);
        }
        if (!this.f23433e && 102 == this.f23432d && (c3014j5 = this.f23430b) != null) {
            P p10 = c3014j5.f24888c;
            if (p10 != null) {
                p10.g();
            }
            InterfaceC3231x interfaceC3231x = c3014j5.f24887b;
            if (interfaceC3231x != null) {
                if (interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) {
                    z10 = ((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).S0;
                }
                if (z10 && !l32.z() && l32.F()) {
                    Object obj = c3014j5.f24886a.get();
                    if (obj instanceof InMobiAdActivity) {
                        inMobiAdActivity = (InMobiAdActivity) obj;
                    }
                    if (inMobiAdActivity != null && (window = inMobiAdActivity.getWindow()) != null) {
                        window.getDecorView().setSystemUiVisibility(5638);
                    }
                }
            }
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        C3014j5 c3014j5;
        P p10;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onStop");
        }
        super.onStop();
        if (L3.f23796a.B() && this.f23438j != null) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            OnBackInvokedCallback onBackInvokedCallback = this.f23438j;
            if (onBackInvokedCallback == null) {
                Intrinsics.throwUninitializedPropertyAccessException("backInvokedCallback");
                onBackInvokedCallback = null;
            }
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
        }
        if (!this.f23433e && (c3014j5 = this.f23430b) != null && (p10 = c3014j5.f24888c) != null) {
            p10.d();
        }
    }

    public final void a(RelativeLayout relativeLayout) {
        float f10 = U3.d().f24299c;
        LinearLayout linearLayout = new LinearLayout(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (48 * f10));
        linearLayout.setOrientation(0);
        linearLayout.setId(65533);
        linearLayout.setWeightSum(100.0f);
        linearLayout.setBackgroundResource(17301658);
        linearLayout.setBackgroundColor(-7829368);
        relativeLayout.setBackgroundColor(-7829368);
        layoutParams.addRule(12);
        if (B2.a(this)) {
            Df df2 = this.f23437i;
            if (df2 != null) {
                df2.a();
            }
            this.f23437i = new Df(this, new C3078n5(layoutParams), this.f23436h);
        }
        relativeLayout.addView(linearLayout, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 25.0f;
        C3251y3 c3251y3 = new C3251y3(this, (byte) 2, this.f23436h);
        c3251y3.setOnTouchListener(new View.OnTouchListener() { // from class: tb.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.a(InMobiAdActivity.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y3, layoutParams2);
        C3251y3 c3251y32 = new C3251y3(this, (byte) 3, this.f23436h);
        c3251y32.setOnTouchListener(new View.OnTouchListener() { // from class: tb.b
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.b(InMobiAdActivity.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y32, layoutParams2);
        C3251y3 c3251y33 = new C3251y3(this, (byte) 4, this.f23436h);
        c3251y33.setOnTouchListener(new View.OnTouchListener() { // from class: tb.c
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.c(InMobiAdActivity.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y33, layoutParams2);
        C3251y3 c3251y34 = new C3251y3(this, (byte) 6, this.f23436h);
        c3251y34.setOnTouchListener(new View.OnTouchListener() { // from class: tb.d
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return InMobiAdActivity.d(InMobiAdActivity.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y34, layoutParams2);
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z10, Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onMultiWindowModeChanged(z10, newConfig);
        onMultiWindowModeChanged(z10);
    }

    public static final boolean a(InMobiAdActivity this$0, View view, MotionEvent motionEvent) {
        C2899c4 c2899c4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this$0.f23431c;
            if (gestureDetector$OnGestureListenerC2941ec != null && (c2899c4 = gestureDetector$OnGestureListenerC2941ec.f24715z0) != null) {
                C2899c4.a(c2899c4, 5, true, null, 12);
            }
            this$0.f23433e = true;
            this$0.finish();
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public final void a() {
        C2899c4 c2899c4;
        P p10;
        InterfaceC3269z5 interfaceC3269z5 = this.f23436h;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
            ((A5) interfaceC3269z5).c("InMobiAdActivity", "onBackPressed");
        }
        int i10 = this.f23432d;
        if (i10 == 102) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23436h;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
                ((A5) interfaceC3269z52).c("InMobiAdActivity", "back pressed on ad");
            }
            C3014j5 c3014j5 = this.f23430b;
            if (c3014j5 == null || (p10 = c3014j5.f24888c) == null) {
                return;
            }
            p10.a();
        } else if (i10 == 100) {
            InterfaceC3269z5 interfaceC3269z53 = this.f23436h;
            if (interfaceC3269z53 != null) {
                Intrinsics.checkNotNullExpressionValue("InMobiAdActivity", "TAG");
                ((A5) interfaceC3269z53).c("InMobiAdActivity", "back pressed in browser");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f23431c;
            if (gestureDetector$OnGestureListenerC2941ec != null && (c2899c4 = gestureDetector$OnGestureListenerC2941ec.f24715z0) != null) {
                C2899c4.a(c2899c4, 7, true, null, 12);
            }
            this.f23433e = true;
            finish();
        }
    }
}
