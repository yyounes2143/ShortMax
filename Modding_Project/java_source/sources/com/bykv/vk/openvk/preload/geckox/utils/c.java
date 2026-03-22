package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;
/* compiled from: IOSerialExecutor.java */
/* loaded from: classes3.dex */
public class c implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f11474a;

    public static c a() {
        if (f11474a == null) {
            synchronized (c.class) {
                try {
                    if (f11474a == null) {
                        f11474a = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f11474a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.t().execute(runnable);
    }
}
