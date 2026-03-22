package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import com.google.android.exoplayer2.util.GlUtil;
import java.util.HashMap;
import java.util.Map;
/* compiled from: GlProgram.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f19133a;

    /* renamed from: b  reason: collision with root package name */
    private final a[] f19134b;

    /* renamed from: c  reason: collision with root package name */
    private final C0292b[] f19135c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, a> f19136d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, C0292b> f19137e;

    /* compiled from: GlProgram.java */
    /* loaded from: classes4.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f19138a;

        /* renamed from: b  reason: collision with root package name */
        private final int f19139b;

        /* renamed from: c  reason: collision with root package name */
        private final int f19140c;

        private a(String str, int i10, int i11) {
            this.f19138a = str;
            this.f19139b = i10;
            this.f19140c = i11;
        }

        public static a a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35722, iArr, 0);
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveAttrib(i10, i11, i12, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, b.h(bArr));
            return new a(str, i11, b.f(i10, str));
        }
    }

    /* compiled from: GlProgram.java */
    /* renamed from: com.google.android.exoplayer2.util.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static final class C0292b {

        /* renamed from: a  reason: collision with root package name */
        public final String f19141a;

        /* renamed from: b  reason: collision with root package name */
        private final int f19142b;

        /* renamed from: c  reason: collision with root package name */
        private final int f19143c;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f19144d = new float[16];

        private C0292b(String str, int i10, int i11) {
            this.f19141a = str;
            this.f19142b = i10;
            this.f19143c = i11;
        }

        public static C0292b a(int i10, int i11) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i10, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i12 = iArr[0];
            byte[] bArr = new byte[i12];
            GLES20.glGetActiveUniform(i10, i11, i12, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, b.h(bArr));
            return new C0292b(str, b.i(i10, str), iArr2[0]);
        }
    }

    public b(String str, String str2) throws GlUtil.GlException {
        boolean z10;
        int glCreateProgram = GLES20.glCreateProgram();
        this.f19133a = glCreateProgram;
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
        this.f19136d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35721, iArr2, 0);
        this.f19134b = new a[iArr2[0]];
        for (int i10 = 0; i10 < iArr2[0]; i10++) {
            a a10 = a.a(this.f19133a, i10);
            this.f19134b[i10] = a10;
            this.f19136d.put(a10.f19138a, a10);
        }
        this.f19137e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f19133a, 35718, iArr3, 0);
        this.f19135c = new C0292b[iArr3[0]];
        for (int i11 = 0; i11 < iArr3[0]; i11++) {
            C0292b a11 = C0292b.a(this.f19133a, i11);
            this.f19135c[i11] = a11;
            this.f19137e.put(a11.f19141a, a11);
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
        GlUtil.c(z10, GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        GLES20.glAttachShader(i10, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        GlUtil.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i10, String str) {
        return GLES20.glGetAttribLocation(i10, str);
    }

    private int g(String str) {
        return f(this.f19133a, str);
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
        return i(this.f19133a, str);
    }
}
