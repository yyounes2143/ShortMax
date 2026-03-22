package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProtobufValueEncoderContext.java */
/* loaded from: classes5.dex */
public class f implements p8.f {

    /* renamed from: a  reason: collision with root package name */
    private boolean f20974a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f20975b = false;

    /* renamed from: c  reason: collision with root package name */
    private p8.b f20976c;

    /* renamed from: d  reason: collision with root package name */
    private final d f20977d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar) {
        this.f20977d = dVar;
    }

    private void b() {
        if (!this.f20974a) {
            this.f20974a = true;
            return;
        }
        throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
    }

    @Override // p8.f
    @NonNull
    public p8.f a(@Nullable String str) throws IOException {
        b();
        this.f20977d.o(this.f20976c, str, this.f20975b);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(p8.b bVar, boolean z10) {
        this.f20974a = false;
        this.f20976c = bVar;
        this.f20975b = z10;
    }

    @Override // p8.f
    @NonNull
    public p8.f g(boolean z10) throws IOException {
        b();
        this.f20977d.l(this.f20976c, z10, this.f20975b);
        return this;
    }
}
