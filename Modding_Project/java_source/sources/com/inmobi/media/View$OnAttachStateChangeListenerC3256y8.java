package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class View$OnAttachStateChangeListenerC3256y8 implements View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ D8 f25459a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f25460b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C2920d8 f25461c;

    public View$OnAttachStateChangeListenerC3256y8(D8 d82, ArrayList arrayList, C2920d8 c2920d8) {
        this.f25459a = d82;
        this.f25460b = arrayList;
        this.f25461c = c2920d8;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f25459a.f23581l.a(this.f25460b);
        T7 t72 = this.f25459a.f23571b;
        C2920d8 a10 = t72.a(t72.f24177b, this.f25461c);
        C2920d8 c2920d8 = this.f25461c;
        T7 t73 = this.f25459a.f23571b;
        if (a10 == null) {
            a10 = c2920d8;
        }
        c2920d8.a("creativeView", t73.a(a10), (L7) null, this.f25459a.f23575f);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        v10.removeOnAttachStateChangeListener(this);
        C2879b1 c2879b1 = this.f25459a.f23581l;
        ArrayList<C2862a1> arrayList = this.f25460b;
        c2879b1.getClass();
        if (arrayList != null) {
            for (C2862a1 c2862a1 : arrayList) {
                c2862a1.f24469a.cancel();
            }
            c2879b1.f24515b.removeAll(arrayList);
        }
    }
}
