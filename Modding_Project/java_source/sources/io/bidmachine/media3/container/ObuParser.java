package io.bidmachine.media3.container;

import androidx.annotation.Nullable;
import cn.a0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes8.dex */
public final class ObuParser {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static class NotYetImplementedException extends Exception {
        private NotYetImplementedException() {
        }
    }

    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f55296a;

        private b(d dVar, c cVar) throws NotYetImplementedException {
            boolean z10;
            boolean z11;
            int i10;
            int i11 = cVar.f55297a;
            if (i11 != 6 && i11 != 3) {
                z10 = false;
            } else {
                z10 = true;
            }
            cn.a.a(z10);
            byte[] bArr = new byte[Math.min(4, cVar.f55298b.remaining())];
            cVar.f55298b.asReadOnlyBuffer().get(bArr);
            a0 a0Var = new a0(bArr);
            ObuParser.f(dVar.f55299a);
            if (a0Var.g()) {
                this.f55296a = false;
                return;
            }
            int h10 = a0Var.h(2);
            boolean g10 = a0Var.g();
            ObuParser.f(dVar.f55300b);
            if (!g10) {
                this.f55296a = true;
                return;
            }
            if (h10 != 3 && h10 != 0) {
                z11 = a0Var.g();
            } else {
                z11 = true;
            }
            a0Var.q();
            ObuParser.f(!dVar.f55302d);
            if (a0Var.g()) {
                ObuParser.f(!dVar.f55303e);
                a0Var.q();
            }
            ObuParser.f(dVar.f55301c);
            if (h10 != 3) {
                a0Var.q();
            }
            a0Var.r(dVar.f55304f);
            if (h10 != 2 && h10 != 0 && !z11) {
                a0Var.r(3);
            }
            if (h10 != 3 && h10 != 0) {
                i10 = a0Var.h(8);
            } else {
                i10 = 255;
            }
            this.f55296a = i10 != 0;
        }

        @Nullable
        public static b b(d dVar, c cVar) {
            try {
                return new b(dVar, cVar);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public boolean a() {
            return this.f55296a;
        }
    }

    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f55297a;

        /* renamed from: b  reason: collision with root package name */
        public final ByteBuffer f55298b;

        private c(int i10, ByteBuffer byteBuffer) {
            this.f55297a = i10;
            this.f55298b = byteBuffer;
        }
    }

    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f55299a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f55300b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f55301c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f55302d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f55303e;

        /* renamed from: f  reason: collision with root package name */
        public final int f55304f;

        private d(c cVar) throws NotYetImplementedException {
            boolean z10;
            if (cVar.f55297a == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            byte[] bArr = new byte[cVar.f55298b.remaining()];
            cVar.f55298b.asReadOnlyBuffer().get(bArr);
            a0 a0Var = new a0(bArr);
            a0Var.r(4);
            boolean g10 = a0Var.g();
            this.f55299a = g10;
            ObuParser.f(g10);
            if (a0Var.g()) {
                b(a0Var);
                boolean g11 = a0Var.g();
                this.f55300b = g11;
                if (g11) {
                    a0Var.r(47);
                }
            } else {
                this.f55300b = false;
            }
            boolean g12 = a0Var.g();
            int h10 = a0Var.h(5);
            for (int i10 = 0; i10 <= h10; i10++) {
                a0Var.r(12);
                if (a0Var.h(5) > 7) {
                    a0Var.q();
                }
                ObuParser.f(this.f55300b);
                if (g12 && a0Var.g()) {
                    a0Var.r(4);
                }
            }
            int h11 = a0Var.h(4);
            int h12 = a0Var.h(4);
            a0Var.r(h11 + 1);
            a0Var.r(h12 + 1);
            boolean g13 = a0Var.g();
            this.f55301c = g13;
            ObuParser.f(g13);
            a0Var.r(3);
            a0Var.r(4);
            boolean g14 = a0Var.g();
            if (g14) {
                a0Var.r(2);
            }
            if (a0Var.g()) {
                this.f55302d = true;
            } else {
                this.f55302d = a0Var.g();
            }
            if (this.f55302d) {
                if (a0Var.g()) {
                    this.f55303e = true;
                } else {
                    this.f55303e = a0Var.g();
                }
            } else {
                this.f55303e = true;
            }
            if (g14) {
                this.f55304f = a0Var.h(3) + 1;
            } else {
                this.f55304f = 0;
            }
        }

        @Nullable
        public static d a(c cVar) {
            try {
                return new d(cVar);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        private static void b(a0 a0Var) {
            a0Var.r(64);
            if (a0Var.g()) {
                ObuParser.d(a0Var);
            }
        }
    }

    private static int c(ByteBuffer byteBuffer) {
        int i10 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            byte b10 = byteBuffer.get();
            i10 |= (b10 & ByteCompanionObject.MAX_VALUE) << (i11 * 7);
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                break;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(a0 a0Var) {
        int i10 = 0;
        while (!a0Var.g()) {
            i10++;
        }
        if (i10 < 32) {
            a0Var.r(i10);
        }
    }

    public static List<c> e(ByteBuffer byteBuffer) {
        int remaining;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (asReadOnlyBuffer.hasRemaining()) {
            byte b10 = asReadOnlyBuffer.get();
            int i10 = (b10 >> 3) & 15;
            if (((b10 >> 2) & 1) != 0) {
                asReadOnlyBuffer.get();
            }
            if (((b10 >> 1) & 1) != 0) {
                remaining = c(asReadOnlyBuffer);
            } else {
                remaining = asReadOnlyBuffer.remaining();
            }
            ByteBuffer duplicate = asReadOnlyBuffer.duplicate();
            duplicate.limit(asReadOnlyBuffer.position() + remaining);
            arrayList.add(new c(i10, duplicate));
            asReadOnlyBuffer.position(asReadOnlyBuffer.position() + remaining);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(boolean z10) throws NotYetImplementedException {
        if (!z10) {
            return;
        }
        throw new NotYetImplementedException();
    }
}
