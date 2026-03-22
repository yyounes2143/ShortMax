package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.AbstractC3166se;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.se  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3166se extends G1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC3166se(S0 obj, byte b10) {
        super(obj);
        Intrinsics.checkNotNullParameter(obj, "obj");
    }

    public static final void a(AbstractC3166se this$0, Object obj) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(obj);
    }

    public abstract void a(Object obj);

    public final void b(final Object obj) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.l6
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC3166se.a(AbstractC3166se.this, obj);
            }
        });
    }
}
