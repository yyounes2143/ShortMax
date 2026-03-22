package com.google.android.exoplayer2.metadata.scte35;

import b7.f0;
import b7.g0;
import b7.o0;
import com.google.android.exoplayer2.metadata.Metadata;
import g6.c;
import g6.e;
import java.nio.ByteBuffer;
/* compiled from: SpliceInfoDecoder.java */
/* loaded from: classes4.dex */
public final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private final g0 f18121a = new g0();

    /* renamed from: b  reason: collision with root package name */
    private final f0 f18122b = new f0();

    /* renamed from: c  reason: collision with root package name */
    private o0 f18123c;

    @Override // g6.e
    protected Metadata b(c cVar, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        o0 o0Var = this.f18123c;
        if (o0Var == null || cVar.f52214i != o0Var.e()) {
            o0 o0Var2 = new o0(cVar.f17475e);
            this.f18123c = o0Var2;
            o0Var2.a(cVar.f17475e - cVar.f52214i);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f18121a.N(array, limit);
        this.f18122b.o(array, limit);
        this.f18122b.r(39);
        long h10 = (this.f18122b.h(1) << 32) | this.f18122b.h(32);
        this.f18122b.r(20);
        int h11 = this.f18122b.h(12);
        int h12 = this.f18122b.h(8);
        this.f18121a.Q(14);
        if (h12 != 0) {
            if (h12 != 255) {
                if (h12 != 4) {
                    if (h12 != 5) {
                        if (h12 != 6) {
                            spliceNullCommand = null;
                        } else {
                            spliceNullCommand = TimeSignalCommand.a(this.f18121a, h10, this.f18123c);
                        }
                    } else {
                        spliceNullCommand = SpliceInsertCommand.a(this.f18121a, h10, this.f18123c);
                    }
                } else {
                    spliceNullCommand = SpliceScheduleCommand.a(this.f18121a);
                }
            } else {
                spliceNullCommand = PrivateCommand.a(this.f18121a, h11, h10);
            }
        } else {
            spliceNullCommand = new SpliceNullCommand();
        }
        if (spliceNullCommand == null) {
            return new Metadata(new Metadata.Entry[0]);
        }
        return new Metadata(spliceNullCommand);
    }
}
