package com.ss.texturerender.effect.vr;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.ss.texturerender.DeviceManager;
import com.ss.texturerender.TexGLUtils;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderManager;
import com.ss.texturerender.VideoSurfaceTexture;
import com.ss.texturerender.effect.AbsEffect;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.FrameBuffer;
import com.ss.texturerender.effect.GLDefaultFilter;
import com.ss.texturerender.effect.vr.director.IDirector;
import com.ss.texturerender.effect.vr.director.IDirectorEventListener;
import com.ss.texturerender.effect.vr.director.TouchDirector;
import com.ss.texturerender.effect.vr.director.picodirector.PicoDirector;
import com.ss.texturerender.effect.vr.director.sensordirector.SensorDirector;
import com.ss.texturerender.effect.vr.distortion.BrownDistortion;
import com.ss.texturerender.math.Quaternion;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes6.dex */
public class GLPanoramaFilter extends GLDefaultFilter implements IDirectorEventListener {
    private static final float DEFAULT_BORDER_SIZE_METER = 0.003f;
    private static final String LOG_TAG = "TR_GLPanoramaFilter";
    private static final String cubemapShaderFragment = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvoid main() {\n    vec3 result = vec3((vTextureCoord - 0.5) / expandCoef + 0.5, 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}";
    private float DEFAULT_OUT_TEXTURE_SCALE;
    private float DEFAULT_PERSPEC_VIEW;
    private final String eac180FragShader;
    private final String eacFragShader;
    protected int mBackTextureSize;
    private float mCMPFaceInnerPadding;
    private float[] mCubeRotatesPerFace;
    private float[] mCubeTexOffsetPerFace;
    protected int mDesireViewSize;
    protected boolean mDidGetInitialModelMatrix;
    protected int mDirectMode;
    private Display mDisplay;
    private BrownDistortion mDistortion;
    private float[] mDistortionCoeffs;
    private short[][] mDistortionIndex;
    protected ShortBuffer[] mDistortionIndexBuffer;
    private float[][] mDistortionPos;
    private float[][] mDistortionTex;
    protected FloatBuffer[] mDistortionTextureBuffer;
    protected FloatBuffer[] mDistortionTriangleBuffer;
    protected int mEBO;
    private boolean mEnableTouchScaler;
    private float mExpandCoef;
    private int mExpandCoefHandle;
    private float[] mFov;
    private float[][] mFovTan;
    private int mFreezeDirector;
    protected float[] mFreezeModelMatrix;
    private float mHalfEyeDistance;
    private int mHeadposeCallbackCounter;
    private float[] mIdentityMat;
    protected float[] mInitialModelMatrixInvert;
    protected boolean mIsProcessed;
    private Quaternion mLastCallbackHeadpose;
    private float mLensToScreenDistance;
    private int mMVPMatrixHandle;
    protected float[] mModelMatrix;
    protected int mOffsetPitch;
    protected int mOffsetYaw;
    protected OrientationEventHandler mOrientationEventHandler;
    protected float mOutTextureScale;
    private int mPanoMode;
    protected float mPerspecView;
    public float mPerspecViewRatio;
    protected float[] mProjectionMatrix;
    protected float[] mRotateMatrix;
    private int mScreenH;
    private int mScreenW;
    protected IDirector mSensorDirector;
    protected boolean mSensorDirectorEnabled;
    protected int mSpaceOrientationPitch;
    protected int mTexVBO;
    private FloatBuffer mTextureVerticesRight;
    protected TouchDirector mTouchDirector;
    protected TouchScaler mTouchScaler;
    private float mTrayToLensDis;
    protected boolean mUseInitialHeadPoseAsFront;
    private int mVRModel;
    protected int mVerVBO;
    private int mVideoProjectModel;
    protected int mVideoStyle;
    protected float[] mViewMatrix;
    protected int mViewSize;
    private float mZOffset;
    private int mZOffsetHandle;
    private final String offsetCubicFragShader;
    private final String vertexDefaultShader;
    private static float[] SIDE_BY_SIDE_TEXSCALE_LEFT = {0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    private static float[] SIDE_BY_SIDE_TEXSCALE_RIGHT = {0.5f, 0.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    private static float[] TOP_BOTTOM_TEXSCALE_LEFT = {1.0f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.0f, 0.0f, 0.0f};
    private static float[] TOP_BOTTOM_TEXSCALE_RIGHT = {1.0f, 0.0f, 0.0f, 0.0f, 0.5f, 0.5f, 0.0f, 0.0f, 0.0f};
    protected static float[] TEXSCALE_2D = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    private static float mRadius = 1.0f;
    private static float METERS_PER_INCH = 0.0254f;
    private static int LEFT = 0;
    private static int RIGHT = 1;
    private static float ZNEAR = 0.1f;
    private static float ZFAR = 100.0f;
    private static int RESOLUTION = 40;

    /* loaded from: classes6.dex */
    protected class OrientationEventHandler extends OrientationEventListener {
        public OrientationEventHandler(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i10) {
            boolean z10;
            GLPanoramaFilter gLPanoramaFilter = GLPanoramaFilter.this;
            TouchDirector touchDirector = gLPanoramaFilter.mTouchDirector;
            if (touchDirector != null) {
                if (gLPanoramaFilter.mDirectMode != 2 && gLPanoramaFilter.mSensorDirectorEnabled) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                touchDirector.updateDeviceOrientation(i10, z10);
            }
        }
    }

    public GLPanoramaFilter(int i10, int i11) {
        super(i10, i11);
        this.vertexDefaultShader = "attribute vec4 aPosition;\nuniform mat4 u_MVPMatrix;\nuniform mat4 rotateMatrix;attribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;void main() {\n  gl_Position =  u_MVPMatrix * rotateMatrix * aPosition;\n  vTextureCoord = aTextureCoord.xy;\n  verPosition = aPosition.xyz;}\n";
        this.eacFragShader = "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = 1.0 / 3.0 * clamp(floor(oriCoord.x * 3.0), 0.0, 2.0);\n    float yStep = 0.5 * step(0.5, oriCoord.y);\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 4.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 4.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture,  eacResult.xy);\n}";
        this.eac180FragShader = "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = -1.0 / 6.0 + step(1.0 / 6.0, oriCoord.x) / 3.0 + step(3.0 / 6.0, oriCoord.x) / 3.0 + step(2.0 / 3.0, oriCoord.x) / 6.0;\n    float yStep = 0.0;\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 2.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 2.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = step(0.0, -verPosition.z) * texture2D(sTexture, eacResult.xy);\n}";
        this.offsetCubicFragShader = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nvarying vec3 verPosition;\nuniform vec3 zOffset;\nuniform int cubemapMode;\nuniform vec2 texOffset[6];\nuniform mat2 rotates[6];\nuniform mat3 texScale;//one eye and two eye scale\nvec2 cubeToTexture(vec3 cubeCoord, float expand) {\n    vec2 result;\n    float absX = abs(cubeCoord.x);\n    float absY = abs(cubeCoord.y);\n    float absZ = abs(cubeCoord.z);\n    int index;//0:left 1:front 2:right 3:top 4:back 5:bottom\n    if (-cubeCoord.z >= absX && -cubeCoord.z >= absY) {\n        result = vec2(cubeCoord.x, cubeCoord.y);\n        index = 1;\n    } else if (cubeCoord.z >= absX && cubeCoord.z >= absY) {\n        result = vec2(-cubeCoord.x, cubeCoord.y);\n        index = 4;\n    } else if (cubeCoord.y >= absX && cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, cubeCoord.z);\n        index = 3;\n    } else if (-cubeCoord.y >= absX && -cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, -cubeCoord.z);\n        index = 5;\n    } else if (cubeCoord.x >= absY && cubeCoord.x >= absZ) {\n        result = vec2(cubeCoord.z, cubeCoord.y);\n        index = 2;\n    } else {\n        result = vec2(-cubeCoord.z, cubeCoord.y);\n        index = 0;\n    }\n    result = result * rotates[index] / expand;\n    result = vec2((result.x + 1.0) / 6.0, (result.y + 1.0) / 4.0) + texOffset[index];\n    return result;\n}\nvec2 offsetCubicTransFunc(vec3 inCubePosition) {\n    inCubePosition = inCubePosition - zOffset;\n    inCubePosition = inCubePosition / max(max(abs(inCubePosition.x),abs(inCubePosition.y)),abs(inCubePosition.z));\n    return cubeToTexture(inCubePosition, expandCoef);\n}\nvoid main() {\n    vec3 result = vec3(offsetCubicTransFunc(verPosition),1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}";
        this.mExpandCoef = 1.0f;
        this.mOffsetYaw = 0;
        this.mOffsetPitch = 0;
        this.mSpaceOrientationPitch = 0;
        this.mProjectionMatrix = new float[16];
        this.mModelMatrix = new float[16];
        this.mFreezeModelMatrix = new float[16];
        this.mInitialModelMatrixInvert = new float[16];
        this.mDidGetInitialModelMatrix = false;
        this.mUseInitialHeadPoseAsFront = false;
        this.mViewMatrix = new float[16];
        this.mRotateMatrix = new float[16];
        this.mSensorDirectorEnabled = true;
        this.mPanoMode = 2;
        this.mVideoStyle = 1;
        this.mVRModel = 1;
        this.mVideoProjectModel = 1;
        this.mViewSize = 360;
        this.mDesireViewSize = 360;
        this.mBackTextureSize = 180;
        this.mDirectMode = 1;
        this.DEFAULT_PERSPEC_VIEW = 100.0f;
        this.mPerspecView = 100.0f;
        this.mPerspecViewRatio = 1.0f;
        this.mFov = new float[]{100.0f / 2.0f, 100.0f / 2.0f, 100.0f / 2.0f, 100.0f / 2.0f};
        this.mHalfEyeDistance = 0.03f;
        this.mIsProcessed = false;
        this.mLensToScreenDistance = 0.042f;
        this.mDistortionCoeffs = new float[]{0.441f, 0.156f};
        this.mTrayToLensDis = 0.035f;
        this.mScreenW = -1;
        this.mScreenH = -1;
        this.DEFAULT_OUT_TEXTURE_SCALE = 1.1f;
        this.mOutTextureScale = 1.1f;
        this.mTextureVerticesRight = null;
        this.mEBO = -1;
        this.mTexVBO = -1;
        this.mVerVBO = -1;
        this.mCMPFaceInnerPadding = 0.0f;
        this.mHeadposeCallbackCounter = 0;
        this.mLastCallbackHeadpose = null;
        this.mFreezeDirector = 0;
        this.mOrientationEventHandler = null;
        construct();
    }

    private float[] calculateFov(float f10, float f11) {
        float f12 = this.mHalfEyeDistance;
        float f13 = this.mTrayToLensDis - DEFAULT_BORDER_SIZE_METER;
        float f14 = f11 - f13;
        return new float[]{Math.min((float) Math.atan(this.mDistortion.distort(((f10 / 2.0f) - f12) / this.mLensToScreenDistance, 0.0f)[0]), (float) Math.toRadians(this.mFov[0])), Math.min((float) Math.atan(this.mDistortion.distort(f12 / this.mLensToScreenDistance, 0.0f)[0]), (float) Math.toRadians(this.mFov[1])), Math.min((float) Math.atan(this.mDistortion.distort(0.0f, f13 / this.mLensToScreenDistance)[1]), (float) Math.toRadians(this.mFov[2])), Math.min((float) Math.atan(this.mDistortion.distort(0.0f, f14 / this.mLensToScreenDistance)[1]), (float) Math.toRadians(this.mFov[3]))};
    }

    private void initGLData() {
        if (this.mEBO <= 0) {
            int[] iArr = new int[1];
            GLES20.glGenBuffers(1, iArr, 0);
            int i10 = iArr[0];
            if (i10 == 0) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "glGenBuffers bufferID: 0");
                return;
            }
            this.mEBO = i10;
        }
        GLES20.glBindBuffer(34963, this.mEBO);
        this.mIndexBuffers.position(0);
        GLES20.glBufferData(34963, this.mIndexBuffers.capacity() * 2, this.mIndexBuffers, 35044);
        GLES20.glBindBuffer(34963, 0);
        if (this.mVerVBO <= 0) {
            int[] iArr2 = new int[1];
            GLES20.glGenBuffers(1, iArr2, 0);
            int i11 = iArr2[0];
            if (i11 == 0) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "glGenBuffers bufferID: 0");
                return;
            }
            this.mVerVBO = i11;
        }
        GLES20.glBindBuffer(34962, this.mVerVBO);
        this.mTriangleVertices.position(0);
        GLES20.glBufferData(34962, this.mTriangleVertices.capacity() * 4, this.mTriangleVertices, 35044);
        GLES20.glBindBuffer(34962, 0);
        if (this.mTexVBO <= 0) {
            int[] iArr3 = new int[1];
            GLES20.glGenBuffers(1, iArr3, 0);
            int i12 = iArr3[0];
            if (i12 == 0) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "glGenBuffers bufferID: 0");
                return;
            }
            this.mTexVBO = i12;
        }
        GLES20.glBindBuffer(34962, this.mTexVBO);
        this.mTextureVertices.position(0);
        GLES20.glBufferData(34962, this.mTextureVertices.capacity() * 4, this.mTextureVertices, 35044);
        GLES20.glBindBuffer(34962, 0);
    }

    private void renderDistortion(int i10) {
        this.mDistortionTriangleBuffer[i10].position(0);
        GLES20.glVertexAttribPointer(this.maPositionHandle, 2, 5126, false, 8, (Buffer) this.mDistortionTriangleBuffer[i10]);
        GLES20.glEnableVertexAttribArray(this.maPositionHandle);
        this.mDistortionTextureBuffer[i10].position(0);
        GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, 8, (Buffer) this.mDistortionTextureBuffer[i10]);
        GLES20.glEnableVertexAttribArray(this.maTextureHandle);
        this.mDistortionIndexBuffer[i10].position(0);
        GLES20.glDrawElements(5, this.mDistortionIndexBuffer[i10].remaining(), 5123, this.mDistortionIndexBuffer[i10]);
    }

    private void updateDistortionParam(boolean z10) {
        if (this.mPanoMode == 2 && !DeviceManager.isVRDevice()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Context context = TextureRenderManager.getManager().getContext();
            if (context != null) {
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            }
            int i10 = displayMetrics.widthPixels;
            if (i10 == this.mScreenW && displayMetrics.heightPixels == this.mScreenH && !z10) {
                return;
            }
            this.mScreenW = i10;
            int i11 = displayMetrics.heightPixels;
            this.mScreenH = i11;
            float f10 = i10 / displayMetrics.xdpi;
            float f11 = METERS_PER_INCH;
            float f12 = f10 * f11;
            float f13 = (i11 / displayMetrics.ydpi) * f11;
            float[] calculateFov = calculateFov(f12, f13);
            this.mFovTan[LEFT][0] = (float) Math.tan(calculateFov[0]);
            this.mFovTan[LEFT][1] = (float) Math.tan(calculateFov[1]);
            this.mFovTan[LEFT][2] = (float) Math.tan(calculateFov[2]);
            this.mFovTan[LEFT][3] = (float) Math.tan(calculateFov[3]);
            this.mFovTan[RIGHT][0] = (float) Math.tan(calculateFov[1]);
            this.mFovTan[RIGHT][1] = (float) Math.tan(calculateFov[0]);
            this.mFovTan[RIGHT][2] = (float) Math.tan(calculateFov[2]);
            this.mFovTan[RIGHT][3] = (float) Math.tan(calculateFov[3]);
            int i12 = this.mTexType;
            TextureRenderLog.i(i12, LOG_TAG, "realFov:" + Arrays.toString(calculateFov) + "screenWInMeter:" + f12 + " screenHInMeter:" + f13);
            float f14 = this.mLensToScreenDistance;
            float f15 = f12 / f14;
            float f16 = f13 / f14;
            float f17 = f12 / 2.0f;
            float f18 = this.mHalfEyeDistance;
            float f19 = (this.mTrayToLensDis - DEFAULT_BORDER_SIZE_METER) / f14;
            float tan = (float) (Math.tan((double) calculateFov[0]) + Math.tan((double) calculateFov[1]));
            float tan2 = (float) (Math.tan(calculateFov[2]) + Math.tan(calculateFov[3]));
            float tan3 = (float) Math.tan(calculateFov[0]);
            float tan4 = (float) Math.tan(calculateFov[2]);
            updateMesh(LEFT, f15, f16, (f17 - f18) / f14, f19, tan, tan2, tan3, tan4);
            int i13 = RIGHT;
            updateMesh(i13, f15, f16, (f17 + f18) / f14, f19, tan, tan2, (float) Math.tan(calculateFov[1]), tan4);
        }
    }

    private void updateMesh(int i10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        float f18;
        int i11;
        int i12;
        int i13;
        if (i10 == LEFT) {
            f18 = 0.0f;
        } else {
            f18 = 0.5f;
        }
        int i14 = 0;
        while (true) {
            if (i14 >= RESOLUTION) {
                break;
            }
            float f19 = (i14 * 1.0f) / (i11 - 1);
            int i15 = 0;
            while (true) {
                if (i15 < RESOLUTION) {
                    float f20 = (i15 * 1.0f) / (i13 - 1);
                    float[] distortInverse = this.mDistortion.distortInverse((f20 * f14) - f16, (f19 * f15) - f17);
                    int i16 = ((RESOLUTION * i14) + i15) * 2;
                    float[] fArr = this.mDistortionPos[i10];
                    fArr[i16] = (((distortInverse[0] + f12) / f10) * 2.0f) - 1.0f;
                    int i17 = i16 + 1;
                    fArr[i17] = (((distortInverse[1] + f13) / f11) * 2.0f) - 1.0f;
                    float[] fArr2 = this.mDistortionTex[i10];
                    fArr2[i16] = (f20 / 2.0f) + f18;
                    fArr2[i17] = f19;
                    i15++;
                }
            }
            i14++;
        }
        int i18 = 0;
        int i19 = 0;
        for (int i20 = 0; i20 < RESOLUTION - 1; i20++) {
            if (i20 > 0) {
                short[] sArr = this.mDistortionIndex[i10];
                sArr[i18] = sArr[i18 - 1];
                i18++;
            }
            int i21 = 0;
            while (true) {
                i12 = RESOLUTION;
                if (i21 < i12) {
                    if (i21 > 0) {
                        i19 = i20 % 2 == 0 ? i19 + 1 : i19 - 1;
                    }
                    short[] sArr2 = this.mDistortionIndex[i10];
                    int i22 = i18 + 1;
                    sArr2[i18] = (short) i19;
                    i18 += 2;
                    sArr2[i22] = (short) (i12 + i19);
                    i21++;
                }
            }
            i19 += i12;
        }
        this.mDistortionTriangleBuffer[i10] = ByteBuffer.allocateDirect(this.mDistortionPos[i10].length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mDistortionTriangleBuffer[i10].put(this.mDistortionPos[i10]).position(0);
        this.mDistortionTextureBuffer[i10] = ByteBuffer.allocateDirect(this.mDistortionTex[i10].length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mDistortionTextureBuffer[i10].put(this.mDistortionTex[i10]).position(0);
        this.mDistortionIndexBuffer[i10] = ByteBuffer.allocateDirect(this.mDistortionIndex[i10].length * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        this.mDistortionIndexBuffer[i10].put(this.mDistortionIndex[i10]).position(0);
    }

    public void construct() {
        this.mOrder = 90;
        this.mEnableTouchScaler = true;
        this.mTouchScaler = new TouchScaler(this.mTexType);
        this.mDistortion = new BrownDistortion(this.mDistortionCoeffs, this.mTexType);
        int i10 = RESOLUTION;
        Class cls = Float.TYPE;
        this.mDistortionTex = (float[][]) Array.newInstance(cls, 2, i10 * i10 * 2);
        int i11 = RESOLUTION;
        this.mDistortionPos = (float[][]) Array.newInstance(cls, 2, i11 * i11 * 2);
        int i12 = RESOLUTION;
        this.mDistortionIndex = (short[][]) Array.newInstance(Short.TYPE, 2, ((i12 - 1) * 2 * i12) + (i12 - 2));
        this.mDistortionTriangleBuffer = new FloatBuffer[2];
        this.mDistortionTextureBuffer = new FloatBuffer[2];
        this.mDistortionIndexBuffer = new ShortBuffer[2];
        this.mFovTan = (float[][]) Array.newInstance(cls, 2, 4);
        float[] fArr = new float[16];
        this.mIdentityMat = fArr;
        Matrix.setIdentityM(fArr, 0);
        int i13 = this.mTexType;
        TextureRenderLog.i(i13, LOG_TAG, "new GLPanoramaFilter,this:" + this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void draw(ShortBuffer shortBuffer) {
        float[] fArr = new float[16];
        Matrix.multiplyMM(fArr, 0, this.mViewMatrix, 0, this.mModelMatrix, 0);
        Matrix.multiplyMM(fArr, 0, this.mProjectionMatrix, 0, fArr, 0);
        GLES20.glUniformMatrix4fv(this.mMVPMatrixHandle, 1, false, fArr, 0);
        shortBuffer.position(0);
        GLES20.glBindBuffer(34963, this.mEBO);
        GLES20.glDrawElements(4, shortBuffer.remaining(), 5123, 0);
        GLES20.glBindBuffer(34963, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getExpandCoef() {
        return this.mExpandCoef;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int getIntOption(int i10) {
        if (i10 == 10004 && DeviceManager.isVRDevice()) {
            return 36197;
        }
        if (i10 == 10012) {
            return this.mPanoMode;
        }
        return super.getIntOption(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0013, code lost:
        if (r4.mVideoProjectModel == 2) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getShaderType() {
        /*
            r4 = this;
            int r0 = r4.mViewSize
            r1 = 90
            r2 = 1
            if (r0 != r1) goto L8
            goto L17
        L8:
            r1 = 180(0xb4, float:2.52E-43)
            if (r0 != r1) goto L16
            int r0 = r4.mVRModel
            if (r0 != r2) goto L16
            int r0 = r4.mVideoProjectModel
            r2 = 2
            if (r0 != r2) goto L16
            goto L17
        L16:
            r2 = 0
        L17:
            int r0 = r4.mTexType
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "pano_eac:"
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "TR_GLPanoramaFilter"
            com.ss.texturerender.TextureRenderLog.i(r0, r3, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.effect.vr.GLPanoramaFilter.getShaderType():int");
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11000) {
            if (i10 != 11001) {
                return super.getStringOption(i10);
            }
            int i11 = this.mVRModel;
            if (i11 == 2) {
                if (this.mViewSize == 180) {
                    return "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = -1.0 / 6.0 + step(1.0 / 6.0, oriCoord.x) / 3.0 + step(3.0 / 6.0, oriCoord.x) / 3.0 + step(2.0 / 3.0, oriCoord.x) / 6.0;\n    float yStep = 0.0;\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 2.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 2.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = step(0.0, -verPosition.z) * texture2D(sTexture, eacResult.xy);\n}";
                }
                return "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = 1.0 / 3.0 * clamp(floor(oriCoord.x * 3.0), 0.0, 2.0);\n    float yStep = 0.5 * step(0.5, oriCoord.y);\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 4.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 4.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture,  eacResult.xy);\n}";
            } else if (i11 == 3) {
                return "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nvarying vec3 verPosition;\nuniform vec3 zOffset;\nuniform int cubemapMode;\nuniform vec2 texOffset[6];\nuniform mat2 rotates[6];\nuniform mat3 texScale;//one eye and two eye scale\nvec2 cubeToTexture(vec3 cubeCoord, float expand) {\n    vec2 result;\n    float absX = abs(cubeCoord.x);\n    float absY = abs(cubeCoord.y);\n    float absZ = abs(cubeCoord.z);\n    int index;//0:left 1:front 2:right 3:top 4:back 5:bottom\n    if (-cubeCoord.z >= absX && -cubeCoord.z >= absY) {\n        result = vec2(cubeCoord.x, cubeCoord.y);\n        index = 1;\n    } else if (cubeCoord.z >= absX && cubeCoord.z >= absY) {\n        result = vec2(-cubeCoord.x, cubeCoord.y);\n        index = 4;\n    } else if (cubeCoord.y >= absX && cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, cubeCoord.z);\n        index = 3;\n    } else if (-cubeCoord.y >= absX && -cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, -cubeCoord.z);\n        index = 5;\n    } else if (cubeCoord.x >= absY && cubeCoord.x >= absZ) {\n        result = vec2(cubeCoord.z, cubeCoord.y);\n        index = 2;\n    } else {\n        result = vec2(-cubeCoord.z, cubeCoord.y);\n        index = 0;\n    }\n    result = result * rotates[index] / expand;\n    result = vec2((result.x + 1.0) / 6.0, (result.y + 1.0) / 4.0) + texOffset[index];\n    return result;\n}\nvec2 offsetCubicTransFunc(vec3 inCubePosition) {\n    inCubePosition = inCubePosition - zOffset;\n    inCubePosition = inCubePosition / max(max(abs(inCubePosition.x),abs(inCubePosition.y)),abs(inCubePosition.z));\n    return cubeToTexture(inCubePosition, expandCoef);\n}\nvoid main() {\n    vec3 result = vec3(offsetCubicTransFunc(verPosition),1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}";
            } else {
                if (i11 != 4 && i11 != 5) {
                    return super.getStringOption(i10);
                }
                return cubemapShaderFragment;
            }
        }
        return "attribute vec4 aPosition;\nuniform mat4 u_MVPMatrix;\nuniform mat4 rotateMatrix;attribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;void main() {\n  gl_Position =  u_MVPMatrix * rotateMatrix * aPosition;\n  vTextureCoord = aTextureCoord.xy;\n  verPosition = aPosition.xyz;}\n";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleDirectModeChange() {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "handleDirectModeChange mDirectMode:" + this.mDirectMode + ", this:" + this);
        int i11 = this.mDirectMode;
        if (i11 == 1) {
            startSensorDirector();
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.unRegisterTouchListener(this.mTouchDirector);
            }
        } else if (i11 == 2) {
            IDirector iDirector = this.mSensorDirector;
            if (iDirector != null) {
                iDirector.stop();
            }
            registTouchDirector();
        } else {
            startSensorDirector();
            registTouchDirector();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleTouchScalerChange() {
        if (this.mSurfaceTexture == null) {
            TextureRenderLog.i(this.mTexType, LOG_TAG, "Error: handleTouchScalerChange mSurfaceTexture is null");
            return;
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "handleTouchScalerChange mEnableTouchScaler:" + this.mEnableTouchScaler + ", this:" + this);
        if (this.mEnableTouchScaler) {
            this.mTouchScaler.start();
            this.mSurfaceTexture.registerTouchListener(this.mTouchScaler);
            return;
        }
        this.mSurfaceTexture.unRegisterTouchListener(this.mTouchScaler);
        this.mTouchScaler.stop();
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        boolean z10;
        boolean z11;
        TouchScaler touchScaler;
        Context context;
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_VR_MODEL)) {
            int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_VR_MODEL);
            this.mVRModel = i10;
            this.mVideoProjectModel = i10;
        }
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_VIDEO_PROJECTION_MODEL)) {
            this.mVideoProjectModel = bundle.getInt(TextureRenderKeys.KEY_IS_VIDEO_PROJECTION_MODEL);
        }
        this.mViewSize = bundle.getInt(TextureRenderKeys.KEY_IS_VIEW_SIZE, 360);
        if (super.init(bundle) != 0) {
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            if (videoSurfaceTexture != null) {
                videoSurfaceTexture.notifyError(10, this.mEffectType, "super.init(bundle) != TR_OK");
                return -1;
            }
            return -1;
        }
        this.mMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "u_MVPMatrix");
        this.mExpandCoefHandle = GLES20.glGetUniformLocation(this.mProgram, "expandCoef");
        this.mZOffsetHandle = GLES20.glGetUniformLocation(this.mProgram, "zOffset");
        Matrix.setIdentityM(this.mModelMatrix, 0);
        Matrix.setIdentityM(this.mViewMatrix, 0);
        Matrix.setIdentityM(this.mProjectionMatrix, 0);
        this.mIsProcessed = false;
        this.mFreezeDirector = 0;
        this.mPanoMode = bundle.getInt(TextureRenderKeys.KEY_IS_PANORAMA_MODE, 2);
        boolean z12 = true;
        this.mVideoStyle = bundle.getInt(TextureRenderKeys.KEY_IS_VIDEO_STYLE, 1);
        this.mDirectMode = bundle.getInt(TextureRenderKeys.KEY_IS_DIRECT_MODE, 1);
        if (bundle.getInt(TextureRenderKeys.KEY_IS_USE_INITIAL_HEAD_POSE_AS_FRONT, 0) == 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.mUseInitialHeadPoseAsFront = z10;
        this.mPerspecView = bundle.getFloat(TextureRenderKeys.KEY_IS_PERSPECTIVE_VIEW, this.DEFAULT_PERSPEC_VIEW);
        this.mDesireViewSize = bundle.getInt(TextureRenderKeys.KEY_IS_DESIRE_VIEW_SIZE, this.mViewSize);
        this.mOutTextureScale = bundle.getFloat(TextureRenderKeys.KEY_IS_VR_OUT_TEXTURE_SCALE, this.DEFAULT_OUT_TEXTURE_SCALE);
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_BACKGROUND_TEXTURE_SIZE)) {
            this.mBackTextureSize = bundle.getInt(TextureRenderKeys.KEY_IS_BACKGROUND_TEXTURE_SIZE);
        }
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_EXPAND_COEF)) {
            this.mExpandCoef = bundle.getFloat(TextureRenderKeys.KEY_IS_EXPAND_COEF);
        }
        this.mZOffset = bundle.getFloat(TextureRenderKeys.KEY_IS_Z_OFFSET, 0.0f);
        this.mOffsetYaw = bundle.getInt(TextureRenderKeys.KEY_IS_YAW);
        this.mOffsetPitch = bundle.getInt(TextureRenderKeys.KEY_IS_PITCH);
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_SPACE_ORIENTATION_PITCH)) {
            this.mSpaceOrientationPitch = bundle.getInt(TextureRenderKeys.KEY_IS_SPACE_ORIENTATION_PITCH);
        }
        this.mCMPFaceInnerPadding = bundle.getFloat(TextureRenderKeys.KEY_IS_CMP_FACE_INNER_PADDING, 0.0f);
        if (this.mDisplay == null) {
            this.mDisplay = ((WindowManager) TextureRenderManager.getManager().getContext().getSystemService("window")).getDefaultDisplay();
        }
        TextureRenderLog.i(this.mTexType, LOG_TAG, "display rotation:" + this.mDisplay.getRotation() + ",perspec:" + this.mPerspecView);
        updateRenderParam(null, null);
        initGLData();
        TouchDirector touchDirector = new TouchDirector(this.mDisplay);
        this.mTouchDirector = touchDirector;
        touchDirector.start();
        this.mTouchDirector.setRadius(800.0f);
        if (this.mSensorDirector == null) {
            if (DeviceManager.isVRDevice()) {
                this.mSensorDirector = new PicoDirector(this.mDisplay);
            } else {
                Context context2 = TextureRenderManager.getManager().getContext();
                if (context2 != null) {
                    this.mSensorDirector = new SensorDirector(context2, this.mDisplay, bundle.getInt(TextureRenderKeys.KEY_IS_SENSOR_START_POS, 1), bundle.getInt(TextureRenderKeys.KEY_IS_SENSOR_RESET_POS, 2), this.mTexType, bundle.getInt(TextureRenderKeys.KEY_IS_SENSOR_SMOOTHER_ENABLED, 0), bundle.getFloat(TextureRenderKeys.KEY_IS_SENSOR_SMOOTH_FACTOR, 1.0f), this);
                }
            }
        }
        IDirector iDirector = this.mSensorDirector;
        if (iDirector != null) {
            iDirector.setParam(bundle);
        }
        if (this.mOrientationEventHandler == null && bundle.getInt(TextureRenderKeys.KEY_IS_HANDLE_DEVICE_ORIENTATION_ENABLED, 0) != 0 && !DeviceManager.isVRDevice() && (context = TextureRenderManager.getManager().getContext()) != null) {
            this.mOrientationEventHandler = new OrientationEventHandler(context);
        }
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_FOV)) {
            this.mFov = bundle.getFloatArray(TextureRenderKeys.KEY_IS_FOV);
            z11 = true;
        } else {
            z11 = false;
        }
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_DISTORTION_COEFFS)) {
            this.mDistortionCoeffs = bundle.getFloatArray(TextureRenderKeys.KEY_IS_DISTORTION_COEFFS);
            z11 = true;
        }
        if (bundle.containsKey(TextureRenderKeys.KEY_IS_LENS_TO_SCREEN_DISTANCE)) {
            this.mLensToScreenDistance = bundle.getFloat(TextureRenderKeys.KEY_IS_LENS_TO_SCREEN_DISTANCE);
        } else {
            z12 = z11;
        }
        updateDistortionParam(z12);
        if (this.mEnableTouchScaler && (touchScaler = this.mTouchScaler) != null) {
            touchScaler.setMaxScale(bundle.getFloat(TextureRenderKeys.KEY_IS_VR_MAX_SCALE, 4.0f));
            this.mTouchScaler.setMinScale(bundle.getFloat(TextureRenderKeys.KEY_IS_VR_MIN_SCALE, 0.2f));
        }
        TextureRenderLog.i(this.mTexType, LOG_TAG, "init, this:" + this + ",manu:" + Build.MANUFACTURER);
        return 0;
    }

    @Override // com.ss.texturerender.effect.vr.director.IDirectorEventListener
    public void onDisplayRotationChanged(int i10, boolean z10) {
        if (z10) {
            this.mSurfaceTexture.setOption(128, 1);
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        int i10;
        float f10;
        EffectTexture effectTexture2;
        float f11;
        float f12;
        float f13;
        float f14;
        EffectTexture effectTexture3;
        VideoSurfaceTexture videoSurfaceTexture;
        Quaternion quaternion;
        float[] fArr;
        if (!this.mIsProcessed) {
            this.mIsProcessed = true;
            OrientationEventHandler orientationEventHandler = this.mOrientationEventHandler;
            if (orientationEventHandler != null) {
                orientationEventHandler.enable();
            }
            handleDirectModeChange();
            handleTouchScalerChange();
        }
        if (effectTexture.getTexTarget() != this.mInTextureTarget) {
            TextureRenderLog.e(this.mTexType, getClass().getSimpleName(), "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
            if (videoSurfaceTexture2 != null) {
                videoSurfaceTexture2.notifyError(12, this.mEffectType, "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            }
            return effectTexture;
        } else if (this.mProgram == 0) {
            TextureRenderLog.e(this.mTexType, LOG_TAG, "program error,don't process,filter:" + this.mEffectType);
            VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
            if (videoSurfaceTexture3 != null) {
                videoSurfaceTexture3.notifyError(13, this.mEffectType, "program error,don't process,filter:" + this.mEffectType);
            }
            return effectTexture;
        } else {
            VideoSurfaceTexture videoSurfaceTexture4 = this.mSurfaceTexture;
            if (videoSurfaceTexture4 != null) {
                videoSurfaceTexture4.currentEffectProcessBegin(this.mEffectType);
            }
            GLES20.glUseProgram(this.mProgram);
            this.mViewPortWidth = this.mSurfaceTexture.getViewportWidth();
            this.mViewPortHeight = this.mSurfaceTexture.getViewportHeight();
            if (this.mVideoStyle == 1) {
                updateRenderParam(effectTexture, frameBuffer);
            }
            GLES20.glBindBuffer(34962, this.mVerVBO);
            GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, this.TRIANGLE_VERTICES_DATA_STRIDE_BYTES, 0);
            GLES20.glEnableVertexAttribArray(this.maPositionHandle);
            GLES20.glBindBuffer(34962, 0);
            GLES20.glBindBuffer(34962, this.mTexVBO);
            GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, this.TEXTURE_VERTICES_DATA_STRIDE_BYTES, 0);
            GLES20.glEnableVertexAttribArray(this.maTextureHandle);
            GLES20.glBindBuffer(34962, 0);
            if (!this.mSensorDirectorEnabled && (fArr = this.mFreezeModelMatrix) != null) {
                this.mModelMatrix = fArr;
                if (!this.mDidGetInitialModelMatrix) {
                    IDirector iDirector = this.mSensorDirector;
                    if (iDirector != null && this.mDirectMode != 2) {
                        iDirector.getView(fArr, 0);
                    }
                    Matrix.invertM(this.mInitialModelMatrixInvert, 0, this.mModelMatrix, 0);
                    float[] fArr2 = this.mModelMatrix;
                    Matrix.multiplyMM(fArr2, 0, fArr2, 0, this.mInitialModelMatrixInvert, 0);
                    this.mFreezeModelMatrix = this.mModelMatrix;
                    this.mDidGetInitialModelMatrix = true;
                }
            } else {
                IDirector iDirector2 = this.mSensorDirector;
                if (iDirector2 != null && this.mDirectMode != 2) {
                    iDirector2.getView(this.mModelMatrix, 0);
                }
                if (!this.mDidGetInitialModelMatrix) {
                    Matrix.invertM(this.mInitialModelMatrixInvert, 0, this.mModelMatrix, 0);
                    this.mDidGetInitialModelMatrix = true;
                }
                if (this.mDirectMode != 2 && this.mUseInitialHeadPoseAsFront) {
                    float[] fArr3 = this.mModelMatrix;
                    Matrix.multiplyMM(fArr3, 0, fArr3, 0, this.mInitialModelMatrixInvert, 0);
                }
            }
            Matrix.setIdentityM(this.mRotateMatrix, 0);
            if (!DeviceManager.isVRDevice() || this.mOffsetYaw != 0 || this.mOffsetPitch != 0) {
                Matrix.rotateM(this.mRotateMatrix, 0, this.mTouchDirector.getDiffX() + this.mOffsetPitch, 1.0f, 0.0f, 0.0f);
                Matrix.rotateM(this.mRotateMatrix, 0, this.mTouchDirector.getDiffY() - this.mOffsetYaw, 0.0f, 1.0f, 0.0f);
            }
            Matrix.rotateM(this.mRotateMatrix, 0, this.mSpaceOrientationPitch, 1.0f, 0.0f, 0.0f);
            float[] fArr4 = new float[16];
            Matrix.multiplyMM(fArr4, 0, this.mModelMatrix, 0, this.mRotateMatrix, 0);
            Matrix.invertM(fArr4, 0, fArr4, 0);
            Quaternion quaternion2 = new Quaternion(fArr4);
            this.mSurfaceTexture.setHeadPose(quaternion2);
            this.mHeadposeCallbackCounter++;
            VideoSurfaceTexture videoSurfaceTexture5 = this.mSurfaceTexture;
            if (videoSurfaceTexture5 != null) {
                i10 = videoSurfaceTexture5.getIntOption(135);
            } else {
                i10 = 1;
            }
            int i11 = this.mHeadposeCallbackCounter % i10;
            this.mHeadposeCallbackCounter = i11;
            if (i11 == 0 && ((quaternion = this.mLastCallbackHeadpose) == null || Math.abs(quaternion.getX0() - quaternion2.getX0()) + Math.abs(this.mLastCallbackHeadpose.getX1() - quaternion2.getX1()) + Math.abs(this.mLastCallbackHeadpose.getX2() - quaternion2.getX2()) + Math.abs(this.mLastCallbackHeadpose.getX3() - quaternion2.getX3()) > 0.001d)) {
                VideoSurfaceTexture videoSurfaceTexture6 = this.mSurfaceTexture;
                if (videoSurfaceTexture6 != null) {
                    videoSurfaceTexture6.onHeadposeChanged(quaternion2);
                }
                this.mLastCallbackHeadpose = quaternion2;
            }
            float scale = this.mTouchScaler.getScale();
            GLES20.glUniformMatrix4fv(GLES20.glGetUniformLocation(this.mProgram, "rotateMatrix"), 1, false, this.mRotateMatrix, 0);
            if (this.mVRModel == 3) {
                GLES20.glUniform2fv(GLES20.glGetUniformLocation(this.mProgram, "texOffset"), 6, this.mCubeTexOffsetPerFace, 0);
                GLES20.glUniformMatrix2fv(GLES20.glGetUniformLocation(this.mProgram, "rotates"), 6, false, this.mCubeRotatesPerFace, 0);
                GLES20.glUniform3f(this.mZOffsetHandle, 0.0f, 0.0f, this.mZOffset);
            }
            GLES20.glUniform1f(this.mExpandCoefHandle, this.mExpandCoef);
            float viewportWidth = (this.mSurfaceTexture.getViewportWidth() * 1.0f) / this.mSurfaceTexture.getViewportHeight();
            if (viewportWidth > 1.0f) {
                f10 = viewportWidth;
            } else {
                f10 = 1.0f;
            }
            this.mPerspecViewRatio = f10;
            if (frameBuffer != null) {
                updateOutTexSize(viewportWidth);
                effectTexture2 = genTexture();
                if (effectTexture2 == null) {
                    return effectTexture;
                }
                frameBuffer.bindTexture2D(effectTexture2.getTexID());
                this.mViewPortWidth = this.mOutTexWidth;
                this.mViewPortHeight = this.mOutTexHeight;
            } else {
                effectTexture2 = null;
            }
            if (this.mNeedClear) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16384);
            }
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(this.mInTextureTarget, effectTexture.getTexID());
            GLES20.glUniform1i(this.mInputTextureHandle, 0);
            if (this.mPanoMode == 1) {
                GLES20.glUniformMatrix3fv(GLES20.glGetUniformLocation(this.mProgram, "texScale"), 1, false, TEXSCALE_2D, 0);
                Matrix.perspectiveM(this.mProjectionMatrix, 0, this.mPerspecView / this.mPerspecViewRatio, viewportWidth, 0.1f, 100.0f);
                Matrix.scaleM(this.mProjectionMatrix, 0, scale, scale, 1.0f);
                GLES20.glViewport(this.mViewPortX, this.mViewPortY, this.mViewPortWidth, this.mViewPortHeight);
                Matrix.setLookAtM(this.mViewMatrix, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f);
                draw(this.mIndexBuffers);
                effectTexture.giveBack();
            } else {
                if (!DeviceManager.isVRDevice()) {
                    updateDistortionParam(false);
                    float[] fArr5 = this.mProjectionMatrix;
                    float[] fArr6 = this.mFovTan[LEFT];
                    float f15 = ZNEAR;
                    Matrix.frustumM(fArr5, 0, (-fArr6[0]) * f15, fArr6[1] * f15, (-fArr6[2]) * f15, fArr6[3] * f15, f15, ZFAR);
                } else {
                    Matrix.perspectiveM(this.mProjectionMatrix, 0, this.mPerspecView, viewportWidth / 2.0f, 0.1f, 100.0f);
                }
                if (this.mVideoStyle == 4) {
                    GLES20.glUniformMatrix3fv(GLES20.glGetUniformLocation(this.mProgram, "texScale"), 1, false, SIDE_BY_SIDE_TEXSCALE_LEFT, 0);
                } else {
                    GLES20.glUniformMatrix3fv(GLES20.glGetUniformLocation(this.mProgram, "texScale"), 1, false, TOP_BOTTOM_TEXSCALE_LEFT, 0);
                }
                GLES20.glViewport(0, 0, this.mViewPortWidth / 2, this.mViewPortHeight);
                float[] fArr7 = this.mViewMatrix;
                if (DeviceManager.isVRDevice()) {
                    f11 = 0.0f;
                } else {
                    f11 = -this.mHalfEyeDistance;
                }
                if (DeviceManager.isVRDevice()) {
                    f12 = 0.0f;
                } else {
                    f12 = -this.mHalfEyeDistance;
                }
                Matrix.setLookAtM(fArr7, 0, f11, 0.0f, 0.0f, f12, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f);
                draw(this.mIndexBuffers);
                FloatBuffer floatBuffer = this.mTextureVerticesRight;
                if (floatBuffer != null) {
                    floatBuffer.position(0);
                    GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, this.TEXTURE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTextureVerticesRight);
                    GLES20.glEnableVertexAttribArray(this.maTextureHandle);
                }
                if (!DeviceManager.isVRDevice()) {
                    float[] fArr8 = this.mProjectionMatrix;
                    float[] fArr9 = this.mFovTan[RIGHT];
                    float f16 = ZNEAR;
                    Matrix.frustumM(fArr8, 0, (-fArr9[0]) * f16, fArr9[1] * f16, (-fArr9[2]) * f16, fArr9[3] * f16, f16, ZFAR);
                }
                if (this.mVideoStyle == 4) {
                    GLES20.glUniformMatrix3fv(GLES20.glGetUniformLocation(this.mProgram, "texScale"), 1, false, SIDE_BY_SIDE_TEXSCALE_RIGHT, 0);
                } else {
                    GLES20.glUniformMatrix3fv(GLES20.glGetUniformLocation(this.mProgram, "texScale"), 1, false, TOP_BOTTOM_TEXSCALE_RIGHT, 0);
                }
                int i12 = this.mViewPortWidth;
                GLES20.glViewport(i12 / 2, 0, i12 / 2, this.mViewPortHeight);
                float[] fArr10 = this.mViewMatrix;
                if (DeviceManager.isVRDevice()) {
                    f13 = 0.0f;
                } else {
                    f13 = this.mHalfEyeDistance;
                }
                if (DeviceManager.isVRDevice()) {
                    f14 = 0.0f;
                } else {
                    f14 = this.mHalfEyeDistance;
                }
                Matrix.setLookAtM(fArr10, 0, f13, 0.0f, 0.0f, f14, 0.0f, -1.0f, 0.0f, 1.0f, 0.0f);
                draw(this.mIndexBuffers);
                effectTexture.giveBack();
                if (!DeviceManager.isVRDevice()) {
                    if (frameBuffer != null) {
                        effectTexture3 = genTexture();
                        if (effectTexture3 != null) {
                            frameBuffer.bindTexture2D(effectTexture3.getTexID());
                        }
                    } else {
                        effectTexture3 = null;
                    }
                    GLES20.glUseProgram(this.mProgram);
                    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                    GLES20.glClear(16384);
                    GLES20.glViewport(this.mViewPortX, this.mViewPortY, this.mViewPortWidth, this.mViewPortHeight);
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(this.mInTextureTarget, effectTexture2.getTexID());
                    GLES20.glUniform1i(this.mInputTextureHandle, 0);
                    GLES20.glUniformMatrix4fv(this.mMVPMatrixHandle, 1, false, this.mIdentityMat, 0);
                    GLES20.glEnable(3089);
                    GLES20.glScissor(this.mViewPortX, this.mViewPortY, this.mViewPortWidth / 2, this.mViewPortHeight);
                    renderDistortion(LEFT);
                    int i13 = this.mViewPortWidth;
                    GLES20.glScissor((i13 / 2) + this.mViewPortX, this.mViewPortY, i13 / 2, this.mViewPortHeight);
                    renderDistortion(RIGHT);
                    GLES20.glDisable(3089);
                    effectTexture2.giveBack();
                    effectTexture2 = effectTexture3;
                }
            }
            GLES20.glBindTexture(this.mInTextureTarget, 0);
            GLES20.glDisableVertexAttribArray(this.maPositionHandle);
            GLES20.glDisableVertexAttribArray(this.maTextureHandle);
            this.mSurfaceTexture.setOption(19, this.mEffectType, 1);
            GLES20.glFinish();
            VideoSurfaceTexture videoSurfaceTexture7 = this.mSurfaceTexture;
            if (videoSurfaceTexture7 != null) {
                videoSurfaceTexture7.currentEffectProcessEnd(this.mEffectType);
            }
            int checkGLError = TexGLUtils.checkGLError(this.mTexType, "error pano draw");
            if (checkGLError != 0 && (videoSurfaceTexture = this.mSurfaceTexture) != null) {
                videoSurfaceTexture.notifyError(checkGLError, this.mEffectType, "error pano draw");
            }
            if (frameBuffer == null) {
                return null;
            }
            frameBuffer.unbindTexture2D();
            return effectTexture2;
        }
    }

    protected void registTouchDirector() {
        TouchDirector touchDirector;
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        if (videoSurfaceTexture != null && (touchDirector = this.mTouchDirector) != null) {
            if (this.mFreezeDirector == 2) {
                int i10 = this.mTexType;
                TextureRenderLog.i(i10, LOG_TAG, "freezing touch,don't regist,this:" + this);
                return;
            }
            videoSurfaceTexture.registerTouchListener(touchDirector);
        }
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        IDirector iDirector = this.mSensorDirector;
        if (iDirector != null) {
            iDirector.stop();
            this.mSensorDirector = null;
        }
        OrientationEventHandler orientationEventHandler = this.mOrientationEventHandler;
        if (orientationEventHandler != null) {
            orientationEventHandler.disable();
            this.mOrientationEventHandler = null;
        }
        this.mIsProcessed = false;
        return super.release();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, int i11) {
        TouchDirector touchDirector;
        VideoSurfaceTexture videoSurfaceTexture;
        if (i10 != 1) {
            if (i10 == 101) {
                this.mPanoMode = i11;
                return;
            } else if (i10 == 102) {
                this.mVideoStyle = i11;
                updateRenderParam(null, null);
                return;
            } else if (i10 == 105) {
                this.mDirectMode = i11;
                handleDirectModeChange();
                return;
            } else if (i10 != 106) {
                if (i10 == 108) {
                    this.mOffsetYaw = i11;
                } else if (i10 == 109) {
                    this.mOffsetPitch = i11;
                } else if (i10 == 128) {
                    this.mDidGetInitialModelMatrix = false;
                    if (i11 == 0 || (touchDirector = this.mTouchDirector) == null) {
                        return;
                    }
                    touchDirector.reset();
                    return;
                } else if (i10 != 129) {
                    switch (i10) {
                        case 137:
                            this.mFreezeDirector = i11;
                            if (i11 == 0) {
                                handleDirectModeChange();
                                return;
                            } else if (i11 == 1 || i11 == 2) {
                                IDirector iDirector = this.mSensorDirector;
                                if (iDirector != null) {
                                    iDirector.stop();
                                }
                                if (i11 != 2 || (videoSurfaceTexture = this.mSurfaceTexture) == null) {
                                    return;
                                }
                                videoSurfaceTexture.unRegisterTouchListener(this.mTouchDirector);
                                return;
                            } else {
                                return;
                            }
                        case 138:
                            this.mSpaceOrientationPitch = i11;
                            break;
                        case 139:
                            TouchScaler touchScaler = this.mTouchScaler;
                            if (touchScaler == null || !this.mEnableTouchScaler) {
                                return;
                            }
                            touchScaler.stop();
                            this.mTouchScaler.start();
                            return;
                    }
                } else {
                    boolean z10 = i11 != 0;
                    this.mSensorDirectorEnabled = z10;
                    if (z10) {
                        return;
                    }
                    this.mFreezeModelMatrix = this.mModelMatrix;
                    return;
                }
            } else if (this.mSensorDirector != null) {
                if (i11 == 1) {
                    OrientationEventHandler orientationEventHandler = this.mOrientationEventHandler;
                    if (orientationEventHandler != null) {
                        orientationEventHandler.disable();
                    }
                    this.mSensorDirector.stop();
                } else {
                    OrientationEventHandler orientationEventHandler2 = this.mOrientationEventHandler;
                    if (orientationEventHandler2 != null) {
                        orientationEventHandler2.enable();
                    }
                    startSensorDirector();
                }
            }
        } else if (this.mSensorDirector != null) {
            if (i11 == 3) {
                OrientationEventHandler orientationEventHandler3 = this.mOrientationEventHandler;
                if (orientationEventHandler3 != null) {
                    orientationEventHandler3.disable();
                }
                this.mSensorDirector.stop();
                this.mSensorDirector.reset();
                this.mTouchDirector.stop();
                this.mTouchDirector.reset();
                this.mTouchScaler.stop();
                this.mFreezeDirector = 0;
            } else if (i11 == 1) {
                OrientationEventHandler orientationEventHandler4 = this.mOrientationEventHandler;
                if (orientationEventHandler4 != null) {
                    orientationEventHandler4.enable();
                }
                startSensorDirector();
                this.mTouchDirector.start();
                this.mTouchScaler.start();
            }
        }
        int i12 = this.mTexType;
        TextureRenderLog.i(i12, LOG_TAG, "setOption key:" + i10 + " value:" + i11 + ", this:" + this);
        super.setOption(i10, i11);
    }

    protected void startSensorDirector() {
        IDirector iDirector = this.mSensorDirector;
        if (iDirector != null) {
            if (this.mFreezeDirector == 0) {
                iDirector.start();
                return;
            }
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, "freezing,don't start,this:" + this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateOutTexSize(float f10) {
        if (this.mVideoProjectModel == 2 && this.mViewSize == 180) {
            this.mOutTexHeight = (int) Math.ceil(((this.mPerspecView / this.mPerspecViewRatio) / 90.0f) * this.mSurfaceTexture.getTexHeight() * this.mOutTextureScale);
        } else {
            this.mOutTexHeight = (int) Math.ceil(((this.mPerspecView / this.mPerspecViewRatio) / 180.0f) * this.mSurfaceTexture.getTexHeight() * this.mOutTextureScale);
        }
        int i10 = this.mOutTexHeight;
        int i11 = ((4 - (i10 % 4)) % 4) + i10;
        this.mOutTexHeight = i11;
        this.mOutTexWidth = (int) Math.ceil(i11 * 1.0f * f10);
        int i12 = this.mTexType;
        TextureRenderLog.d(i12, LOG_TAG, "pano OutTex h:" + this.mOutTexHeight + " w:" + this.mOutTexWidth + ",viewPortRatio:" + f10 + ", this:" + this);
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int updateRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        float[] fArr;
        float[][] fArr2;
        short[] sArr;
        int i10;
        int i11;
        short s10;
        short s11;
        short s12;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "handleModlelChange mVideoStyle:" + this.mVideoStyle + ", this:" + this);
        int i12 = 2;
        short s13 = 0;
        short s14 = 1;
        if (this.mVideoStyle != 1) {
            int i13 = this.mVRModel;
            if (i13 != 1 && i13 != 3 && i13 != 6) {
                if (i13 != 2 && i13 != 4 && i13 != 5) {
                    i10 = 4;
                    fArr = null;
                    fArr2 = null;
                    sArr = null;
                } else {
                    fArr = new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f};
                    sArr = new short[]{0, 1, 2, 1, 2, 3, 4, 5, 6, 5, 6, 7, 8, 9, 10, 9, 10, 11, 12, 13, 14, 13, 14, 15, 16, 17, 18, 17, 18, 19, 20, 21, 22, 21, 22, 23};
                    fArr2 = new float[2];
                    if (i13 == 5) {
                        float f10 = this.mCMPFaceInnerPadding;
                        float f11 = 0.16666667f - (0.33333334f * f10);
                        float f12 = 0.25f - (f10 * 0.5f);
                        fArr2[0] = new float[48];
                        int i14 = 0;
                        for (int i15 = 6; i14 < i15; i15 = 6) {
                            int i16 = i14 * 8;
                            float f13 = (((i14 % 3) * 2) + 1) * 0.16666667f;
                            float f14 = (((i14 / 3) * 2) + 1) * 0.25f;
                            float[] fArr3 = fArr2[0];
                            float f15 = f13 - f11;
                            fArr3[i16] = f15;
                            float f16 = f14 - f12;
                            fArr3[i16 + 1] = f16;
                            float f17 = f13 + f11;
                            fArr3[i16 + 2] = f17;
                            fArr3[i16 + 3] = f16;
                            fArr3[i16 + 4] = f15;
                            float f18 = f14 + f12;
                            fArr3[i16 + 5] = f18;
                            fArr3[i16 + 6] = f17;
                            fArr3[i16 + 7] = f18;
                            i14++;
                        }
                    } else if (i13 == 4) {
                        fArr2[0] = new float[]{0.0f, 0.0f, 0.33333334f, 0.0f, 0.0f, 0.5f, 0.33333334f, 0.5f, 0.33333334f, 0.0f, 0.6666667f, 0.0f, 0.33333334f, 0.5f, 0.6666667f, 0.5f, 0.6666667f, 0.0f, 1.0f, 0.0f, 0.6666667f, 0.5f, 1.0f, 0.5f, 0.0f, 1.0f, 0.0f, 0.5f, 0.33333334f, 1.0f, 0.33333334f, 0.5f, 0.6666667f, 0.5f, 0.6666667f, 1.0f, 0.33333334f, 0.5f, 0.33333334f, 1.0f, 0.6666667f, 1.0f, 0.6666667f, 0.5f, 1.0f, 1.0f, 1.0f, 0.5f};
                    } else if (this.mViewSize == 360) {
                        fArr2[0] = new float[]{0.0f, 0.5f, 0.33333334f, 0.5f, 0.0f, 1.0f, 0.33333334f, 1.0f, 0.33333334f, 0.5f, 0.6666667f, 0.5f, 0.33333334f, 1.0f, 0.6666667f, 1.0f, 0.6666667f, 0.5f, 1.0f, 0.5f, 0.6666667f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.5f, 0.6666667f, 0.0f, 0.6666667f, 0.5f, 0.33333334f, 0.5f, 0.33333334f, 0.0f, 0.6666667f, 0.5f, 0.6666667f, 0.0f, 0.33333334f, 0.0f, 0.33333334f, 0.5f, 0.0f, 0.0f, 0.0f, 0.5f};
                    } else {
                        fArr2[0] = new float[]{-0.16666667f, 0.0f, 0.16666667f, 0.0f, -0.16666667f, 1.0f, 0.16666667f, 1.0f, 0.16666667f, 0.0f, 0.5f, 0.0f, 0.16666667f, 1.0f, 0.5f, 1.0f, 0.5f, 0.0f, 0.8333333f, 0.0f, 0.5f, 1.0f, 0.8333333f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.6666667f, 0.0f, 0.6666667f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.6666667f, 0.0f, 0.6666667f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.6666667f, 0.0f, 0.6666667f, 1.0f};
                    }
                    i10 = 4;
                }
            } else {
                int i17 = (int) ((this.mDesireViewSize * 150.0d) / 360.0d);
                float f19 = (float) ((i11 / 180) * 3.141592653589793d);
                float f20 = 1.0f / 75;
                float f21 = 1.0f / i17;
                int i18 = i17 + 1;
                float[] fArr4 = new float[i18 * VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266];
                short[] sArr2 = new short[i18 * MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_HTTP_RES_FINISH_TIME];
                short s15 = 0;
                int i19 = 0;
                while (true) {
                    if (s15 >= 76) {
                        break;
                    }
                    double d10 = s15 * 3.1415927f * f20;
                    float cos = (float) Math.cos(d10);
                    float sin = (float) Math.sin(d10);
                    short s16 = s13;
                    while (s16 < i18) {
                        float[] fArr5 = fArr4;
                        double d11 = (3.1415927f - (f19 / 2.0f)) + (s16 * f19 * f21);
                        double d12 = sin;
                        s14 = 1;
                        float f22 = mRadius;
                        fArr5[i19] = (-((float) (Math.sin(d11) * d12))) * f22;
                        int i20 = i19 + 2;
                        fArr5[i19 + 1] = cos * f22;
                        i19 += 3;
                        fArr5[i20] = ((float) (Math.cos(d11) * d12)) * f22;
                        s16 = (short) (s16 + 1);
                        fArr4 = fArr5;
                        i17 = i17;
                        f19 = f19;
                    }
                    s15 = (short) (s15 + s14);
                    s13 = 0;
                    i12 = 2;
                }
                int i21 = i17;
                float[] fArr6 = fArr4;
                fArr2 = new float[i12];
                int i22 = i18 * 152;
                fArr2[0] = new float[i22];
                fArr2[s14] = null;
                short s17 = 0;
                int i23 = 0;
                int i24 = 0;
                for (s10 = 76; s17 < s10; s10 = 76) {
                    for (short s18 = 0; s18 < i18; s18 = (short) (s18 + s11)) {
                        int i25 = this.mVideoStyle;
                        if (i25 != 2) {
                            if (i25 != 3) {
                                if (i25 == 4) {
                                    if (DeviceManager.isVRDevice()) {
                                        float[] fArr7 = fArr2[0];
                                        s12 = 1;
                                        int i26 = i23 + 1;
                                        fArr7[i23] = s18 * f21;
                                        i23 += 2;
                                        fArr7[i26] = s17 * f20;
                                    } else {
                                        s12 = 1;
                                        float[] fArr8 = fArr2[0];
                                        int i27 = i23 + 1;
                                        fArr8[i23] = s18 * f21 * 0.5f;
                                        i23 += 2;
                                        fArr8[i27] = 1.0f - (s17 * f20);
                                    }
                                    if (fArr2[s12] == null) {
                                        fArr2[s12] = new float[i22];
                                    }
                                    if (DeviceManager.isVRDevice()) {
                                        float[] fArr9 = fArr2[s12];
                                        int i28 = i24 + 1;
                                        fArr9[i24] = s18 * f21;
                                        i24 += 2;
                                        fArr9[i28] = s17 * f20;
                                        s11 = s12;
                                    } else {
                                        float[] fArr10 = fArr2[s12];
                                        int i29 = i24 + 1;
                                        fArr10[i24] = (s18 * f21 * 0.5f) + 0.5f;
                                        i24 += 2;
                                        fArr10[i29] = 1.0f - (s17 * f20);
                                    }
                                }
                                s11 = 1;
                            } else {
                                int i30 = i23 + 1;
                                float f23 = s18 * f21;
                                fArr2[0][i23] = f23;
                                if (DeviceManager.isVRDevice()) {
                                    i23 += 2;
                                    fArr2[0][i30] = s17 * f20;
                                } else {
                                    i23 += 2;
                                    fArr2[0][i30] = 1.0f - ((s17 * f20) * 0.5f);
                                }
                                s11 = 1;
                                if (fArr2[1] == null) {
                                    fArr2[1] = new float[i22];
                                }
                                int i31 = i24 + 1;
                                fArr2[1][i24] = f23;
                                if (DeviceManager.isVRDevice()) {
                                    i24 += 2;
                                    fArr2[1][i31] = s17 * f20;
                                } else {
                                    i24 += 2;
                                    fArr2[1][i31] = 0.5f - ((s17 * f20) * 0.5f);
                                }
                            }
                        } else {
                            int i32 = i23 + 1;
                            fArr2[0][i23] = s18 * f21;
                            if (DeviceManager.isVRDevice()) {
                                i23 += 2;
                                fArr2[0][i32] = s17 * f20;
                                s11 = 1;
                            } else {
                                i23 += 2;
                                fArr2[0][i32] = 1.0f - (s17 * f20);
                                s11 = 1;
                            }
                        }
                    }
                    s17 = (short) (s17 + 1);
                }
                short s19 = 1;
                short s20 = 0;
                int i33 = 0;
                while (s20 < 75) {
                    int i34 = i21;
                    short s21 = 0;
                    while (s21 < i34) {
                        int i35 = s20 * i18;
                        sArr2[i33] = (short) (i35 + s21);
                        int i36 = (s20 + 1) * i18;
                        short s22 = (short) (i36 + s21);
                        sArr2[i33 + 1] = s22;
                        int i37 = s21 + s19;
                        short s23 = (short) (i35 + i37);
                        sArr2[i33 + 2] = s23;
                        sArr2[i33 + 3] = s23;
                        int i38 = i33 + 5;
                        sArr2[i33 + 4] = s22;
                        i33 += 6;
                        sArr2[i38] = (short) (i36 + i37);
                        s21 = (short) i37;
                        s19 = 1;
                    }
                    s20 = (short) (s20 + s19);
                    i21 = i34;
                    s19 = 1;
                }
                if (this.mVRModel == 3) {
                    this.mCubeTexOffsetPerFace = new float[]{0.0f, 0.0f, 0.33333334f, 0.0f, 0.6666667f, 0.0f, 0.0f, 0.5f, 0.33333334f, 0.5f, 0.6666667f, 0.5f};
                    this.mCubeRotatesPerFace = new float[]{1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f};
                }
                sArr = sArr2;
                fArr = fArr6;
                i10 = 4;
                s13 = 0;
            }
        } else if (effectTexture == null) {
            return -1;
        } else {
            float tan = (float) (mRadius * Math.tan((((this.mPerspecView - 15.0f) / 2.0f) / 180.0f) * 3.141592653589793d));
            float width = (effectTexture.getWidth() * tan) / effectTexture.getHeight();
            float f24 = -width;
            float f25 = -tan;
            float f26 = mRadius;
            fArr = new float[]{f24, f25, -f26, width, f25, -f26, f24, tan, -f26, width, tan, -f26};
            TextureRenderLog.i(this.mTexType, LOG_TAG, "triangle ver:" + Arrays.toString(GLDefaultFilter.mTriangleVerticesData));
            fArr2 = new float[2];
            s13 = 0;
            fArr2[0] = new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
            i10 = 4;
            sArr = new short[]{0, 1, 2, 1, 2, 3};
        }
        if (fArr2 != null) {
            FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr2[s13].length * i10).order(ByteOrder.nativeOrder()).asFloatBuffer();
            this.mTextureVertices = asFloatBuffer;
            if (asFloatBuffer != null) {
                asFloatBuffer.put(fArr2[s13]).position(s13);
            }
            float[] fArr11 = fArr2[1];
            if (fArr11 != null) {
                FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(fArr11.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
                this.mTextureVerticesRight = asFloatBuffer2;
                if (asFloatBuffer2 != null) {
                    asFloatBuffer2.put(fArr2[1]).position(0);
                }
            } else {
                this.mTextureVerticesRight = null;
            }
        }
        if (fArr != null) {
            FloatBuffer asFloatBuffer3 = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
            this.mTriangleVertices = asFloatBuffer3;
            if (asFloatBuffer3 != null) {
                asFloatBuffer3.put(fArr).position(0);
            }
        }
        if (sArr != null) {
            ShortBuffer asShortBuffer = ByteBuffer.allocateDirect(sArr.length * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
            this.mIndexBuffers = asShortBuffer;
            asShortBuffer.put(sArr).position(0);
            return 0;
        }
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(int i10, float f10) {
        if (i10 == 103) {
            this.mPerspecView = f10;
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, LOG_TAG, "perspective view:" + f10);
        } else if (i10 == 104) {
            this.mHalfEyeDistance = f10 / 2.0f;
            int i12 = this.mTexType;
            TextureRenderLog.i(i12, LOG_TAG, "eye disfance:" + f10);
        } else if (i10 == 111) {
            this.mZOffset = f10;
            int i13 = this.mTexType;
            TextureRenderLog.i(i13, LOG_TAG, "set zoffset:" + f10);
        } else if (i10 != 164) {
            super.setOption(i10, f10);
        } else {
            this.mOutTextureScale = f10;
            int i14 = this.mTexType;
            TextureRenderLog.i(i14, LOG_TAG, "set textureScale:" + f10);
        }
    }

    public GLPanoramaFilter(int i10) {
        super(i10, 8);
        this.vertexDefaultShader = "attribute vec4 aPosition;\nuniform mat4 u_MVPMatrix;\nuniform mat4 rotateMatrix;attribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;void main() {\n  gl_Position =  u_MVPMatrix * rotateMatrix * aPosition;\n  vTextureCoord = aTextureCoord.xy;\n  verPosition = aPosition.xyz;}\n";
        this.eacFragShader = "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = 1.0 / 3.0 * clamp(floor(oriCoord.x * 3.0), 0.0, 2.0);\n    float yStep = 0.5 * step(0.5, oriCoord.y);\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 4.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 4.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture,  eacResult.xy);\n}";
        this.eac180FragShader = "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = -1.0 / 6.0 + step(1.0 / 6.0, oriCoord.x) / 3.0 + step(3.0 / 6.0, oriCoord.x) / 3.0 + step(2.0 / 3.0, oriCoord.x) / 6.0;\n    float yStep = 0.0;\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 2.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 2.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = step(0.0, -verPosition.z) * texture2D(sTexture, eacResult.xy);\n}";
        this.offsetCubicFragShader = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nvarying vec3 verPosition;\nuniform vec3 zOffset;\nuniform int cubemapMode;\nuniform vec2 texOffset[6];\nuniform mat2 rotates[6];\nuniform mat3 texScale;//one eye and two eye scale\nvec2 cubeToTexture(vec3 cubeCoord, float expand) {\n    vec2 result;\n    float absX = abs(cubeCoord.x);\n    float absY = abs(cubeCoord.y);\n    float absZ = abs(cubeCoord.z);\n    int index;//0:left 1:front 2:right 3:top 4:back 5:bottom\n    if (-cubeCoord.z >= absX && -cubeCoord.z >= absY) {\n        result = vec2(cubeCoord.x, cubeCoord.y);\n        index = 1;\n    } else if (cubeCoord.z >= absX && cubeCoord.z >= absY) {\n        result = vec2(-cubeCoord.x, cubeCoord.y);\n        index = 4;\n    } else if (cubeCoord.y >= absX && cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, cubeCoord.z);\n        index = 3;\n    } else if (-cubeCoord.y >= absX && -cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, -cubeCoord.z);\n        index = 5;\n    } else if (cubeCoord.x >= absY && cubeCoord.x >= absZ) {\n        result = vec2(cubeCoord.z, cubeCoord.y);\n        index = 2;\n    } else {\n        result = vec2(-cubeCoord.z, cubeCoord.y);\n        index = 0;\n    }\n    result = result * rotates[index] / expand;\n    result = vec2((result.x + 1.0) / 6.0, (result.y + 1.0) / 4.0) + texOffset[index];\n    return result;\n}\nvec2 offsetCubicTransFunc(vec3 inCubePosition) {\n    inCubePosition = inCubePosition - zOffset;\n    inCubePosition = inCubePosition / max(max(abs(inCubePosition.x),abs(inCubePosition.y)),abs(inCubePosition.z));\n    return cubeToTexture(inCubePosition, expandCoef);\n}\nvoid main() {\n    vec3 result = vec3(offsetCubicTransFunc(verPosition),1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}";
        this.mExpandCoef = 1.0f;
        this.mOffsetYaw = 0;
        this.mOffsetPitch = 0;
        this.mSpaceOrientationPitch = 0;
        this.mProjectionMatrix = new float[16];
        this.mModelMatrix = new float[16];
        this.mFreezeModelMatrix = new float[16];
        this.mInitialModelMatrixInvert = new float[16];
        this.mDidGetInitialModelMatrix = false;
        this.mUseInitialHeadPoseAsFront = false;
        this.mViewMatrix = new float[16];
        this.mRotateMatrix = new float[16];
        this.mSensorDirectorEnabled = true;
        this.mPanoMode = 2;
        this.mVideoStyle = 1;
        this.mVRModel = 1;
        this.mVideoProjectModel = 1;
        this.mViewSize = 360;
        this.mDesireViewSize = 360;
        this.mBackTextureSize = 180;
        this.mDirectMode = 1;
        this.DEFAULT_PERSPEC_VIEW = 100.0f;
        this.mPerspecView = 100.0f;
        this.mPerspecViewRatio = 1.0f;
        this.mFov = new float[]{100.0f / 2.0f, 100.0f / 2.0f, 100.0f / 2.0f, 100.0f / 2.0f};
        this.mHalfEyeDistance = 0.03f;
        this.mIsProcessed = false;
        this.mLensToScreenDistance = 0.042f;
        this.mDistortionCoeffs = new float[]{0.441f, 0.156f};
        this.mTrayToLensDis = 0.035f;
        this.mScreenW = -1;
        this.mScreenH = -1;
        this.DEFAULT_OUT_TEXTURE_SCALE = 1.1f;
        this.mOutTextureScale = 1.1f;
        this.mTextureVerticesRight = null;
        this.mEBO = -1;
        this.mTexVBO = -1;
        this.mVerVBO = -1;
        this.mCMPFaceInnerPadding = 0.0f;
        this.mHeadposeCallbackCounter = 0;
        this.mLastCallbackHeadpose = null;
        this.mFreezeDirector = 0;
        this.mOrientationEventHandler = null;
        construct();
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public void setOption(Bundle bundle) {
        if (bundle != null && this.mEffectType == bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE)) {
            int i10 = this.mTexType;
            TextureRenderLog.i(i10, LOG_TAG, " setOption:" + bundle.toString() + ",this:" + this);
            if (bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) != 134) {
                return;
            }
            IDirector iDirector = this.mSensorDirector;
            if (iDirector != null) {
                iDirector.stop();
                this.mSensorDirector.reset();
                startSensorDirector();
            }
            TouchDirector touchDirector = this.mTouchDirector;
            if (touchDirector != null) {
                touchDirector.stop();
                this.mTouchDirector.reset();
                this.mTouchDirector.start();
            }
            TouchScaler touchScaler = this.mTouchScaler;
            if (touchScaler == null || !this.mEnableTouchScaler) {
                return;
            }
            touchScaler.stop();
            this.mTouchScaler.start();
            return;
        }
        super.setOption(bundle);
    }
}
