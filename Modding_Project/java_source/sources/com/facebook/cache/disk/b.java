package com.facebook.cache.disk;

import f2.f;
import java.io.IOException;
import java.util.Collection;
/* compiled from: DiskStorage.java */
/* loaded from: classes3.dex */
public interface b {

    /* compiled from: DiskStorage.java */
    /* loaded from: classes3.dex */
    public interface a {
        String getId();

        long getSize();

        long getTimestamp();
    }

    /* compiled from: DiskStorage.java */
    /* renamed from: com.facebook.cache.disk.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0258b {
        void A(f fVar, Object obj) throws IOException;

        com.facebook.binaryresource.a B(Object obj) throws IOException;

        boolean z();
    }

    long a(a aVar) throws IOException;

    InterfaceC0258b b(String str, Object obj) throws IOException;

    boolean c(String str, Object obj) throws IOException;

    void d();

    boolean e(String str, Object obj) throws IOException;

    com.facebook.binaryresource.a f(String str, Object obj) throws IOException;

    Collection<a> getEntries() throws IOException;

    boolean isExternal();

    long remove(String str) throws IOException;
}
