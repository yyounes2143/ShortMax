package com.inmobi.media;

import android.app.Activity;
import android.content.Intent;
import android.util.SparseArray;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.media.C3014j5;
import com.inmobi.media.Y3;
import java.lang.ref.WeakReference;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.j5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3014j5 implements InterfaceC3162sa {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f24886a;

    /* renamed from: b  reason: collision with root package name */
    public InterfaceC3231x f24887b;

    /* renamed from: c  reason: collision with root package name */
    public P f24888c;

    /* renamed from: d  reason: collision with root package name */
    public RelativeLayout f24889d;

    /* renamed from: e  reason: collision with root package name */
    public Y3 f24890e;

    /* renamed from: f  reason: collision with root package name */
    public EnumC3115pa f24891f;

    /* renamed from: g  reason: collision with root package name */
    public float f24892g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC3269z5 f24893h;

    /* renamed from: i  reason: collision with root package name */
    public final C2998i5 f24894i;

    /* renamed from: j  reason: collision with root package name */
    public final C2982h5 f24895j;

    public C3014j5(InMobiAdActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f24886a = new WeakReference(activity);
        this.f24891f = AbstractC3131qa.a(U3.g());
        this.f24892g = 1.0f;
        this.f24894i = new C2998i5(this);
        this.f24895j = new C2982h5(this);
    }

    public final void a(Intent intent, SparseArray adContainers) {
        Y3 y32;
        Window window;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(adContainers, "adContainers");
        if (intent.hasExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX")) {
            InterfaceC3231x interfaceC3231x = (InterfaceC3231x) adContainers.get(intent.getIntExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", -1));
            if (interfaceC3231x == null) {
                b();
                return;
            }
            int intExtra = intent.getIntExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 0);
            if (intExtra == 0) {
                InterfaceC3215w fullScreenEventsListener = interfaceC3231x.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.a();
                }
                b();
                return;
            }
            if (intent.getBooleanExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", false) && (this.f24886a.get() instanceof InMobiAdActivity)) {
                Object obj = this.f24886a.get();
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                if (!((InMobiAdActivity) obj).f23435g) {
                    Object obj2 = this.f24886a.get();
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.ads.rendering.InMobiAdActivity");
                    ((InMobiAdActivity) obj2).f23435g = true;
                    if (!(interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) ? false : ((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).S0) {
                        InterfaceC3269z5 interfaceC3269z5 = this.f24893h;
                        if (interfaceC3269z5 != null) {
                            ((A5) interfaceC3269z5).a("InMobiActivityViewHandler", "showInImmersiveMode");
                        }
                        Object obj3 = this.f24886a.get();
                        InMobiAdActivity inMobiAdActivity = obj3 instanceof InMobiAdActivity ? (InMobiAdActivity) obj3 : null;
                        if (inMobiAdActivity != null && (window = inMobiAdActivity.getWindow()) != null) {
                            L3 l32 = L3.f23796a;
                            if (l32.z()) {
                                WindowManager.LayoutParams attributes = window.getAttributes();
                                attributes.layoutInDisplayCutoutMode = 3;
                                window.setAttributes(attributes);
                                WindowCompat.setDecorFitsSystemWindows(window, false);
                            } else if (l32.x()) {
                                WindowManager.LayoutParams attributes2 = window.getAttributes();
                                attributes2.layoutInDisplayCutoutMode = 1;
                                window.setAttributes(attributes2);
                                WindowCompat.setDecorFitsSystemWindows(window, false);
                            }
                            if (l32.z()) {
                                WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
                                if (insetsController != null) {
                                    insetsController.setSystemBarsBehavior(2);
                                }
                                if (insetsController != null) {
                                    insetsController.hide(WindowInsetsCompat.Type.systemBars());
                                }
                                if (insetsController != null) {
                                    insetsController.hide(WindowInsetsCompat.Type.displayCutout());
                                }
                            } else if (l32.F()) {
                                window.getDecorView().setSystemUiVisibility(5638);
                            }
                        }
                    } else {
                        Activity activity = (Activity) this.f24886a.get();
                        if (activity != null) {
                            Intrinsics.checkNotNullParameter(activity, "<this>");
                            try {
                                activity.requestWindowFeature(1);
                                activity.getWindow().setFlags(1024, 1024);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            if ((200 == intExtra && !Intrinsics.areEqual("html", interfaceC3231x.getMarkupType())) || ((202 == intExtra && !Intrinsics.areEqual("htmlUrl", interfaceC3231x.getMarkupType())) || (201 == intExtra && !Intrinsics.areEqual("inmobiJson", interfaceC3231x.getMarkupType())))) {
                InterfaceC3215w fullScreenEventsListener2 = interfaceC3231x.getFullScreenEventsListener();
                if (fullScreenEventsListener2 != null) {
                    fullScreenEventsListener2.a();
                }
                b();
                return;
            }
            try {
                this.f24887b = interfaceC3231x;
                interfaceC3231x.setFullScreenActivityContext((Activity) this.f24886a.get());
                a();
                Activity activity2 = (Activity) this.f24886a.get();
                if (activity2 != null) {
                    RelativeLayout relativeLayout = new RelativeLayout(activity2);
                    relativeLayout.setId(65534);
                    this.f24889d = relativeLayout;
                }
                a(interfaceC3231x);
                P p10 = this.f24888c;
                if (p10 != null) {
                    p10.f();
                }
                Activity activity3 = (Activity) this.f24886a.get();
                if (activity3 != null) {
                    FrameLayout frameLayout = (FrameLayout) activity3.findViewById(16908290);
                    RelativeLayout relativeLayout2 = frameLayout != null ? (RelativeLayout) frameLayout.findViewById(65519) : null;
                    RelativeLayout relativeLayout3 = this.f24889d;
                    if (relativeLayout3 != null && relativeLayout2 != null) {
                        RelativeLayout relativeLayout4 = (RelativeLayout) relativeLayout2.findViewById(65534);
                        if (relativeLayout4 != null) {
                            relativeLayout2.removeView(relativeLayout4);
                        }
                        relativeLayout2.addView(relativeLayout3);
                        P p11 = this.f24888c;
                        if (p11 != null) {
                            p11.e();
                        }
                    }
                }
                if (interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) {
                    ((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).setEmbeddedBrowserJsCallbacks(this.f24895j);
                }
                if ((interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) && (y32 = this.f24890e) != null) {
                    y32.setUserLeftApplicationListener(((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).getListener());
                    return;
                }
                return;
            } catch (Exception e10) {
                interfaceC3231x.setFullScreenActivityContext(null);
                InterfaceC3215w fullScreenEventsListener3 = interfaceC3231x.getFullScreenEventsListener();
                if (fullScreenEventsListener3 != null) {
                    fullScreenEventsListener3.a();
                }
                b();
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                return;
            }
        }
        b();
    }

    public final void b() {
        Activity activity = (Activity) this.f24886a.get();
        if (!(activity instanceof InMobiAdActivity)) {
            return;
        }
        ((InMobiAdActivity) activity).finish();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        if (com.inmobi.media.B2.a(r0) == true) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            r5 = this;
            com.inmobi.media.Y3 r0 = r5.f24890e
            if (r0 != 0) goto L5
            return
        L5:
            com.inmobi.media.x r0 = r5.f24887b
            r1 = 1
            if (r0 == 0) goto L2e
            boolean r2 = r0 instanceof com.inmobi.media.GestureDetector$OnGestureListenerC2941ec
            if (r2 != 0) goto L10
            r0 = 0
            goto L14
        L10:
            com.inmobi.media.ec r0 = (com.inmobi.media.GestureDetector$OnGestureListenerC2941ec) r0
            boolean r0 = r0.S0
        L14:
            if (r0 != 0) goto L29
            java.lang.ref.WeakReference r0 = r5.f24886a
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            if (r0 == 0) goto L2e
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            boolean r0 = com.inmobi.media.B2.a(r0)
            if (r0 != r1) goto L2e
        L29:
            com.inmobi.media.V3 r0 = com.inmobi.media.U3.h()
            goto L32
        L2e:
            com.inmobi.media.V3 r0 = com.inmobi.media.U3.d()
        L32:
            int r2 = r0.f24297a
            float r2 = (float) r2
            float r3 = r0.f24299c
            float r2 = r2 * r3
            int r0 = r0.f24298b
            float r0 = (float) r0
            float r0 = r0 * r3
            com.inmobi.media.pa r3 = r5.f24891f
            boolean r3 = com.inmobi.media.AbstractC3131qa.b(r3)
            r4 = -1
            if (r3 == 0) goto L52
            float r0 = (float) r1
            float r1 = r5.f24892g
            float r0 = r0 - r1
            float r0 = r0 * r2
            int r0 = bt.a.c(r0)
            r5.a(r0, r4)
            goto L5e
        L52:
            float r1 = (float) r1
            float r2 = r5.f24892g
            float r1 = r1 - r2
            float r1 = r1 * r0
            int r0 = bt.a.c(r1)
            r5.a(r4, r0)
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3014j5.c():void");
    }

    public final void d() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        try {
            final Y3 y32 = this.f24890e;
            if (y32 != null) {
                ViewParent parent = y32.getParent();
                if (parent instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent;
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    viewGroup.removeView(y32);
                }
                ViewParent parent2 = y32.getParent();
                if (parent2 instanceof ViewGroup) {
                    viewGroup2 = (ViewGroup) parent2;
                } else {
                    viewGroup2 = null;
                }
                if (viewGroup2 != null) {
                    viewGroup2.post(new Runnable() { // from class: ub.p4
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3014j5.a(Y3.this);
                        }
                    });
                }
            }
            Y3 y33 = this.f24890e;
            if (y33 != null) {
                C2981h4 c2981h4 = y33.f24391c;
                if (c2981h4 != null) {
                    c2981h4.destroy();
                }
                y33.f24391c = null;
                y33.f24392d = null;
                y33.f24393e = null;
                Df df2 = y33.f24395g;
                if (df2 != null) {
                    df2.a();
                }
                y33.removeAllViews();
            }
            this.f24890e = null;
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            a(Gb.a("IN_CUSTOM_EXPAND", "onClose"));
        } catch (Exception unused) {
        }
    }

    public final void a() {
        Activity activity = (Activity) this.f24886a.get();
        if (activity == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) activity.findViewById(16908290);
        if ((frameLayout != null ? (RelativeLayout) frameLayout.findViewById(65519) : null) != null) {
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(activity);
        relativeLayout.setId(65519);
        relativeLayout.setBackgroundColor(0);
        frameLayout.removeAllViews();
        frameLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        r1 = new com.inmobi.media.V4(r4.f24886a, r5, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.inmobi.media.InterfaceC3231x r5) {
        /*
            r4 = this;
            java.lang.ref.WeakReference r0 = r4.f24886a
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            if (r0 != 0) goto Lb
            return
        Lb:
            android.widget.RelativeLayout r0 = r4.f24889d
            if (r0 != 0) goto L10
            return
        L10:
            java.lang.String r1 = r5.getMarkupType()
            int r2 = r1.hashCode()
            r3 = -1084172778(0xffffffffbf60d616, float:-0.8782667)
            if (r2 == r3) goto L40
            r3 = 3213227(0x3107ab, float:4.50269E-39)
            if (r2 == r3) goto L30
            r3 = 1236050372(0x49aca1c4, float:1414200.5)
            if (r2 != r3) goto L67
            java.lang.String r2 = "htmlUrl"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
            goto L38
        L30:
            java.lang.String r2 = "html"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
        L38:
            com.inmobi.media.V4 r1 = new com.inmobi.media.V4
            java.lang.ref.WeakReference r2 = r4.f24886a
            r1.<init>(r2, r5, r0)
            goto L4f
        L40:
            java.lang.String r2 = "inmobiJson"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L67
            com.inmobi.media.z6 r1 = new com.inmobi.media.z6
            java.lang.ref.WeakReference r2 = r4.f24886a
            r1.<init>(r2, r5, r0)
        L4f:
            r4.f24888c = r1
            com.inmobi.media.pa r0 = r4.f24891f
            r1.a(r0)
            float r0 = r4.f24892g
            r1.f23964c = r0
            boolean r0 = r5 instanceof com.inmobi.media.GestureDetector$OnGestureListenerC2941ec
            if (r0 != 0) goto L60
            r5 = 0
            goto L64
        L60:
            com.inmobi.media.ec r5 = (com.inmobi.media.GestureDetector$OnGestureListenerC2941ec) r5
            boolean r5 = r5.S0
        L64:
            r1.f23965d = r5
            return
        L67:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "InMobiActivityViewHandler: Unknown Markup type"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3014j5.a(com.inmobi.media.x):void");
    }

    public final void a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        InterfaceC3231x interfaceC3231x = this.f24887b;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec ? (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x : null;
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.a(jsonObject);
        }
    }

    @Override // com.inmobi.media.InterfaceC3162sa
    public final void a(EnumC3115pa orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        if (((Activity) this.f24886a.get()) == null) {
            return;
        }
        P p10 = this.f24888c;
        if (p10 != null) {
            p10.a(orientation);
        }
        EnumC3115pa enumC3115pa = this.f24891f;
        if (enumC3115pa != orientation && AbstractC3131qa.b(enumC3115pa) != AbstractC3131qa.b(orientation)) {
            Objects.toString(orientation);
            this.f24891f = orientation;
            P p11 = this.f24888c;
            if (p11 != null) {
                p11.e();
            }
            c();
            return;
        }
        Objects.toString(orientation);
        this.f24891f = orientation;
    }

    public static final void a(C3014j5 c3014j5) {
        c3014j5.f24892g = 1.0f;
        P p10 = c3014j5.f24888c;
        if (p10 != null) {
            p10.f23964c = 1.0f;
            p10.e();
        }
        Y3 y32 = c3014j5.f24890e;
        if (y32 != null) {
            y32.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
        }
        c3014j5.d();
    }

    public static final void a(Y3 this_run) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        this_run.getParent().requestLayout();
    }

    public final void a(int i10, int i11) {
        RelativeLayout.LayoutParams layoutParams;
        Activity activity = (Activity) this.f24886a.get();
        if (activity == null) {
            return;
        }
        AbstractC3131qa.b(this.f24891f);
        if (AbstractC3131qa.b(this.f24891f)) {
            layoutParams = new RelativeLayout.LayoutParams(i10, i11);
            layoutParams.addRule(11);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(i10, i11);
            layoutParams.addRule(12);
        }
        RelativeLayout relativeLayout = (RelativeLayout) ((FrameLayout) activity.findViewById(16908290)).findViewById(65519);
        Intrinsics.checkNotNull(relativeLayout);
        if (((RelativeLayout) relativeLayout.findViewById(65518)) != null) {
            Y3 y32 = this.f24890e;
            if (y32 == null) {
                return;
            }
            y32.setLayoutParams(layoutParams);
            return;
        }
        Y3 y33 = this.f24890e;
        if (y33 != null) {
            relativeLayout.addView(y33, layoutParams);
        }
    }
}
