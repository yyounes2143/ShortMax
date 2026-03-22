package com.facebook.datasource;

import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: DataSource.java */
/* loaded from: classes3.dex */
public interface b<T> {
    boolean a();

    Throwable b();

    void c(d<T> dVar, Executor executor);

    boolean close();

    boolean d();

    boolean e();

    Map<String, Object> getExtras();

    float getProgress();

    T getResult();
}
