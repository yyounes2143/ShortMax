package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.C2975ge;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ge  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2975ge {

    /* renamed from: a  reason: collision with root package name */
    public final S0 f24779a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f24780b;

    public C2975ge(S0 timeOutInformer) {
        Intrinsics.checkNotNullParameter(timeOutInformer, "timeOutInformer");
        this.f24779a = timeOutInformer;
        this.f24780b = new HashMap();
    }

    public final void a(final byte b10) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.l4
            @Override // java.lang.Runnable
            public final void run() {
                C2975ge.a(C2975ge.this, b10);
            }
        });
    }

    public static final void a(C2975ge this$0, byte b10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f24779a.a(b10);
    }
}
