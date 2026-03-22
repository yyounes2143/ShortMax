package io.bidmachine.media3.common.util;

import android.opengl.GLES20;
import io.bidmachine.media3.common.util.GlUtil;
import java.util.HashMap;
import java.util.Map;
/* compiled from: GlProgram.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f55283a;

    /* renamed from: b  reason: collision with root package name */
    private final a[] f55284b;

    /* renamed from: c  reason: collision with root package name */
    private final C0797b[] f55285c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, a> f55286d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, C0797b> f55287e;

    /* compiled from: GlProgram.java */
    /* loaded from: classes8.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f55288a;

        /* renamed from: b  reason: collision with root package name */
        private final int f55289b;

        private a(String str, int i10) {
            this.f55288a = str;
            this.f55289b = i10;
        }

        public static a a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35722, iArr, 0);
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveAttrib(i10, i11, i12, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, b.h(bArr));
            return new a(str, b.f(i10, str));
        }
    }

    /* compiled from: GlProgram.java */
    /* renamed from: io.bidmachine.media3.common.util.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static final class C0797b {

        /* renamed from: a  reason: collision with root package name */
        public final String f55290a;

        /* renamed from: b  reason: collision with root package name */
        private final int f55291b;

        /* renamed from: c  reason: collision with root package name */
        private final int f55292c;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f55293d = new float[16];

        /* renamed from: e  reason: collision with root package name */
        private final int[] f55294e = new int[4];

        /* renamed from: f  reason: collision with root package name */
        private int f55295f = 9729;

        private C0797b(String str, int i10, int i11) {
            this.f55290a = str;
            this.f55291b = i10;
            this.f55292c = i11;
        }

        public static C0797b a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveUniform(i10, i11, i12, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, b.h(bArr));
            return new C0797b(str, b.i(i10, str), iArr2[0]);
        }
    }

    public b(String str, String str2) throws GlUtil.GlException {
        boolean z10;
        int glCreateProgram = GLES20.glCreateProgram();
        this.f55283a = glCreateProgram;
        GlUtil.b();
        d(glCreateProgram, 35633, str);
        d(glCreateProgram, 35632, str2);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        GlUtil.c(z10, "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        GLES20.glUseProgram(glCreateProgram);
        this.f55286d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35721, iArr2, 0);
        this.f55284b = new a[iArr2[0]];
        for (int i10 = 0; i10 < iArr2[0]; i10++) {
            a a10 = a.a(this.f55283a, i10);
            this.f55284b[i10] = a10;
            this.f55286d.put(a10.f55288a, a10);
        }
        this.f55287e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f55283a, 35718, iArr3, 0);
        this.f55285c = new C0797b[iArr3[0]];
        for (int i11 = 0; i11 < iArr3[0]; i11++) {
            C0797b a11 = C0797b.a(this.f55283a, i11);
            this.f55285c[i11] = a11;
            this.f55287e.put(a11.f55290a, a11);
        }
        GlUtil.b();
    }

    private static void d(int i10, int i11, String str) throws GlUtil.GlException {
        int glCreateShader = GLES20.glCreateShader(i11);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        boolean z10 = false;
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 1) {
            z10 = true;
        }
        GlUtil.c(z10, GLES20.glGetShaderInfoLog(glCreateShader) + ", source: \n" + str);
        GLES20.glAttachShader(i10, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        GlUtil.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i10, String str) {
        return GLES20.glGetAttribLocation(i10, str);
    }

    private int g(String str) {
        return f(this.f55283a, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (bArr[i10] == 0) {
                return i10;
            }
        }
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(int i10, String str) {
        return GLES20.glGetUniformLocation(i10, str);
    }

    public int e(String str) throws GlUtil.GlException {
        int g10 = g(str);
        GLES20.glEnableVertexAttribArray(g10);
        GlUtil.b();
        return g10;
    }

    public int j(String str) {
        return i(this.f55283a, str);
    }
}
