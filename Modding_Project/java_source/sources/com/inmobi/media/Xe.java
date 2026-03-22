package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Xe {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3231x f24374a;

    /* renamed from: b  reason: collision with root package name */
    public C3240x8 f24375b;

    /* renamed from: c  reason: collision with root package name */
    public WeakReference f24376c;

    /* renamed from: d  reason: collision with root package name */
    public final AdConfig f24377d;

    public Xe(InterfaceC3231x container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.f24374a = container;
        this.f24377d = container.getAdConfig();
    }

    public abstract View a(View view, ViewGroup viewGroup, boolean z10);

    public void a() {
        WeakReference weakReference = this.f24376c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    public abstract void a(byte b10);

    public abstract void a(Context context, byte b10);

    public abstract void a(View view);

    public abstract void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose);

    public abstract void a(Map map);

    public View b() {
        WeakReference weakReference = this.f24376c;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public C3240x8 c() {
        return this.f24375b;
    }

    public View d() {
        return null;
    }

    public abstract void e();
}
