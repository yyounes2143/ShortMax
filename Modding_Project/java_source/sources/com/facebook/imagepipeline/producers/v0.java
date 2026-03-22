package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.c0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
/* compiled from: NetworkFetcher.java */
/* loaded from: classes3.dex */
public interface v0<FETCH_STATE extends c0> {

    /* compiled from: NetworkFetcher.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b(InputStream inputStream, int i10) throws IOException;

        void onFailure(Throwable th2);
    }

    void a(FETCH_STATE fetch_state, int i10);

    FETCH_STATE b(n<y3.k> nVar, c1 c1Var);

    void c(FETCH_STATE fetch_state, a aVar);

    boolean d(FETCH_STATE fetch_state);

    Map<String, String> e(FETCH_STATE fetch_state, int i10);
}
