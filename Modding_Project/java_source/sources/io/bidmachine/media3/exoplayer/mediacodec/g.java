package io.bidmachine.media3.exoplayer.mediacodec;

import android.content.Context;
import android.os.HandlerThread;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.mediacodec.b;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import io.bidmachine.media3.exoplayer.mediacodec.q;
import java.io.IOException;
import zm.u;
/* compiled from: DefaultMediaCodecAdapterFactory.java */
/* loaded from: classes8.dex */
public final class g implements h.b {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Context f56563b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final h7.n<HandlerThread> f56564c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final h7.n<HandlerThread> f56565d;

    /* renamed from: e  reason: collision with root package name */
    private int f56566e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56567f;

    @Deprecated
    public g() {
        this.f56566e = 0;
        this.f56567f = false;
        this.f56563b = null;
        this.f56564c = null;
        this.f56565d = null;
    }

    private boolean c() {
        int i10 = m0.f3614a;
        if (i10 >= 31) {
            return true;
        }
        Context context = this.f56563b;
        if (context != null && i10 >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen")) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.h.b
    public h b(h.a aVar) throws IOException {
        int i10;
        b.C0805b c0805b;
        h7.n<HandlerThread> nVar;
        if (m0.f3614a >= 23 && ((i10 = this.f56566e) == 1 || (i10 == 0 && c()))) {
            int k10 = u.k(aVar.f56570c.f55174o);
            cn.r.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + m0.t0(k10));
            h7.n<HandlerThread> nVar2 = this.f56564c;
            if (nVar2 != null && (nVar = this.f56565d) != null) {
                c0805b = new b.C0805b(nVar2, nVar);
            } else {
                c0805b = new b.C0805b(k10);
            }
            c0805b.f(this.f56567f);
            return c0805b.b(aVar);
        }
        return new q.b().b(aVar);
    }

    public g(Context context) {
        this(context, null, null);
    }

    public g(Context context, @Nullable h7.n<HandlerThread> nVar, @Nullable h7.n<HandlerThread> nVar2) {
        this.f56563b = context;
        this.f56566e = 0;
        this.f56567f = false;
        this.f56564c = nVar;
        this.f56565d = nVar2;
    }
}
