package gn;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.audio.DefaultAudioSink;
import io.bidmachine.media3.exoplayer.h2;
import io.bidmachine.media3.exoplayer.mediacodec.h;
import io.bidmachine.media3.exoplayer.video.h;
import java.util.ArrayList;
import on.c;
/* compiled from: DefaultRenderersFactory.java */
/* loaded from: classes8.dex */
public class d implements h0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f52441a;

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.mediacodec.g f52442b;

    /* renamed from: e  reason: collision with root package name */
    private boolean f52445e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f52447g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f52448h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f52449i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f52450j;

    /* renamed from: c  reason: collision with root package name */
    private int f52443c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f52444d = 5000;

    /* renamed from: f  reason: collision with root package name */
    private io.bidmachine.media3.exoplayer.mediacodec.l f52446f = io.bidmachine.media3.exoplayer.mediacodec.l.f56588a;

    /* renamed from: k  reason: collision with root package name */
    private long f52451k = -9223372036854775807L;

    public d(Context context) {
        this.f52441a = context;
        this.f52442b = new io.bidmachine.media3.exoplayer.mediacodec.g(context);
    }

    @Override // gn.h0
    @Nullable
    public h2 a(h2 h2Var, Handler handler, io.bidmachine.media3.exoplayer.video.p pVar, io.bidmachine.media3.exoplayer.audio.e eVar, un.h hVar, qn.b bVar) {
        if (h2Var.getTrackType() == 2) {
            return i(h2Var, this.f52441a, this.f52443c, this.f52446f, this.f52445e, handler, pVar, this.f52444d);
        }
        return null;
    }

    @Override // gn.h0
    public h2[] b(Handler handler, io.bidmachine.media3.exoplayer.video.p pVar, io.bidmachine.media3.exoplayer.audio.e eVar, un.h hVar, qn.b bVar) {
        ArrayList<h2> arrayList = new ArrayList<>();
        k(this.f52441a, this.f52443c, this.f52446f, this.f52445e, handler, pVar, this.f52444d, arrayList);
        AudioSink d10 = d(this.f52441a, this.f52447g, this.f52448h);
        if (d10 != null) {
            c(this.f52441a, this.f52443c, this.f52446f, this.f52445e, d10, handler, eVar, arrayList);
        }
        j(this.f52441a, hVar, handler.getLooper(), this.f52443c, arrayList);
        g(this.f52441a, bVar, handler.getLooper(), this.f52443c, arrayList);
        e(this.f52441a, this.f52443c, arrayList);
        f(arrayList);
        h(this.f52441a, handler, this.f52443c, arrayList);
        return (h2[]) arrayList.toArray(new h2[0]);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:5|(1:7)|8|9|10|11|12|13|(3:14|15|16)|(2:17|18)|20|21|22|23|24|(16:26|27|28|29|30|32|33|34|35|36|38|39|40|41|42|(2:44|45))) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:17|18)|20|21|22|23|24|(16:26|27|28|29|30|32|33|34|35|36|38|39|40|41|42|(2:44|45))) */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b3, code lost:
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bd, code lost:
        r9 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void c(android.content.Context r18, int r19, io.bidmachine.media3.exoplayer.mediacodec.l r20, boolean r21, io.bidmachine.media3.exoplayer.audio.AudioSink r22, android.os.Handler r23, io.bidmachine.media3.exoplayer.audio.e r24, java.util.ArrayList<io.bidmachine.media3.exoplayer.h2> r25) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gn.d.c(android.content.Context, int, io.bidmachine.media3.exoplayer.mediacodec.l, boolean, io.bidmachine.media3.exoplayer.audio.AudioSink, android.os.Handler, io.bidmachine.media3.exoplayer.audio.e, java.util.ArrayList):void");
    }

    @Nullable
    protected AudioSink d(Context context, boolean z10, boolean z11) {
        return new DefaultAudioSink.g(context).l(z10).k(z11).j();
    }

    protected void e(Context context, int i10, ArrayList<h2> arrayList) {
        arrayList.add(new zn.b());
    }

    protected void f(ArrayList<h2> arrayList) {
        arrayList.add(new on.e(m(), null));
    }

    protected void g(Context context, qn.b bVar, Looper looper, int i10, ArrayList<h2> arrayList) {
        arrayList.add(new qn.c(bVar, looper));
        arrayList.add(new qn.c(bVar, looper));
    }

    @Nullable
    protected h2 i(h2 h2Var, Context context, int i10, io.bidmachine.media3.exoplayer.mediacodec.l lVar, boolean z10, Handler handler, io.bidmachine.media3.exoplayer.video.p pVar, long j10) {
        if (this.f52449i && h2Var.getClass() == io.bidmachine.media3.exoplayer.video.h.class) {
            return new h.d(context).q(l()).v(lVar).p(j10).r(z10).s(handler).t(pVar).u(50).o(this.f52450j).n(this.f52451k).m();
        }
        return null;
    }

    protected void j(Context context, un.h hVar, Looper looper, int i10, ArrayList<h2> arrayList) {
        arrayList.add(new un.i(hVar, looper));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:11|12)|14|15|16|17|18|(2:20|21)) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00bf, code lost:
        r7 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void k(android.content.Context r6, int r7, io.bidmachine.media3.exoplayer.mediacodec.l r8, boolean r9, android.os.Handler r10, io.bidmachine.media3.exoplayer.video.p r11, long r12, java.util.ArrayList<io.bidmachine.media3.exoplayer.h2> r14) {
        /*
            r5 = this;
            java.lang.String r0 = "DefaultRenderersFactory"
            java.lang.Class<io.bidmachine.media3.exoplayer.video.p> r1 = io.bidmachine.media3.exoplayer.video.p.class
            java.lang.Class<android.os.Handler> r2 = android.os.Handler.class
            io.bidmachine.media3.exoplayer.video.h$d r3 = new io.bidmachine.media3.exoplayer.video.h$d
            r3.<init>(r6)
            io.bidmachine.media3.exoplayer.mediacodec.h$b r6 = r5.l()
            io.bidmachine.media3.exoplayer.video.h$d r6 = r3.q(r6)
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.v(r8)
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.p(r12)
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.r(r9)
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.s(r10)
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.t(r11)
            r8 = 50
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.u(r8)
            boolean r8 = r5.f52450j
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.o(r8)
            long r3 = r5.f52451k
            io.bidmachine.media3.exoplayer.video.h$d r6 = r6.n(r3)
            io.bidmachine.media3.exoplayer.video.h r6 = r6.m()
            r14.add(r6)
            if (r7 != 0) goto L47
            return
        L47:
            int r6 = r14.size()
            r8 = 2
            if (r7 != r8) goto L50
            int r6 = r6 + (-1)
        L50:
            java.lang.String r7 = "io.bidmachine.media3.decoder.vp9.LibvpxVideoRenderer"
            java.lang.Class r7 = java.lang.Class.forName(r7)     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.Class r8 = java.lang.Long.TYPE     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.Class[] r8 = new java.lang.Class[]{r8, r2, r1, r3}     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.reflect.Constructor r7 = r7.getConstructor(r8)     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.Long r8 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r10, r11, r9}     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            java.lang.Object r7 = r7.newInstance(r8)     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            io.bidmachine.media3.exoplayer.h2 r7 = (io.bidmachine.media3.exoplayer.h2) r7     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L87
            int r8 = r6 + 1
            r14.add(r6, r7)     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L7d
            java.lang.String r6 = "Loaded LibvpxVideoRenderer."
            cn.r.f(r0, r6)     // Catch: java.lang.Exception -> L7b java.lang.ClassNotFoundException -> L7d
            goto L88
        L7b:
            r6 = move-exception
            goto L7f
        L7d:
            r6 = r8
            goto L87
        L7f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Error instantiating VP9 extension"
            r7.<init>(r8, r6)
            throw r7
        L87:
            r8 = r6
        L88:
            java.lang.String r6 = "io.bidmachine.media3.decoder.av1.Libgav1VideoRenderer"
            java.lang.Class r6 = java.lang.Class.forName(r6)     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.Class r7 = java.lang.Long.TYPE     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.Class[] r7 = new java.lang.Class[]{r7, r2, r1, r3}     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.reflect.Constructor r6 = r6.getConstructor(r7)     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.Long r7 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.Object[] r7 = new java.lang.Object[]{r7, r10, r11, r9}     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            java.lang.Object r6 = r6.newInstance(r7)     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            io.bidmachine.media3.exoplayer.h2 r6 = (io.bidmachine.media3.exoplayer.h2) r6     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lbf
            int r7 = r8 + 1
            r14.add(r8, r6)     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lb5
            java.lang.String r6 = "Loaded Libgav1VideoRenderer."
            cn.r.f(r0, r6)     // Catch: java.lang.Exception -> Lb3 java.lang.ClassNotFoundException -> Lb5
            goto Lc0
        Lb3:
            r6 = move-exception
            goto Lb7
        Lb5:
            r8 = r7
            goto Lbf
        Lb7:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Error instantiating AV1 extension"
            r7.<init>(r8, r6)
            throw r7
        Lbf:
            r7 = r8
        Lc0:
            java.lang.String r6 = "io.bidmachine.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer"
            java.lang.Class r6 = java.lang.Class.forName(r6)     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.Class r8 = java.lang.Long.TYPE     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.Class[] r8 = new java.lang.Class[]{r8, r2, r1, r3}     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.reflect.Constructor r6 = r6.getConstructor(r8)     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.Long r8 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r10, r11, r9}     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.Object r6 = r6.newInstance(r8)     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            io.bidmachine.media3.exoplayer.h2 r6 = (io.bidmachine.media3.exoplayer.h2) r6     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            r14.add(r7, r6)     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            java.lang.String r6 = "Loaded FfmpegVideoRenderer."
            cn.r.f(r0, r6)     // Catch: java.lang.Exception -> Le9 java.lang.ClassNotFoundException -> Lf2
            goto Lf2
        Le9:
            r6 = move-exception
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Error instantiating FFmpeg extension"
            r7.<init>(r8, r6)
            throw r7
        Lf2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gn.d.k(android.content.Context, int, io.bidmachine.media3.exoplayer.mediacodec.l, boolean, android.os.Handler, io.bidmachine.media3.exoplayer.video.p, long, java.util.ArrayList):void");
    }

    protected h.b l() {
        return this.f52442b;
    }

    protected c.a m() {
        return c.a.f64310a;
    }

    protected void h(Context context, Handler handler, int i10, ArrayList<h2> arrayList) {
    }
}
