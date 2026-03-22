package io.bidmachine.media3.exoplayer.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.util.GlUtil;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes8.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements yn.e {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f57150b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final a f57151a;

    /* loaded from: classes8.dex */
    private static final class a implements GLSurfaceView.Renderer {

        /* renamed from: k  reason: collision with root package name */
        private static final float[] f57152k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        /* renamed from: l  reason: collision with root package name */
        private static final float[] f57153l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* renamed from: m  reason: collision with root package name */
        private static final float[] f57154m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        /* renamed from: n  reason: collision with root package name */
        private static final String[] f57155n = {"y_tex", "u_tex", "v_tex"};

        /* renamed from: o  reason: collision with root package name */
        private static final FloatBuffer f57156o = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* renamed from: a  reason: collision with root package name */
        private final GLSurfaceView f57157a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f57158b = new int[3];

        /* renamed from: c  reason: collision with root package name */
        private final int[] f57159c = new int[3];

        /* renamed from: d  reason: collision with root package name */
        private final int[] f57160d = new int[3];

        /* renamed from: e  reason: collision with root package name */
        private final int[] f57161e = new int[3];

        /* renamed from: f  reason: collision with root package name */
        private final AtomicReference<fn.g> f57162f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        private final FloatBuffer[] f57163g = new FloatBuffer[3];

        /* renamed from: h  reason: collision with root package name */
        private io.bidmachine.media3.common.util.b f57164h;

        /* renamed from: i  reason: collision with root package name */
        private int f57165i;

        /* renamed from: j  reason: collision with root package name */
        private fn.g f57166j;

        public a(GLSurfaceView gLSurfaceView) {
            this.f57157a = gLSurfaceView;
            for (int i10 = 0; i10 < 3; i10++) {
                int[] iArr = this.f57160d;
                this.f57161e[i10] = -1;
                iArr[i10] = -1;
            }
        }

        private void b() {
            try {
                GLES20.glGenTextures(3, this.f57158b, 0);
                for (int i10 = 0; i10 < 3; i10++) {
                    GLES20.glUniform1i(this.f57164h.j(f57155n[i10]), i10);
                    GLES20.glActiveTexture(33984 + i10);
                    GlUtil.a(3553, this.f57158b[i10], 9729);
                }
                GlUtil.b();
            } catch (GlUtil.GlException e10) {
                Log.e("VideoDecoderGLSV", "Failed to set up the textures", e10);
            }
        }

        public void a(fn.g gVar) {
            fn.g andSet = this.f57162f.getAndSet(gVar);
            if (andSet != null) {
                andSet.l();
            }
            this.f57157a.requestRender();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            boolean z10;
            fn.g andSet = this.f57162f.getAndSet(null);
            if (andSet == null && this.f57166j == null) {
                return;
            }
            if (andSet != null) {
                fn.g gVar = this.f57166j;
                if (gVar != null) {
                    gVar.l();
                }
                this.f57166j = andSet;
            }
            fn.g gVar2 = (fn.g) cn.a.e(this.f57166j);
            float[] fArr = f57153l;
            int i10 = gVar2.f51863i;
            if (i10 != 1) {
                if (i10 == 3) {
                    fArr = f57154m;
                }
            } else {
                fArr = f57152k;
            }
            GLES20.glUniformMatrix3fv(this.f57165i, 1, false, fArr, 0);
            int[] iArr = (int[]) cn.a.e(gVar2.f51862h);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) cn.a.e(gVar2.f51861g);
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = gVar2.f51860f;
                if (i11 != 0) {
                    i12 = (i12 + 1) / 2;
                }
                int i13 = i12;
                GLES20.glActiveTexture(33984 + i11);
                GLES20.glBindTexture(3553, this.f57158b[i11]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i11], i13, 0, 6409, 5121, byteBufferArr[i11]);
            }
            int i14 = gVar2.f51859e;
            int i15 = (i14 + 1) / 2;
            int[] iArr2 = {i14, i15, i15};
            for (int i16 = 0; i16 < 3; i16++) {
                if (this.f57160d[i16] != iArr2[i16] || this.f57161e[i16] != iArr[i16]) {
                    if (iArr[i16] != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    cn.a.g(z10);
                    float f10 = iArr2[i16] / iArr[i16];
                    this.f57163g[i16] = GlUtil.e(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f10, 0.0f, f10, 1.0f});
                    GLES20.glVertexAttribPointer(this.f57159c[i16], 2, 5126, false, 0, (Buffer) this.f57163g[i16]);
                    this.f57160d[i16] = iArr2[i16];
                    this.f57161e[i16] = iArr[i16];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e10) {
                Log.e("VideoDecoderGLSV", "Failed to draw a frame", e10);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            try {
                io.bidmachine.media3.common.util.b bVar = new io.bidmachine.media3.common.util.b("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
                this.f57164h = bVar;
                GLES20.glVertexAttribPointer(bVar.e("in_pos"), 2, 5126, false, 0, (Buffer) f57156o);
                this.f57159c[0] = this.f57164h.e("in_tc_y");
                this.f57159c[1] = this.f57164h.e("in_tc_u");
                this.f57159c[2] = this.f57164h.e("in_tc_v");
                this.f57165i = this.f57164h.j("mColorConversion");
                GlUtil.b();
                b();
                GlUtil.b();
            } catch (GlUtil.GlException e10) {
                Log.e("VideoDecoderGLSV", "Failed to set up the textures and program", e10);
            }
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public void setOutputBuffer(fn.g gVar) {
        this.f57151a.a(gVar);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f57151a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    @Deprecated
    public yn.e getVideoDecoderOutputBufferRenderer() {
        return this;
    }
}
