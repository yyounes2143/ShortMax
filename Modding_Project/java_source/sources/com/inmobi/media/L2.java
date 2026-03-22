package com.inmobi.media;

import android.os.HandlerThread;
import android.os.Looper;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class L2 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final L2 f23795a = new L2();

    public L2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = O2.f23923a;
        HandlerThread handlerThread = new HandlerThread(O2.b());
        D4.a(handlerThread, O2.b());
        Looper looper = handlerThread.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
        return new I2(looper);
    }
}
