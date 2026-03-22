package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.n;
import java.util.Arrays;
/* compiled from: AutoValue_ExperimentIds.java */
/* loaded from: classes4.dex */
final class g extends n {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f17111a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f17112b;

    /* compiled from: AutoValue_ExperimentIds.java */
    /* loaded from: classes4.dex */
    static final class b extends n.a {

        /* renamed from: a  reason: collision with root package name */
        private byte[] f17113a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f17114b;

        @Override // com.google.android.datatransport.cct.internal.n.a
        public n a() {
            return new g(this.f17113a, this.f17114b);
        }

        @Override // com.google.android.datatransport.cct.internal.n.a
        public n.a b(@Nullable byte[] bArr) {
            this.f17113a = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.n.a
        public n.a c(@Nullable byte[] bArr) {
            this.f17114b = bArr;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.n
    @Nullable
    public byte[] b() {
        return this.f17111a;
    }

    @Override // com.google.android.datatransport.cct.internal.n
    @Nullable
    public byte[] c() {
        return this.f17112b;
    }

    public boolean equals(Object obj) {
        byte[] b10;
        byte[] c10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        byte[] bArr = this.f17111a;
        boolean z10 = nVar instanceof g;
        if (z10) {
            b10 = ((g) nVar).f17111a;
        } else {
            b10 = nVar.b();
        }
        if (Arrays.equals(bArr, b10)) {
            byte[] bArr2 = this.f17112b;
            if (z10) {
                c10 = ((g) nVar).f17112b;
            } else {
                c10 = nVar.c();
            }
            if (Arrays.equals(bArr2, c10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((Arrays.hashCode(this.f17111a) ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f17112b);
    }

    public String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f17111a) + ", encryptedBlob=" + Arrays.toString(this.f17112b) + "}";
    }

    private g(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        this.f17111a = bArr;
        this.f17112b = bArr2;
    }
}
