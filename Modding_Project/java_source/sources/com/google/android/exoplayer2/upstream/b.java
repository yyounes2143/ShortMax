package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import n6.h;
import n6.i;
/* compiled from: LoadErrorHandlingPolicy.java */
/* loaded from: classes4.dex */
public interface b {

    /* compiled from: LoadErrorHandlingPolicy.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final h f19116a;

        /* renamed from: b  reason: collision with root package name */
        public final i f19117b;

        /* renamed from: c  reason: collision with root package name */
        public final IOException f19118c;

        /* renamed from: d  reason: collision with root package name */
        public final int f19119d;

        public a(h hVar, i iVar, IOException iOException, int i10) {
            this.f19116a = hVar;
            this.f19117b = iVar;
            this.f19118c = iOException;
            this.f19119d = i10;
        }
    }

    int b(int i10);

    long c(a aVar);

    default void a(long j10) {
    }
}
