package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;
/* compiled from: PiecemealSerialExecutor.java */
/* loaded from: classes3.dex */
public class f implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f11476a;

    public static f a() {
        if (f11476a == null) {
            synchronized (f.class) {
                try {
                    if (f11476a == null) {
                        f11476a = new f();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f11476a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.t().execute(runnable);
    }
}
