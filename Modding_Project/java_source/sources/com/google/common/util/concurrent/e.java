package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* compiled from: ListenableFuture.java */
/* loaded from: classes5.dex */
public interface e<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
