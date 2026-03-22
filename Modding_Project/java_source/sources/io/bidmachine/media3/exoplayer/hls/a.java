package io.bidmachine.media3.exoplayer.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import en.o;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Aes128DataSource.java */
/* loaded from: classes8.dex */
class a implements en.d {

    /* renamed from: a  reason: collision with root package name */
    private final en.d f56001a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f56002b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f56003c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CipherInputStream f56004d;

    public a(en.d dVar, byte[] bArr, byte[] bArr2) {
        this.f56001a = dVar;
        this.f56002b = bArr;
        this.f56003c = bArr2;
    }

    @Override // en.d
    public final long b(en.g gVar) throws IOException {
        try {
            Cipher d10 = d();
            try {
                d10.init(2, new SecretKeySpec(this.f56002b, "AES"), new IvParameterSpec(this.f56003c));
                en.e eVar = new en.e(this.f56001a, gVar);
                this.f56004d = new CipherInputStream(eVar, d10);
                eVar.k();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // en.d
    public final void c(o oVar) {
        cn.a.e(oVar);
        this.f56001a.c(oVar);
    }

    @Override // en.d
    public void close() throws IOException {
        if (this.f56004d != null) {
            this.f56004d = null;
            this.f56001a.close();
        }
    }

    protected Cipher d() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // en.d
    public final Map<String, List<String>> getResponseHeaders() {
        return this.f56001a.getResponseHeaders();
    }

    @Override // en.d
    @Nullable
    public final Uri getUri() {
        return this.f56001a.getUri();
    }

    @Override // zm.h
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        cn.a.e(this.f56004d);
        int read = this.f56004d.read(bArr, i10, i11);
        if (read < 0) {
            return -1;
        }
        return read;
    }
}
