package com.inmobi.media;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.inmobi.media.A2;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A2 {

    /* renamed from: a  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f23449a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f23450b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f23451c;

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC3269z5 f23452d;

    public A2(GestureDetector$OnGestureListenerC2941ec renderView, boolean z10, boolean z11, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        this.f23449a = renderView;
        this.f23450b = z10;
        this.f23451c = z11;
        this.f23452d = interfaceC3269z5;
    }

    public final void a(final Bf insets) {
        Handler handler;
        Intrinsics.checkNotNullParameter(insets, "insets");
        final ViewGroup viewGroup = (ViewGroup) this.f23449a.getRootView().findViewById(65534);
        if (viewGroup == null || (handler = viewGroup.getHandler()) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: ub.e
            @Override // java.lang.Runnable
            public final void run() {
                A2.a(A2.this, viewGroup, insets);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a2, code lost:
        if (r2 == null) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.A2 r11, android.view.ViewGroup r12, com.inmobi.media.Bf r13) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.A2.a(com.inmobi.media.A2, android.view.ViewGroup, com.inmobi.media.Bf):void");
    }

    public final Pair a() {
        float f10 = U3.d().f24299c;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: ub.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                A2.a(A2.this, view);
            }
        };
        int i10 = (int) (50 * f10);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams.addRule(11);
        return ms.k.a(onClickListener, layoutParams);
    }

    public static final void a(A2 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            tf webViewFactory = this$0.f23449a.getWebViewFactory();
            webViewFactory.getClass();
            Intrinsics.checkNotNullParameter(DataLoaderHelper.PRELOAD_DEFAULT_SCENE, "id");
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                gestureDetector$OnGestureListenerC2941ec.i();
            }
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
        }
    }
}
