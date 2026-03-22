package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
/* loaded from: classes2.dex */
public abstract class JsonReader implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f4674g = new String[128];

    /* renamed from: a  reason: collision with root package name */
    int f4675a;

    /* renamed from: b  reason: collision with root package name */
    int[] f4676b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    String[] f4677c = new String[32];

    /* renamed from: d  reason: collision with root package name */
    int[] f4678d = new int[32];

    /* renamed from: e  reason: collision with root package name */
    boolean f4679e;

    /* renamed from: f  reason: collision with root package name */
    boolean f4680f;

    /* loaded from: classes2.dex */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String[] f4681a;

        /* renamed from: b  reason: collision with root package name */
        final Options f4682b;

        private a(String[] strArr, Options options) {
            this.f4681a = strArr;
            this.f4682b = options;
        }

        public static a a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    JsonReader.R(buffer, strArr[i10]);
                    buffer.readByte();
                    byteStringArr[i10] = buffer.readByteString();
                }
                return new a((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f4674g[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f4674g;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void R(okio.BufferedSink r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String[] r0 = com.airbnb.lottie.parser.moshi.JsonReader.f4674g
            r1 = 34
            r7.writeByte(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = r3
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.writeUtf8(r8, r4, r3)
        L2e:
            r7.writeUtf8(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.writeUtf8(r8, r4, r2)
        L3b:
            r7.writeByte(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.R(okio.BufferedSink, java.lang.String):void");
    }

    public static JsonReader u(BufferedSource bufferedSource) {
        return new b(bufferedSource);
    }

    public abstract void F() throws IOException;

    public abstract void P() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JsonEncodingException T(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    public abstract void d() throws IOException;

    public final String getPath() {
        return com.airbnb.lottie.parser.moshi.a.a(this.f4675a, this.f4676b, this.f4677c, this.f4678d);
    }

    public abstract void k() throws IOException;

    public abstract void l() throws IOException;

    public abstract void m() throws IOException;

    public abstract boolean o() throws IOException;

    public abstract boolean p() throws IOException;

    public abstract double q() throws IOException;

    public abstract int r() throws IOException;

    public abstract String s() throws IOException;

    public abstract String t() throws IOException;

    public abstract Token v() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void w(int i10) {
        int i11 = this.f4675a;
        int[] iArr = this.f4676b;
        if (i11 == iArr.length) {
            if (i11 != 256) {
                this.f4676b = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f4677c;
                this.f4677c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f4678d;
                this.f4678d = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
        }
        int[] iArr3 = this.f4676b;
        int i12 = this.f4675a;
        this.f4675a = i12 + 1;
        iArr3[i12] = i10;
    }

    public abstract int x(a aVar) throws IOException;
}
