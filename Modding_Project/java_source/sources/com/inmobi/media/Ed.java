package com.inmobi.media;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes5.dex */
public final class Ed extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Fd f23626a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ed(Fd fd2, int i10) {
        super(i10);
        this.f23626a = fd2;
    }

    @Override // java.io.ByteArrayOutputStream
    public final synchronized String toString() {
        int i10;
        i10 = ((ByteArrayOutputStream) this).count;
        if (i10 > 0) {
            int i11 = i10 - 1;
            if (((ByteArrayOutputStream) this).buf[i11] == 13) {
                i10 = i11;
            }
        }
        try {
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
        return new String(((ByteArrayOutputStream) this).buf, 0, i10, this.f23626a.f23663b.name());
    }
}
