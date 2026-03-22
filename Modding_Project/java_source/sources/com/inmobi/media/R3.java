package com.inmobi.media;

import java.io.Closeable;
import java.io.InputStream;
/* loaded from: classes5.dex */
public final class R3 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final InputStream[] f24058a;

    public R3(InputStream[] inputStreamArr) {
        this.f24058a = inputStreamArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        for (InputStream inputStream : this.f24058a) {
            Ge.a(inputStream);
        }
    }
}
