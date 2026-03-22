package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.video.spherical.c;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* compiled from: ProjectionRenderer.java */
/* loaded from: classes4.dex */
final class e {

    /* renamed from: j  reason: collision with root package name */
    private static final float[] f19280j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: k  reason: collision with root package name */
    private static final float[] f19281k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f19282l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m  reason: collision with root package name */
    private static final float[] f19283m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: n  reason: collision with root package name */
    private static final float[] f19284n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    private int f19285a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f19286b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f19287c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.util.b f19288d;

    /* renamed from: e  reason: collision with root package name */
    private int f19289e;

    /* renamed from: f  reason: collision with root package name */
    private int f19290f;

    /* renamed from: g  reason: collision with root package name */
    private int f19291g;

    /* renamed from: h  reason: collision with root package name */
    private int f19292h;

    /* renamed from: i  reason: collision with root package name */
    private int f19293i;

    /* compiled from: ProjectionRenderer.java */
    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f19294a;

        /* renamed from: b  reason: collision with root package name */
        private final FloatBuffer f19295b;

        /* renamed from: c  reason: collision with root package name */
        private final FloatBuffer f19296c;

        /* renamed from: d  reason: collision with root package name */
        private final int f19297d;

        public a(c.b bVar) {
            this.f19294a = bVar.a();
            this.f19295b = GlUtil.e(bVar.f19278c);
            this.f19296c = GlUtil.e(bVar.f19279d);
            int i10 = bVar.f19277b;
            if (i10 != 1) {
                if (i10 != 2) {
                    this.f19297d = 4;
                    return;
                } else {
                    this.f19297d = 6;
                    return;
                }
            }
            this.f19297d = 5;
        }
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f19271a;
        c.a aVar2 = cVar.f19272b;
        if (aVar.b() != 1 || aVar.a(0).f19276a != 0 || aVar2.b() != 1 || aVar2.a(0).f19276a != 0) {
            return false;
        }
        return true;
    }

    public void a(int i10, float[] fArr, boolean z10) {
        a aVar;
        float[] fArr2;
        if (z10) {
            aVar = this.f19287c;
        } else {
            aVar = this.f19286b;
        }
        if (aVar == null) {
            return;
        }
        int i11 = this.f19285a;
        if (i11 == 1) {
            if (z10) {
                fArr2 = f19282l;
            } else {
                fArr2 = f19281k;
            }
        } else if (i11 == 2) {
            if (z10) {
                fArr2 = f19284n;
            } else {
                fArr2 = f19283m;
            }
        } else {
            fArr2 = f19280j;
        }
        GLES20.glUniformMatrix3fv(this.f19290f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f19289e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i10);
        GLES20.glUniform1i(this.f19293i, 0);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e10) {
            Log.e("ProjectionRenderer", "Failed to bind uniforms", e10);
        }
        GLES20.glVertexAttribPointer(this.f19291g, 3, 5126, false, 12, (Buffer) aVar.f19295b);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e11) {
            Log.e("ProjectionRenderer", "Failed to load position data", e11);
        }
        GLES20.glVertexAttribPointer(this.f19292h, 2, 5126, false, 8, (Buffer) aVar.f19296c);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e12) {
            Log.e("ProjectionRenderer", "Failed to load texture data", e12);
        }
        GLES20.glDrawArrays(aVar.f19297d, 0, aVar.f19294a);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e13) {
            Log.e("ProjectionRenderer", "Failed to render", e13);
        }
    }

    public void b() {
        try {
            com.google.android.exoplayer2.util.b bVar = new com.google.android.exoplayer2.util.b("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f19288d = bVar;
            this.f19289e = bVar.j("uMvpMatrix");
            this.f19290f = this.f19288d.j("uTexMatrix");
            this.f19291g = this.f19288d.e("aPosition");
            this.f19292h = this.f19288d.e("aTexCoords");
            this.f19293i = this.f19288d.j("uTexture");
        } catch (GlUtil.GlException e10) {
            Log.e("ProjectionRenderer", "Failed to initialize the program", e10);
        }
    }

    public void d(c cVar) {
        if (!c(cVar)) {
            return;
        }
        this.f19285a = cVar.f19273c;
        a aVar = new a(cVar.f19271a.a(0));
        this.f19286b = aVar;
        if (!cVar.f19274d) {
            aVar = new a(cVar.f19272b.a(0));
        }
        this.f19287c = aVar;
    }
}
