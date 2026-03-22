package com.inmobi.media;

import android.content.Context;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.o9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class RunnableC3098o9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f25120a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference f25121b;

    public RunnableC3098o9(Context context, ImageView imageView) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        this.f25120a = new WeakReference(context);
        this.f25121b = new WeakReference(imageView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = (Context) this.f25120a.get();
        ImageView imageView = (ImageView) this.f25121b.get();
        if (context != null && imageView != null) {
            HashMap hashMap = D9.f23586c;
            C3082n9.a(context, imageView);
        }
    }
}
