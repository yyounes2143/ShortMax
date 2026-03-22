package io.bidmachine.media3.exoplayer.video.spherical;

import android.opengl.GLES20;
import android.util.Log;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.util.GlUtil;
import io.bidmachine.media3.exoplayer.video.spherical.c;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* compiled from: ProjectionRenderer.java */
/* loaded from: classes8.dex */
final class e {

    /* renamed from: j  reason: collision with root package name */
    private static final float[] f57364j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: k  reason: collision with root package name */
    private static final float[] f57365k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f57366l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m  reason: collision with root package name */
    private static final float[] f57367m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: n  reason: collision with root package name */
    private static final float[] f57368n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    private int f57369a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f57370b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f57371c;

    /* renamed from: d  reason: collision with root package name */
    private io.bidmachine.media3.common.util.b f57372d;

    /* renamed from: e  reason: collision with root package name */
    private int f57373e;

    /* renamed from: f  reason: collision with root package name */
    private int f57374f;

    /* renamed from: g  reason: collision with root package name */
    private int f57375g;

    /* renamed from: h  reason: collision with root package name */
    private int f57376h;

    /* renamed from: i  reason: collision with root package name */
    private int f57377i;

    /* compiled from: ProjectionRenderer.java */
    /* loaded from: classes8.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f57378a;

        /* renamed from: b  reason: collision with root package name */
        private final FloatBuffer f57379b;

        /* renamed from: c  reason: collision with root package name */
        private final FloatBuffer f57380c;

        /* renamed from: d  reason: collision with root package name */
        private final int f57381d;

        public a(c.b bVar) {
            this.f57378a = bVar.a();
            this.f57379b = GlUtil.e(bVar.f57362c);
            this.f57380c = GlUtil.e(bVar.f57363d);
            int i10 = bVar.f57361b;
            if (i10 != 1) {
                if (i10 != 2) {
                    this.f57381d = 4;
                    return;
                } else {
                    this.f57381d = 6;
                    return;
                }
            }
            this.f57381d = 5;
        }
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f57355a;
        c.a aVar2 = cVar.f57356b;
        if (aVar.b() != 1 || aVar.a(0).f57360a != 0 || aVar2.b() != 1 || aVar2.a(0).f57360a != 0) {
            return false;
        }
        return true;
    }

    public void a(int i10, float[] fArr, boolean z10) {
        a aVar;
        float[] fArr2;
        if (z10) {
            aVar = this.f57371c;
        } else {
            aVar = this.f57370b;
        }
        if (aVar == null) {
            return;
        }
        int i11 = this.f57369a;
        if (i11 == 1) {
            if (z10) {
                fArr2 = f57366l;
            } else {
                fArr2 = f57365k;
            }
        } else if (i11 == 2) {
            if (z10) {
                fArr2 = f57368n;
            } else {
                fArr2 = f57367m;
            }
        } else {
            fArr2 = f57364j;
        }
        GLES20.glUniformMatrix3fv(this.f57374f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f57373e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i10);
        GLES20.glUniform1i(this.f57377i, 0);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e10) {
            Log.e("ProjectionRenderer", "Failed to bind uniforms", e10);
        }
        GLES20.glVertexAttribPointer(this.f57375g, 3, 5126, false, 12, (Buffer) aVar.f57379b);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e11) {
            Log.e("ProjectionRenderer", "Failed to load position data", e11);
        }
        GLES20.glVertexAttribPointer(this.f57376h, 2, 5126, false, 8, (Buffer) aVar.f57380c);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e12) {
            Log.e("ProjectionRenderer", "Failed to load texture data", e12);
        }
        GLES20.glDrawArrays(aVar.f57381d, 0, aVar.f57378a);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e13) {
            Log.e("ProjectionRenderer", "Failed to render", e13);
        }
    }

    public void b() {
        try {
            io.bidmachine.media3.common.util.b bVar = new io.bidmachine.media3.common.util.b("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f57372d = bVar;
            this.f57373e = bVar.j("uMvpMatrix");
            this.f57374f = this.f57372d.j("uTexMatrix");
            this.f57375g = this.f57372d.e("aPosition");
            this.f57376h = this.f57372d.e("aTexCoords");
            this.f57377i = this.f57372d.j("uTexture");
        } catch (GlUtil.GlException e10) {
            Log.e("ProjectionRenderer", "Failed to initialize the program", e10);
        }
    }

    public void d(c cVar) {
        if (!c(cVar)) {
            return;
        }
        this.f57369a = cVar.f57357c;
        a aVar = new a(cVar.f57355a.a(0));
        this.f57370b = aVar;
        if (!cVar.f57358d) {
            aVar = new a(cVar.f57356b.a(0));
        }
        this.f57371c = aVar;
    }
}
