package com.inmobi.media;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.r6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class ViewTreeObserver$OnGlobalLayoutListenerC3142r6 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f25231a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f25232b;

    /* renamed from: c  reason: collision with root package name */
    public int f25233c;

    /* renamed from: d  reason: collision with root package name */
    public int f25234d;

    public ViewTreeObserver$OnGlobalLayoutListenerC3142r6(FrameLayout view, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f25231a = view;
        this.f25232b = interfaceC3269z5;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        try {
            InterfaceC3269z5 interfaceC3269z5 = this.f25232b;
            if (interfaceC3269z5 != null) {
                String str = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).a(str, "close called");
            }
            this.f25233c = B2.b(this.f25231a.getWidth() / U3.b());
            this.f25234d = B2.b(this.f25231a.getHeight() / U3.b());
            this.f25231a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            Boolean bool = Boolean.FALSE;
            synchronized (bool) {
                bool.notify();
                Unit unit = Unit.f60915a;
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25232b;
            if (interfaceC3269z52 != null) {
                String str2 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in JavaScriptBridge$1.onGlobalLayout(); ")));
            }
        }
    }
}
