package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.F7;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class F7 {

    /* renamed from: a  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f23645a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f23646b;

    /* renamed from: c  reason: collision with root package name */
    public C3207v7 f23647c;

    /* renamed from: d  reason: collision with root package name */
    public C3159s7 f23648d;

    /* renamed from: e  reason: collision with root package name */
    public C3159s7 f23649e;

    /* renamed from: f  reason: collision with root package name */
    public C3159s7 f23650f;

    public F7(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec, InterfaceC3269z5 interfaceC3269z5) {
        this.f23645a = gestureDetector$OnGestureListenerC2941ec;
        this.f23646b = interfaceC3269z5;
    }

    public static final boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    public static boolean b() {
        AudioManager audioManager;
        Context d10 = Uc.d();
        if (d10 == null) {
            return false;
        }
        Object systemService = d10.getSystemService("audio");
        if (systemService instanceof AudioManager) {
            audioManager = (AudioManager) systemService;
        } else {
            audioManager = null;
        }
        if (audioManager == null || !audioManager.isWiredHeadsetOn()) {
            return false;
        }
        return true;
    }

    public final void a(String url, Activity activity) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(activity, "activity");
        InterfaceC3269z5 interfaceC3269z5 = this.f23646b;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("MraidMediaProcessor", "doPlayMedia");
        }
        C3207v7 c3207v7 = new C3207v7(activity, this.f23646b);
        this.f23647c = c3207v7;
        c3207v7.setPlaybackData(url);
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(16908290);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        C3207v7 c3207v72 = this.f23647c;
        if (c3207v72 != null) {
            c3207v72.setLayoutParams(layoutParams);
        }
        C3223w7 c3223w7 = new C3223w7(activity);
        c3223w7.setOnTouchListener(new View.OnTouchListener() { // from class: ub.e0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return F7.a(view, motionEvent);
            }
        });
        c3223w7.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        c3223w7.addView(this.f23647c);
        InterfaceC3269z5 interfaceC3269z52 = this.f23646b;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a("MraidMediaProcessor", "adding media view on top");
        }
        viewGroup.addView(c3223w7, new ViewGroup.LayoutParams(-1, -1));
        C3207v7 c3207v73 = this.f23647c;
        if (c3207v73 != null) {
            c3207v73.setViewContainer(c3223w7);
        }
        C3207v7 c3207v74 = this.f23647c;
        if (c3207v74 != null) {
            c3207v74.requestFocus();
        }
        C3207v7 c3207v75 = this.f23647c;
        if (c3207v75 != null) {
            c3207v75.setOnKeyListener(new View.OnKeyListener() { // from class: ub.f0
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
                    return F7.a(F7.this, view, i10, keyEvent);
                }
            });
        }
        C3207v7 c3207v76 = this.f23647c;
        if (c3207v76 != null) {
            c3207v76.setListener(new E7(this));
        }
        C3207v7 c3207v77 = this.f23647c;
        if (c3207v77 != null) {
            c3207v77.a();
        }
    }

    public static final boolean a(F7 this$0, View view, int i10, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (4 == i10 && keyEvent.getAction() == 0) {
            C3207v7 c3207v7 = this$0.f23647c;
            if (c3207v7 != null) {
                c3207v7.b();
                return true;
            }
            return true;
        }
        return false;
    }

    public final int a() {
        AdConfig.RenderingConfig renderingConfig;
        InterfaceC3269z5 interfaceC3269z5 = this.f23646b;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("MraidMediaProcessor", "deviceVolume");
        }
        Context d10 = Uc.d();
        if (d10 == null) {
            return -1;
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f23645a;
        if (((gestureDetector$OnGestureListenerC2941ec == null || (renderingConfig = gestureDetector$OnGestureListenerC2941ec.getRenderingConfig()) == null) ? false : renderingConfig.getEnablePubMuteControl()) && Uc.o()) {
            return 0;
        }
        Object systemService = d10.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return -1;
    }
}
