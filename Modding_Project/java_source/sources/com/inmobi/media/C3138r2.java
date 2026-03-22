package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.C3043l2;
import com.inmobi.media.C3138r2;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.r2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3138r2 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3170t2 f25222a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f25223b;

    public C3138r2(InterfaceC3170t2 mEventHandler, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(mEventHandler, "mEventHandler");
        this.f25222a = mEventHandler;
        this.f25223b = interfaceC3269z5;
    }

    public final void a(final C3043l2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        click.f24951i.set(false);
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: ub.e6
            @Override // java.lang.Runnable
            public final void run() {
                C3138r2.a(C3043l2.this, this, handler);
            }
        });
    }

    public static final void a(C3043l2 click, C3138r2 this$0, Handler handler) {
        Intrinsics.checkNotNullParameter(click, "$click");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        N9 n92 = new N9(click.f24944b, this$0.f25223b);
        n92.f23908x = false;
        n92.f23904t = false;
        n92.f23905u = false;
        HashMap a10 = C3234x2.a(C3234x2.f25412a, click);
        if (!a10.isEmpty()) {
            n92.f23893i.putAll(a10);
        }
        new vf(n92, new C3123q2(click, this$0, handler)).a();
    }
}
