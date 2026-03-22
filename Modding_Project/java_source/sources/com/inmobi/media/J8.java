package com.inmobi.media;

import android.content.Context;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class J8 extends C3017j8 {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference f23759a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J8(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Nullable
    public final T7 getNativeStrandAd() {
        WeakReference weakReference = this.f23759a;
        if (weakReference != null) {
            return (T7) weakReference.get();
        }
        return null;
    }

    public final void setNativeStrandAd(@Nullable T7 t72) {
        this.f23759a = new WeakReference(t72);
    }
}
