package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.h1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class HandlerC2978h1 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public boolean f24786a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2978h1(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.f24786a = true;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        boolean z10;
        Intrinsics.checkNotNullParameter(msg, "msg");
        z10 = C3026k1.f24918c;
        if (z10) {
            return;
        }
        int i10 = msg.what;
        if (i10 == 1001 && this.f24786a) {
            this.f24786a = false;
            C3026k1.a(C3026k1.f24916a, false);
            Intrinsics.checkNotNullExpressionValue(C3026k1.b(), "access$getTAG$p(...)");
        } else if (i10 == 1002 && !this.f24786a) {
            this.f24786a = true;
            C3026k1.a(C3026k1.f24916a, true);
            Intrinsics.checkNotNullExpressionValue(C3026k1.b(), "access$getTAG$p(...)");
        }
    }
}
