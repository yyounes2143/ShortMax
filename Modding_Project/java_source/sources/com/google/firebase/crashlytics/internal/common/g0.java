package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* compiled from: FileBackedNativeSessionFile.java */
/* loaded from: classes5.dex */
class g0 implements l0 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final File f20725a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f20726b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final String f20727c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(@NonNull String str, @NonNull String str2, @NonNull File file) {
        this.f20726b = str;
        this.f20727c = str2;
        this.f20725a = file;
    }

    @Nullable
    private byte[] c() {
        byte[] bArr = new byte[8192];
        try {
            InputStream stream = getStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            if (stream == null) {
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (stream != null) {
                    stream.close();
                }
                return null;
            }
            while (true) {
                try {
                    int read = stream.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream.finish();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                        stream.close();
                        return byteArray;
                    }
                } catch (Throwable th2) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.common.l0
    @NonNull
    public String a() {
        return this.f20727c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.l0
    @Nullable
    public f0.d.b b() {
        byte[] c10 = c();
        if (c10 != null) {
            return f0.d.b.a().b(c10).c(this.f20726b).a();
        }
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.common.l0
    @Nullable
    public InputStream getStream() {
        if (this.f20725a.exists() && this.f20725a.isFile()) {
            try {
                return new FileInputStream(this.f20725a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }
}
