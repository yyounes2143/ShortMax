package com.google.android.exoplayer2.mediacodec;

import b7.s0;
import b7.u;
import com.google.android.exoplayer2.mediacodec.b;
import com.google.android.exoplayer2.mediacodec.j;
import com.google.android.exoplayer2.mediacodec.q;
import java.io.IOException;
/* compiled from: DefaultMediaCodecAdapterFactory.java */
/* loaded from: classes4.dex */
public final class h implements j.b {

    /* renamed from: a  reason: collision with root package name */
    private int f17960a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17961b;

    @Override // com.google.android.exoplayer2.mediacodec.j.b
    public j a(j.a aVar) throws IOException {
        int i10;
        int i11 = s0.f2506a;
        if (i11 >= 23 && ((i10 = this.f17960a) == 1 || (i10 == 0 && i11 >= 31))) {
            int i12 = u.i(aVar.f17969c.f19157l);
            b7.q.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + s0.g0(i12));
            return new b.C0289b(i12, this.f17961b).a(aVar);
        }
        return new q.b().a(aVar);
    }
}
