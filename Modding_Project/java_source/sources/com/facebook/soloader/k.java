package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.y;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* compiled from: ExoSoSource.java */
/* loaded from: classes2.dex */
public final class k extends y {

    /* compiled from: ExoSoSource.java */
    /* loaded from: classes2.dex */
    private final class a extends y.e {

        /* renamed from: a  reason: collision with root package name */
        private final b[] f16855a;

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00f7, code lost:
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r12 + "]");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        a(com.facebook.soloader.y r20) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 318
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.k.a.<init>(com.facebook.soloader.k, com.facebook.soloader.y):void");
        }

        @Override // com.facebook.soloader.y.e
        public y.c[] d() throws IOException {
            return this.f16855a;
        }

        @Override // com.facebook.soloader.y.e
        public void g(File file) throws IOException {
            b[] bVarArr;
            byte[] bArr = new byte[32768];
            for (b bVar : this.f16855a) {
                FileInputStream fileInputStream = new FileInputStream(bVar.f16857c);
                try {
                    y.d dVar = new y.d(bVar, fileInputStream);
                    a(dVar, bArr, file);
                    dVar.close();
                } catch (Throwable th2) {
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th2;
                }
            }
        }
    }

    /* compiled from: ExoSoSource.java */
    /* loaded from: classes2.dex */
    private static final class b extends y.c {

        /* renamed from: c  reason: collision with root package name */
        final File f16857c;

        b(String str, String str2, File file) {
            super(str, str2);
            this.f16857c = file;
        }
    }

    public k(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.f, com.facebook.soloader.w
    public String c() {
        return "ExoSoSource";
    }

    @Override // com.facebook.soloader.y
    protected y.e q() throws IOException {
        return new a(this);
    }
}
