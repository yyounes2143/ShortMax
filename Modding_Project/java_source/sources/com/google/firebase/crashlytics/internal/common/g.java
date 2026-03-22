package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* compiled from: BytesBackedNativeSessionFile.java */
/* loaded from: classes5.dex */
class g implements l0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f20722a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f20723b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final String f20724c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(@NonNull String str, @NonNull String str2, @Nullable byte[] bArr) {
        this.f20723b = str;
        this.f20724c = str2;
        this.f20722a = bArr;
    }

    @Nullable
    private byte[] c() {
        if (d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f20722a);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th2) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private boolean d() {
        byte[] bArr = this.f20722a;
        if (bArr != null && bArr.length != 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.firebase.crashlytics.internal.common.l0
    @NonNull
    public String a() {
        return this.f20724c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.l0
    @Nullable
    public f0.d.b b() {
        byte[] c10 = c();
        if (c10 == null) {
            return null;
        }
        return f0.d.b.a().b(c10).c(this.f20723b).a();
    }

    @Override // com.google.firebase.crashlytics.internal.common.l0
    @Nullable
    public InputStream getStream() {
        if (d()) {
            return null;
        }
        return new ByteArrayInputStream(this.f20722a);
    }
}
