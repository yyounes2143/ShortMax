package com.inmobi.media;

import android.content.Context;
import android.widget.FrameLayout;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class K8 extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final byte f23780a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K8(Context context, byte b10) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f23780a = b10;
    }

    public abstract void a(C2985h8 c2985h8, L8 l82, int i10, int i11, D8 d82);

    public final byte getType() {
        return this.f23780a;
    }
}
