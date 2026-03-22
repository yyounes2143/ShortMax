package com.mbridge.msdk.preload.listenter;

import com.mbridge.msdk.out.PreloadListener;
import java.lang.ref.WeakReference;
/* compiled from: PreloadListenerEx.java */
/* loaded from: classes6.dex */
public class a implements PreloadListener {

    /* renamed from: a  reason: collision with root package name */
    WeakReference<PreloadListener> f28491a;

    /* renamed from: b  reason: collision with root package name */
    private int f28492b = 0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28493c = false;

    public a(PreloadListener preloadListener) {
        if (preloadListener != null) {
            this.f28491a = new WeakReference<>(preloadListener);
        }
    }

    public boolean a() {
        return this.f28493c;
    }

    @Override // com.mbridge.msdk.out.PreloadListener
    public void onPreloadFaild(String str) {
        WeakReference<PreloadListener> weakReference = this.f28491a;
        if (weakReference != null && weakReference.get() != null) {
            this.f28491a.get().onPreloadFaild(str);
        }
    }

    @Override // com.mbridge.msdk.out.PreloadListener
    public void onPreloadSucceed() {
        WeakReference<PreloadListener> weakReference = this.f28491a;
        if (weakReference != null && weakReference.get() != null) {
            this.f28491a.get().onPreloadSucceed();
        }
    }

    public void a(boolean z10) {
        this.f28493c = z10;
    }
}
