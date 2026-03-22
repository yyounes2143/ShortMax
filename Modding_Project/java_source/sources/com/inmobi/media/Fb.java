package com.inmobi.media;

import android.content.Context;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Fb extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Fb f23660a = new Fb();

    public Fb() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        Context d10 = Uc.d();
        Intrinsics.checkNotNull(d10);
        C6 a10 = B6.a(d10, DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        Intrinsics.checkNotNullParameter("enableImraidLogs", "key");
        return Boolean.valueOf(a10.f23530a.getBoolean("enableImraidLogs", false));
    }
}
