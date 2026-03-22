package o5;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.mediacodec.j;
import com.google.android.exoplayer2.p1;
import java.util.ArrayList;
/* compiled from: DefaultRenderersFactory.java */
/* loaded from: classes4.dex */
public class n implements q0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f63112a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f63116e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f63118g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f63119h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f63120i;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.mediacodec.h f63113b = new com.google.android.exoplayer2.mediacodec.h();

    /* renamed from: c  reason: collision with root package name */
    private int f63114c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f63115d = 5000;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.mediacodec.l f63117f = com.google.android.exoplayer2.mediacodec.l.f17984a;

    public n(Context context) {
        this.f63112a = context;
    }

    @Override // o5.q0
    public p1[] a(Handler handler, c7.x xVar, com.google.android.exoplayer2.audio.b bVar, p6.o oVar, g6.d dVar) {
        ArrayList<p1> arrayList = new ArrayList<>();
        h(this.f63112a, this.f63114c, this.f63117f, this.f63116e, handler, xVar, this.f63115d, arrayList);
        AudioSink c10 = c(this.f63112a, this.f63118g, this.f63119h, this.f63120i);
        if (c10 != null) {
            b(this.f63112a, this.f63114c, this.f63117f, this.f63116e, c10, handler, bVar, arrayList);
        }
        g(this.f63112a, oVar, handler.getLooper(), this.f63114c, arrayList);
        e(this.f63112a, dVar, handler.getLooper(), this.f63114c, arrayList);
        d(this.f63112a, this.f63114c, arrayList);
        f(this.f63112a, handler, this.f63114c, arrayList);
        return (p1[]) arrayList.toArray(new p1[0]);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(3:8|9|10)|(7:(2:11|12)|22|23|24|25|26|(2:28|29))|13|14|15|16|17|18|19|20) */
    /* JADX WARN: Can't wrap try/catch for region: R(14:5|(1:7)|8|9|10|(7:(2:11|12)|22|23|24|25|26|(2:28|29))|13|14|15|16|17|18|19|20) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:11|12)|22|23|24|25|26|(2:28|29)) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0090, code lost:
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
        r1 = r21;
        r3 = r22;
        r4 = "DefaultRenderersFactory";
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a0, code lost:
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d0, code lost:
        r2 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void b(android.content.Context r17, int r18, com.google.android.exoplayer2.mediacodec.l r19, boolean r20, com.google.android.exoplayer2.audio.AudioSink r21, android.os.Handler r22, com.google.android.exoplayer2.audio.b r23, java.util.ArrayList<com.google.android.exoplayer2.p1> r24) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o5.n.b(android.content.Context, int, com.google.android.exoplayer2.mediacodec.l, boolean, com.google.android.exoplayer2.audio.AudioSink, android.os.Handler, com.google.android.exoplayer2.audio.b, java.util.ArrayList):void");
    }

    @Nullable
    protected AudioSink c(Context context, boolean z10, boolean z11, boolean z12) {
        return new DefaultAudioSink.f().g(q5.h.c(context)).i(z10).h(z11).j(z12 ? 1 : 0).f();
    }

    protected void d(Context context, int i10, ArrayList<p1> arrayList) {
        arrayList.add(new d7.b());
    }

    protected void e(Context context, g6.d dVar, Looper looper, int i10, ArrayList<p1> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.a(dVar, looper));
    }

    protected void g(Context context, p6.o oVar, Looper looper, int i10, ArrayList<p1> arrayList) {
        arrayList.add(new p6.p(oVar, looper));
    }

    protected void h(Context context, int i10, com.google.android.exoplayer2.mediacodec.l lVar, boolean z10, Handler handler, c7.x xVar, long j10, ArrayList<p1> arrayList) {
        Handler handler2;
        Class cls;
        String str;
        int i11;
        arrayList.add(new c7.h(context, i(), lVar, j10, z10, handler, xVar, 50));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                handler2 = handler;
                cls = Handler.class;
                try {
                    i11 = size + 1;
                    try {
                        arrayList.add(size, (p1) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, c7.x.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler2, xVar, 50));
                        str = "DefaultRenderersFactory";
                        try {
                            b7.q.f(str, "Loaded LibvpxVideoRenderer.");
                        } catch (ClassNotFoundException unused) {
                            size = i11;
                            i11 = size;
                            arrayList.add(i11, (p1) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, cls, c7.x.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler2, xVar, 50));
                            b7.q.f(str, "Loaded Libgav1VideoRenderer.");
                        }
                    } catch (ClassNotFoundException unused2) {
                        str = "DefaultRenderersFactory";
                    }
                } catch (ClassNotFoundException unused3) {
                    str = "DefaultRenderersFactory";
                    i11 = size;
                    arrayList.add(i11, (p1) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, cls, c7.x.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler2, xVar, 50));
                    b7.q.f(str, "Loaded Libgav1VideoRenderer.");
                }
            } catch (ClassNotFoundException unused4) {
                handler2 = handler;
                cls = Handler.class;
            }
            try {
                arrayList.add(i11, (p1) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, cls, c7.x.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler2, xVar, 50));
                b7.q.f(str, "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused5) {
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating AV1 extension", e10);
            }
        } catch (Exception e11) {
            throw new RuntimeException("Error instantiating VP9 extension", e11);
        }
    }

    protected j.b i() {
        return this.f63113b;
    }

    protected void f(Context context, Handler handler, int i10, ArrayList<p1> arrayList) {
    }
}
