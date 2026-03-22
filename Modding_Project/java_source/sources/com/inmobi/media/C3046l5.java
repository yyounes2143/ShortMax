package com.inmobi.media;

import android.view.OrientationEventListener;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
/* renamed from: com.inmobi.media.l5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3046l5 extends OrientationEventListener {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f24953d = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(C3046l5.class, "currentOrientation", "getCurrentOrientation()Lcom/inmobi/ads/rendering/orientation/Orientation;", 0))};

    /* renamed from: a  reason: collision with root package name */
    public final InMobiAdActivity f24954a;

    /* renamed from: b  reason: collision with root package name */
    public final HashSet f24955b;

    /* renamed from: c  reason: collision with root package name */
    public final C3030k5 f24956c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3046l5(InMobiAdActivity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f24954a = activity;
        this.f24955b = new HashSet();
        kotlin.properties.a aVar = kotlin.properties.a.f61064a;
        this.f24956c = new C3030k5(AbstractC3131qa.a(U3.g()), this);
    }

    public final void a(C3146ra orientationProperties) {
        Intrinsics.checkNotNullParameter(orientationProperties, "orientationProperties");
        try {
            if (!orientationProperties.f25242a) {
                String str = orientationProperties.f25243b;
                if (Intrinsics.areEqual(str, "landscape")) {
                    this.f24954a.setRequestedOrientation(6);
                } else if (Intrinsics.areEqual(str, "portrait")) {
                    this.f24954a.setRequestedOrientation(7);
                } else {
                    this.f24954a.setRequestedOrientation(13);
                }
            } else {
                this.f24954a.setRequestedOrientation(13);
            }
        } catch (IllegalStateException unused) {
        }
    }

    public final void b() {
        int i10 = this.f24954a.getResources().getConfiguration().orientation;
        byte g10 = U3.g();
        int i11 = 1;
        if (g10 != 1 && g10 != 2 && (g10 == 3 || g10 == 4)) {
            i11 = 2;
        }
        if (i10 == i11) {
            this.f24956c.setValue(this, f24953d[0], AbstractC3131qa.a(U3.g()));
        }
    }

    @Override // android.view.OrientationEventListener
    public final void onOrientationChanged(int i10) {
        b();
    }

    public final void a() {
        if (this.f24955b.isEmpty()) {
            disable();
        } else {
            enable();
        }
    }
}
