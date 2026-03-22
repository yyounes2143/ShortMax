package com.apm.insight.l;

import androidx.annotation.NonNull;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* compiled from: DigestPrintWriter.java */
/* loaded from: classes2.dex */
public final class e extends PrintWriter {

    /* renamed from: a  reason: collision with root package name */
    private MessageDigest f7058a;

    /* renamed from: b  reason: collision with root package name */
    private Charset f7059b;

    /* renamed from: c  reason: collision with root package name */
    private a f7060c;

    /* compiled from: DigestPrintWriter.java */
    /* loaded from: classes2.dex */
    public static class a {
        public boolean a(String str) {
            return true;
        }
    }

    public e(@NonNull OutputStream outputStream, MessageDigest messageDigest, a aVar) {
        super(outputStream);
        this.f7059b = null;
        this.f7058a = messageDigest;
        this.f7060c = aVar;
        if (messageDigest != null) {
            this.f7059b = Charset.defaultCharset();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public final void write(@NonNull char[] cArr, int i10, int i11) {
        super.write(cArr, i10, i11);
        MessageDigest messageDigest = this.f7058a;
        if (messageDigest != null) {
            messageDigest.update(this.f7059b.encode(CharBuffer.wrap(cArr)).array());
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public final void write(int i10) {
        super.write(i10);
        MessageDigest messageDigest = this.f7058a;
        if (messageDigest != null) {
            messageDigest.update((byte) i10);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public final void write(@NonNull String str, int i10, int i11) {
        super.write(str, i10, i11);
        if (this.f7058a != null) {
            a aVar = this.f7060c;
            if (aVar == null || aVar.a(str)) {
                this.f7058a.update(this.f7059b.encode(CharBuffer.wrap(str, i10, i11 + i10)).array());
            }
        }
    }
}
