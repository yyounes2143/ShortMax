.class public Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLPanoramaFilter.java"

# interfaces
.implements Lcom/ss/texturerender/effect/vr/director/IDirectorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_SIZE_METER:F = 0.003f

.field private static LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLPanoramaFilter"

.field private static METERS_PER_INCH:F = 0.0f

.field private static RESOLUTION:I = 0x0

.field private static RIGHT:I = 0x0

.field private static SIDE_BY_SIDE_TEXSCALE_LEFT:[F = null

.field private static SIDE_BY_SIDE_TEXSCALE_RIGHT:[F = null

.field protected static TEXSCALE_2D:[F = null

.field private static TOP_BOTTOM_TEXSCALE_LEFT:[F = null

.field private static TOP_BOTTOM_TEXSCALE_RIGHT:[F = null

.field private static ZFAR:F = 0.0f

.field private static ZNEAR:F = 0.0f

.field private static final cubemapShaderFragment:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvoid main() {\n    vec3 result = vec3((vTextureCoord - 0.5) / expandCoef + 0.5, 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}"

.field private static mRadius:F


# instance fields
.field private DEFAULT_OUT_TEXTURE_SCALE:F

.field private DEFAULT_PERSPEC_VIEW:F

.field private final eac180FragShader:Ljava/lang/String;

.field private final eacFragShader:Ljava/lang/String;

.field protected mBackTextureSize:I

.field private mCMPFaceInnerPadding:F

.field private mCubeRotatesPerFace:[F

.field private mCubeTexOffsetPerFace:[F

.field protected mDesireViewSize:I

.field protected mDidGetInitialModelMatrix:Z

.field protected mDirectMode:I

.field private mDisplay:Landroid/view/Display;

.field private mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

.field private mDistortionCoeffs:[F

.field private mDistortionIndex:[[S

.field protected mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

.field private mDistortionPos:[[F

.field private mDistortionTex:[[F

.field protected mDistortionTextureBuffer:[Ljava/nio/FloatBuffer;

.field protected mDistortionTriangleBuffer:[Ljava/nio/FloatBuffer;

.field protected mEBO:I

.field private mEnableTouchScaler:Z

.field private mExpandCoef:F

.field private mExpandCoefHandle:I

.field private mFov:[F

.field private mFovTan:[[F

.field private mFreezeDirector:I

.field protected mFreezeModelMatrix:[F

.field private mHalfEyeDistance:F

.field private mHeadposeCallbackCounter:I

.field private mIdentityMat:[F

.field protected mInitialModelMatrixInvert:[F

.field protected mIsProcessed:Z

.field private mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

.field private mLensToScreenDistance:F

.field private mMVPMatrixHandle:I

.field protected mModelMatrix:[F

.field protected mOffsetPitch:I

.field protected mOffsetYaw:I

.field protected mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

.field protected mOutTextureScale:F

.field private mPanoMode:I

.field protected mPerspecView:F

.field public mPerspecViewRatio:F

.field protected mProjectionMatrix:[F

.field protected mRotateMatrix:[F

.field private mScreenH:I

.field private mScreenW:I

.field protected mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

.field protected mSensorDirectorEnabled:Z

.field protected mSpaceOrientationPitch:I

.field protected mTexVBO:I

.field private mTextureVerticesRight:Ljava/nio/FloatBuffer;

.field protected mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

.field protected mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

.field private mTrayToLensDis:F

.field protected mUseInitialHeadPoseAsFront:Z

.field private mVRModel:I

.field protected mVerVBO:I

.field private mVideoProjectModel:I

.field protected mVideoStyle:I

.field protected mViewMatrix:[F

.field protected mViewSize:I

.field private mZOffset:F

.field private mZOffsetHandle:I

.field private final offsetCubicFragShader:Ljava/lang/String;

.field private final vertexDefaultShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v2, v1, [F

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v2, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->SIDE_BY_SIDE_TEXSCALE_LEFT:[F

    .line 11
    .line 12
    new-array v2, v1, [F

    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v2, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->SIDE_BY_SIDE_TEXSCALE_RIGHT:[F

    .line 18
    .line 19
    new-array v2, v1, [F

    .line 20
    .line 21
    fill-array-data v2, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v2, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TOP_BOTTOM_TEXSCALE_LEFT:[F

    .line 25
    .line 26
    new-array v2, v1, [F

    .line 27
    .line 28
    fill-array-data v2, :array_3

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TOP_BOTTOM_TEXSCALE_RIGHT:[F

    .line 32
    .line 33
    new-array v1, v1, [F

    .line 34
    .line 35
    fill-array-data v1, :array_4

    .line 36
    .line 37
    .line 38
    sput-object v1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TEXSCALE_2D:[F

    .line 39
    .line 40
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRadius:F

    .line 41
    .line 42
    const v0, 0x3cd013a9    # 0.0254f

    .line 43
    .line 44
    .line 45
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->METERS_PER_INCH:F

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 52
    .line 53
    const v0, 0x3dcccccd    # 0.1f

    .line 54
    .line 55
    .line 56
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->ZNEAR:F

    .line 57
    .line 58
    const/high16 v0, 0x42c80000    # 100.0f

    .line 59
    .line 60
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->ZFAR:F

    .line 61
    .line 62
    const/16 v0, 0x28

    .line 63
    .line 64
    sput v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 7

    const/16 v0, 0x8

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 51
    const-string p1, "attribute vec4 aPosition;\nuniform mat4 u_MVPMatrix;\nuniform mat4 rotateMatrix;attribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;void main() {\n  gl_Position =  u_MVPMatrix * rotateMatrix * aPosition;\n  vTextureCoord = aTextureCoord.xy;\n  verPosition = aPosition.xyz;}\n"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->vertexDefaultShader:Ljava/lang/String;

    .line 52
    const-string p1, "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = 1.0 / 3.0 * clamp(floor(oriCoord.x * 3.0), 0.0, 2.0);\n    float yStep = 0.5 * step(0.5, oriCoord.y);\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 4.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 4.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture,  eacResult.xy);\n}"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->eacFragShader:Ljava/lang/String;

    .line 53
    const-string p1, "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = -1.0 / 6.0 + step(1.0 / 6.0, oriCoord.x) / 3.0 + step(3.0 / 6.0, oriCoord.x) / 3.0 + step(2.0 / 3.0, oriCoord.x) / 6.0;\n    float yStep = 0.0;\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 2.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 2.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = step(0.0, -verPosition.z) * texture2D(sTexture, eacResult.xy);\n}"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->eac180FragShader:Ljava/lang/String;

    .line 54
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nvarying vec3 verPosition;\nuniform vec3 zOffset;\nuniform int cubemapMode;\nuniform vec2 texOffset[6];\nuniform mat2 rotates[6];\nuniform mat3 texScale;//one eye and two eye scale\nvec2 cubeToTexture(vec3 cubeCoord, float expand) {\n    vec2 result;\n    float absX = abs(cubeCoord.x);\n    float absY = abs(cubeCoord.y);\n    float absZ = abs(cubeCoord.z);\n    int index;//0:left 1:front 2:right 3:top 4:back 5:bottom\n    if (-cubeCoord.z >= absX && -cubeCoord.z >= absY) {\n        result = vec2(cubeCoord.x, cubeCoord.y);\n        index = 1;\n    } else if (cubeCoord.z >= absX && cubeCoord.z >= absY) {\n        result = vec2(-cubeCoord.x, cubeCoord.y);\n        index = 4;\n    } else if (cubeCoord.y >= absX && cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, cubeCoord.z);\n        index = 3;\n    } else if (-cubeCoord.y >= absX && -cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, -cubeCoord.z);\n        index = 5;\n    } else if (cubeCoord.x >= absY && cubeCoord.x >= absZ) {\n        result = vec2(cubeCoord.z, cubeCoord.y);\n        index = 2;\n    } else {\n        result = vec2(-cubeCoord.z, cubeCoord.y);\n        index = 0;\n    }\n    result = result * rotates[index] / expand;\n    result = vec2((result.x + 1.0) / 6.0, (result.y + 1.0) / 4.0) + texOffset[index];\n    return result;\n}\nvec2 offsetCubicTransFunc(vec3 inCubePosition) {\n    inCubePosition = inCubePosition - zOffset;\n    inCubePosition = inCubePosition / max(max(abs(inCubePosition.x),abs(inCubePosition.y)),abs(inCubePosition.z));\n    return cubeToTexture(inCubePosition, expandCoef);\n}\nvoid main() {\n    vec3 result = vec3(offsetCubicTransFunc(verPosition),1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->offsetCubicFragShader:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoef:F

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 57
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 58
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSpaceOrientationPitch:I

    const/16 v1, 0x10

    .line 59
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 60
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 61
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    .line 62
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 63
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 64
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mUseInitialHeadPoseAsFront:Z

    .line 65
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 66
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirectorEnabled:Z

    const/4 v2, 0x2

    .line 68
    iput v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    .line 69
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 70
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 71
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoProjectModel:I

    const/16 v3, 0x168

    .line 72
    iput v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 73
    iput v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDesireViewSize:I

    const/16 v3, 0xb4

    .line 74
    iput v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mBackTextureSize:I

    .line 75
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    const/high16 v3, 0x42c80000    # 100.0f

    .line 76
    iput v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->DEFAULT_PERSPEC_VIEW:F

    .line 77
    iput v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 78
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, v3, p1

    div-float v5, v3, p1

    div-float v6, v3, p1

    div-float/2addr v3, p1

    const/4 p1, 0x4

    .line 79
    new-array p1, p1, [F

    aput v4, p1, v0

    aput v5, p1, v1

    aput v6, p1, v2

    const/4 v1, 0x3

    aput v3, p1, v1

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    const p1, 0x3cf5c28f    # 0.03f

    .line 80
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 81
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    const p1, 0x3d2c0831    # 0.042f

    .line 82
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 83
    new-array p1, v2, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionCoeffs:[F

    const p1, 0x3d0f5c29    # 0.035f

    .line 84
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTrayToLensDis:F

    const/4 p1, -0x1

    .line 85
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenW:I

    .line 86
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenH:I

    const v1, 0x3f8ccccd    # 1.1f

    .line 87
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->DEFAULT_OUT_TEXTURE_SCALE:F

    .line 88
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOutTextureScale:F

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTextureVerticesRight:Ljava/nio/FloatBuffer;

    .line 90
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEBO:I

    .line 91
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 92
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCMPFaceInnerPadding:F

    .line 94
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHeadposeCallbackCounter:I

    .line 95
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 96
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    .line 97
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 98
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->construct()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ee1cac1    # 0.441f
        0x3e1fbe77    # 0.156f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 2
    const-string p1, "attribute vec4 aPosition;\nuniform mat4 u_MVPMatrix;\nuniform mat4 rotateMatrix;attribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;void main() {\n  gl_Position =  u_MVPMatrix * rotateMatrix * aPosition;\n  vTextureCoord = aTextureCoord.xy;\n  verPosition = aPosition.xyz;}\n"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->vertexDefaultShader:Ljava/lang/String;

    .line 3
    const-string p1, "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = 1.0 / 3.0 * clamp(floor(oriCoord.x * 3.0), 0.0, 2.0);\n    float yStep = 0.5 * step(0.5, oriCoord.y);\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 4.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 4.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture,  eacResult.xy);\n}"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->eacFragShader:Ljava/lang/String;

    .line 4
    const-string p1, "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = -1.0 / 6.0 + step(1.0 / 6.0, oriCoord.x) / 3.0 + step(3.0 / 6.0, oriCoord.x) / 3.0 + step(2.0 / 3.0, oriCoord.x) / 6.0;\n    float yStep = 0.0;\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 2.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 2.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = step(0.0, -verPosition.z) * texture2D(sTexture, eacResult.xy);\n}"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->eac180FragShader:Ljava/lang/String;

    .line 5
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nvarying vec3 verPosition;\nuniform vec3 zOffset;\nuniform int cubemapMode;\nuniform vec2 texOffset[6];\nuniform mat2 rotates[6];\nuniform mat3 texScale;//one eye and two eye scale\nvec2 cubeToTexture(vec3 cubeCoord, float expand) {\n    vec2 result;\n    float absX = abs(cubeCoord.x);\n    float absY = abs(cubeCoord.y);\n    float absZ = abs(cubeCoord.z);\n    int index;//0:left 1:front 2:right 3:top 4:back 5:bottom\n    if (-cubeCoord.z >= absX && -cubeCoord.z >= absY) {\n        result = vec2(cubeCoord.x, cubeCoord.y);\n        index = 1;\n    } else if (cubeCoord.z >= absX && cubeCoord.z >= absY) {\n        result = vec2(-cubeCoord.x, cubeCoord.y);\n        index = 4;\n    } else if (cubeCoord.y >= absX && cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, cubeCoord.z);\n        index = 3;\n    } else if (-cubeCoord.y >= absX && -cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, -cubeCoord.z);\n        index = 5;\n    } else if (cubeCoord.x >= absY && cubeCoord.x >= absZ) {\n        result = vec2(cubeCoord.z, cubeCoord.y);\n        index = 2;\n    } else {\n        result = vec2(-cubeCoord.z, cubeCoord.y);\n        index = 0;\n    }\n    result = result * rotates[index] / expand;\n    result = vec2((result.x + 1.0) / 6.0, (result.y + 1.0) / 4.0) + texOffset[index];\n    return result;\n}\nvec2 offsetCubicTransFunc(vec3 inCubePosition) {\n    inCubePosition = inCubePosition - zOffset;\n    inCubePosition = inCubePosition / max(max(abs(inCubePosition.x),abs(inCubePosition.y)),abs(inCubePosition.z));\n    return cubeToTexture(inCubePosition, expandCoef);\n}\nvoid main() {\n    vec3 result = vec3(offsetCubicTransFunc(verPosition),1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}"

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->offsetCubicFragShader:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoef:F

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 8
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 9
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSpaceOrientationPitch:I

    const/16 v0, 0x10

    .line 10
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 11
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 12
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    .line 13
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 14
    iput-boolean p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 15
    iput-boolean p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mUseInitialHeadPoseAsFront:Z

    .line 16
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 17
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirectorEnabled:Z

    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    .line 20
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 21
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 22
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoProjectModel:I

    const/16 v2, 0x168

    .line 23
    iput v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 24
    iput v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDesireViewSize:I

    const/16 v2, 0xb4

    .line 25
    iput v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mBackTextureSize:I

    .line 26
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    const/high16 v2, 0x42c80000    # 100.0f

    .line 27
    iput v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->DEFAULT_PERSPEC_VIEW:F

    .line 28
    iput v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 29
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float v3, v2, p1

    div-float v4, v2, p1

    div-float v5, v2, p1

    div-float/2addr v2, p1

    const/4 p1, 0x4

    .line 30
    new-array p1, p1, [F

    aput v3, p1, p2

    aput v4, p1, v0

    aput v5, p1, v1

    const/4 v0, 0x3

    aput v2, p1, v0

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    const p1, 0x3cf5c28f    # 0.03f

    .line 31
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 32
    iput-boolean p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    const p1, 0x3d2c0831    # 0.042f

    .line 33
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 34
    new-array p1, v1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionCoeffs:[F

    const p1, 0x3d0f5c29    # 0.035f

    .line 35
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTrayToLensDis:F

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenW:I

    .line 37
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenH:I

    const v0, 0x3f8ccccd    # 1.1f

    .line 38
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->DEFAULT_OUT_TEXTURE_SCALE:F

    .line 39
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOutTextureScale:F

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTextureVerticesRight:Ljava/nio/FloatBuffer;

    .line 41
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEBO:I

    .line 42
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 43
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCMPFaceInnerPadding:F

    .line 45
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHeadposeCallbackCounter:I

    .line 46
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 47
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    .line 48
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 49
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->construct()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ee1cac1    # 0.441f
        0x3e1fbe77    # 0.156f
    .end array-data
.end method

.method private calculateFov(FF)[F
    .locals 9

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 5
    .line 6
    sub-float/2addr p1, v0

    .line 7
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTrayToLensDis:F

    .line 8
    .line 9
    const v2, 0x3b449ba6    # 0.003f

    .line 10
    .line 11
    .line 12
    sub-float/2addr v1, v2

    .line 13
    sub-float/2addr p2, v1

    .line 14
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 15
    .line 16
    iget v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 17
    .line 18
    div-float/2addr p1, v3

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, p1, v3}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distort(FF)[F

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x0

    .line 25
    aget p1, p1, v2

    .line 26
    .line 27
    float-to-double v4, p1

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    double-to-float p1, v4

    .line 33
    iget-object v4, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 34
    .line 35
    iget v5, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 36
    .line 37
    div-float/2addr v0, v5

    .line 38
    invoke-virtual {v4, v0, v3}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distort(FF)[F

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    aget v0, v0, v2

    .line 43
    .line 44
    float-to-double v4, v0

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    double-to-float v0, v4

    .line 50
    iget-object v4, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 51
    .line 52
    iget v5, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 53
    .line 54
    div-float/2addr v1, v5

    .line 55
    invoke-virtual {v4, v3, v1}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distort(FF)[F

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v4, 0x1

    .line 60
    aget v1, v1, v4

    .line 61
    .line 62
    float-to-double v5, v1

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    double-to-float v1, v5

    .line 68
    iget-object v5, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 69
    .line 70
    iget v6, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 71
    .line 72
    div-float/2addr p2, v6

    .line 73
    invoke-virtual {v5, v3, p2}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distort(FF)[F

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    aget p2, p2, v4

    .line 78
    .line 79
    float-to-double v5, p2

    .line 80
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    double-to-float p2, v5

    .line 85
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    .line 86
    .line 87
    aget v3, v3, v2

    .line 88
    .line 89
    float-to-double v5, v3

    .line 90
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    double-to-float v3, v5

    .line 95
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    .line 100
    .line 101
    aget v3, v3, v4

    .line 102
    .line 103
    float-to-double v5, v3

    .line 104
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    double-to-float v3, v5

    .line 109
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    .line 114
    .line 115
    const/4 v5, 0x2

    .line 116
    aget v3, v3, v5

    .line 117
    .line 118
    float-to-double v6, v3

    .line 119
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    double-to-float v3, v6

    .line 124
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    .line 129
    .line 130
    const/4 v6, 0x3

    .line 131
    aget v3, v3, v6

    .line 132
    .line 133
    float-to-double v7, v3

    .line 134
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    double-to-float v3, v7

    .line 139
    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    const/4 v3, 0x4

    .line 144
    new-array v3, v3, [F

    .line 145
    .line 146
    aput p1, v3, v2

    .line 147
    .line 148
    aput v0, v3, v4

    .line 149
    .line 150
    aput v1, v3, v5

    .line 151
    .line 152
    aput p2, v3, v6

    .line 153
    .line 154
    return-object v3
.end method

.method private initGLData()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEBO:I

    .line 2
    .line 3
    const-string v1, "glGenBuffers bufferID: 0"

    .line 4
    .line 5
    const-string v2, "TR_GLPanoramaFilter"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    new-array v0, v3, [I

    .line 12
    .line 13
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 14
    .line 15
    .line 16
    aget v0, v0, v4

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEBO:I

    .line 27
    .line 28
    :cond_1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEBO:I

    .line 29
    .line 30
    const v5, 0x8893

    .line 31
    .line 32
    .line 33
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    mul-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    iget-object v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 50
    .line 51
    const v7, 0x88e4

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v0, v6, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    .line 61
    .line 62
    if-gtz v0, :cond_3

    .line 63
    .line 64
    new-array v0, v3, [I

    .line 65
    .line 66
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 67
    .line 68
    .line 69
    aget v0, v0, v4

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 74
    .line 75
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    .line 80
    .line 81
    :cond_3
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    .line 82
    .line 83
    const v5, 0x8892

    .line 84
    .line 85
    .line 86
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    mul-int/lit8 v0, v0, 0x4

    .line 101
    .line 102
    iget-object v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 103
    .line 104
    invoke-static {v5, v0, v6, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 111
    .line 112
    if-gtz v0, :cond_5

    .line 113
    .line 114
    new-array v0, v3, [I

    .line 115
    .line 116
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 117
    .line 118
    .line 119
    aget v0, v0, v4

    .line 120
    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 124
    .line 125
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 130
    .line 131
    :cond_5
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 132
    .line 133
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    mul-int/lit8 v0, v0, 0x4

    .line 148
    .line 149
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 150
    .line 151
    invoke-static {v5, v0, v1, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private renderDistortion(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTriangleBuffer:[Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTriangleBuffer:[Ljava/nio/FloatBuffer;

    .line 12
    .line 13
    aget-object v7, v0, p1

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/16 v4, 0x1406

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 25
    .line 26
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTextureBuffer:[Ljava/nio/FloatBuffer;

    .line 30
    .line 31
    aget-object v0, v0, p1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTextureBuffer:[Ljava/nio/FloatBuffer;

    .line 39
    .line 40
    aget-object v7, v0, p1

    .line 41
    .line 42
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 46
    .line 47
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

    .line 51
    .line 52
    aget-object v0, v0, p1

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

    .line 58
    .line 59
    aget-object v0, v0, p1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

    .line 66
    .line 67
    aget-object p1, v1, p1

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    const/16 v2, 0x1403

    .line 71
    .line 72
    invoke-static {v1, v0, v2, p1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private updateDistortionParam(Z)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string/jumbo v3, "window"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/view/WindowManager;

    .line 39
    .line 40
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .line 49
    iget v3, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenW:I

    .line 50
    .line 51
    if-ne v2, v3, :cond_2

    .line 52
    .line 53
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    .line 55
    iget v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenH:I

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iput v2, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenW:I

    .line 63
    .line 64
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65
    .line 66
    iput v3, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mScreenH:I

    .line 67
    .line 68
    int-to-float v2, v2

    .line 69
    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 70
    .line 71
    div-float/2addr v2, v4

    .line 72
    sget v4, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->METERS_PER_INCH:F

    .line 73
    .line 74
    mul-float/2addr v2, v4

    .line 75
    int-to-float v3, v3

    .line 76
    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 77
    .line 78
    div-float/2addr v3, v0

    .line 79
    mul-float/2addr v3, v4

    .line 80
    invoke-direct {v10, v2, v3}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->calculateFov(FF)[F

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 85
    .line 86
    sget v5, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 87
    .line 88
    aget-object v4, v4, v5

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    aget v6, v0, v5

    .line 92
    .line 93
    float-to-double v6, v6

    .line 94
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    double-to-float v6, v6

    .line 99
    aput v6, v4, v5

    .line 100
    .line 101
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 102
    .line 103
    sget v6, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 104
    .line 105
    aget-object v4, v4, v6

    .line 106
    .line 107
    const/4 v6, 0x1

    .line 108
    aget v7, v0, v6

    .line 109
    .line 110
    float-to-double v7, v7

    .line 111
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    double-to-float v7, v7

    .line 116
    aput v7, v4, v6

    .line 117
    .line 118
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 119
    .line 120
    sget v7, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 121
    .line 122
    aget-object v4, v4, v7

    .line 123
    .line 124
    aget v7, v0, v1

    .line 125
    .line 126
    float-to-double v7, v7

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v7

    .line 131
    double-to-float v7, v7

    .line 132
    aput v7, v4, v1

    .line 133
    .line 134
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 135
    .line 136
    sget v7, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 137
    .line 138
    aget-object v4, v4, v7

    .line 139
    .line 140
    const/4 v7, 0x3

    .line 141
    aget v8, v0, v7

    .line 142
    .line 143
    float-to-double v8, v8

    .line 144
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    double-to-float v8, v8

    .line 149
    aput v8, v4, v7

    .line 150
    .line 151
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 152
    .line 153
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 154
    .line 155
    aget-object v4, v4, v8

    .line 156
    .line 157
    aget v8, v0, v6

    .line 158
    .line 159
    float-to-double v8, v8

    .line 160
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 161
    .line 162
    .line 163
    move-result-wide v8

    .line 164
    double-to-float v8, v8

    .line 165
    aput v8, v4, v5

    .line 166
    .line 167
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 168
    .line 169
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 170
    .line 171
    aget-object v4, v4, v8

    .line 172
    .line 173
    aget v8, v0, v5

    .line 174
    .line 175
    float-to-double v8, v8

    .line 176
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    double-to-float v8, v8

    .line 181
    aput v8, v4, v6

    .line 182
    .line 183
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 184
    .line 185
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 186
    .line 187
    aget-object v4, v4, v8

    .line 188
    .line 189
    aget v8, v0, v1

    .line 190
    .line 191
    float-to-double v8, v8

    .line 192
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    double-to-float v8, v8

    .line 197
    aput v8, v4, v1

    .line 198
    .line 199
    iget-object v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 200
    .line 201
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 202
    .line 203
    aget-object v4, v4, v8

    .line 204
    .line 205
    aget v8, v0, v7

    .line 206
    .line 207
    float-to-double v8, v8

    .line 208
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    double-to-float v8, v8

    .line 213
    aput v8, v4, v7

    .line 214
    .line 215
    iget v4, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 216
    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v9, "realFov:"

    .line 223
    .line 224
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v9, "screenWInMeter:"

    .line 235
    .line 236
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v9, " screenHInMeter:"

    .line 243
    .line 244
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    const-string v9, "TR_GLPanoramaFilter"

    .line 255
    .line 256
    invoke-static {v4, v9, v8}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget v4, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 260
    .line 261
    div-float v11, v2, v4

    .line 262
    .line 263
    div-float v12, v3, v4

    .line 264
    .line 265
    const/high16 v3, 0x40000000    # 2.0f

    .line 266
    .line 267
    div-float/2addr v2, v3

    .line 268
    iget v3, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 269
    .line 270
    sub-float v8, v2, v3

    .line 271
    .line 272
    div-float/2addr v8, v4

    .line 273
    add-float/2addr v2, v3

    .line 274
    div-float v13, v2, v4

    .line 275
    .line 276
    iget v2, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTrayToLensDis:F

    .line 277
    .line 278
    const v3, 0x3b449ba6    # 0.003f

    .line 279
    .line 280
    .line 281
    sub-float/2addr v2, v3

    .line 282
    div-float v14, v2, v4

    .line 283
    .line 284
    aget v2, v0, v5

    .line 285
    .line 286
    float-to-double v2, v2

    .line 287
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 288
    .line 289
    .line 290
    move-result-wide v2

    .line 291
    aget v4, v0, v6

    .line 292
    .line 293
    float-to-double v5, v4

    .line 294
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    .line 295
    .line 296
    .line 297
    move-result-wide v4

    .line 298
    add-double/2addr v2, v4

    .line 299
    double-to-float v15, v2

    .line 300
    aget v2, v0, v1

    .line 301
    .line 302
    float-to-double v2, v2

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 304
    .line 305
    .line 306
    move-result-wide v2

    .line 307
    aget v4, v0, v7

    .line 308
    .line 309
    float-to-double v4, v4

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 311
    .line 312
    .line 313
    move-result-wide v4

    .line 314
    add-double/2addr v2, v4

    .line 315
    double-to-float v7, v2

    .line 316
    const/4 v2, 0x0

    .line 317
    aget v2, v0, v2

    .line 318
    .line 319
    float-to-double v2, v2

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 321
    .line 322
    .line 323
    move-result-wide v2

    .line 324
    double-to-float v6, v2

    .line 325
    const/4 v2, 0x1

    .line 326
    aget v2, v0, v2

    .line 327
    .line 328
    float-to-double v2, v2

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    .line 330
    .line 331
    .line 332
    move-result-wide v2

    .line 333
    double-to-float v9, v2

    .line 334
    aget v0, v0, v1

    .line 335
    .line 336
    float-to-double v0, v0

    .line 337
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 338
    .line 339
    .line 340
    move-result-wide v0

    .line 341
    double-to-float v5, v0

    .line 342
    sget v1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 343
    .line 344
    move-object/from16 v0, p0

    .line 345
    .line 346
    move v2, v11

    .line 347
    move v3, v12

    .line 348
    move v4, v8

    .line 349
    move/from16 v16, v5

    .line 350
    .line 351
    move v5, v14

    .line 352
    move v8, v6

    .line 353
    move v6, v15

    .line 354
    move/from16 v17, v7

    .line 355
    .line 356
    move/from16 v18, v9

    .line 357
    .line 358
    move/from16 v9, v16

    .line 359
    .line 360
    invoke-direct/range {v0 .. v9}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateMesh(IFFFFFFFF)V

    .line 361
    .line 362
    .line 363
    sget v1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 364
    .line 365
    move v4, v13

    .line 366
    move/from16 v8, v18

    .line 367
    .line 368
    invoke-direct/range {v0 .. v9}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateMesh(IFFFFFFFF)V

    .line 369
    .line 370
    .line 371
    :cond_3
    :goto_0
    return-void
.end method

.method private updateMesh(IFFFFFFFF)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    sget v2, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 5
    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 11
    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_1
    sget v5, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    if-ge v4, v5, :cond_2

    .line 18
    .line 19
    int-to-float v7, v4

    .line 20
    const/high16 v8, 0x3f800000    # 1.0f

    .line 21
    .line 22
    mul-float/2addr v7, v8

    .line 23
    add-int/lit8 v5, v5, -0x1

    .line 24
    .line 25
    int-to-float v5, v5

    .line 26
    div-float/2addr v7, v5

    .line 27
    move v5, v3

    .line 28
    :goto_2
    sget v9, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 29
    .line 30
    if-ge v5, v9, :cond_1

    .line 31
    .line 32
    int-to-float v10, v5

    .line 33
    mul-float/2addr v10, v8

    .line 34
    add-int/lit8 v9, v9, -0x1

    .line 35
    .line 36
    int-to-float v9, v9

    .line 37
    div-float/2addr v10, v9

    .line 38
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 39
    .line 40
    mul-float v11, v10, p6

    .line 41
    .line 42
    sub-float v11, v11, p8

    .line 43
    .line 44
    mul-float v12, v7, p7

    .line 45
    .line 46
    sub-float v12, v12, p9

    .line 47
    .line 48
    invoke-virtual {v9, v11, v12}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;->distortInverse(FF)[F

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    aget v11, v9, v3

    .line 53
    .line 54
    add-float v11, v11, p4

    .line 55
    .line 56
    div-float v11, v11, p2

    .line 57
    .line 58
    aget v9, v9, v6

    .line 59
    .line 60
    add-float v9, v9, p5

    .line 61
    .line 62
    div-float v9, v9, p3

    .line 63
    .line 64
    sget v12, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 65
    .line 66
    mul-int/2addr v12, v4

    .line 67
    add-int/2addr v12, v5

    .line 68
    mul-int/lit8 v12, v12, 0x2

    .line 69
    .line 70
    iget-object v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionPos:[[F

    .line 71
    .line 72
    aget-object v13, v13, v1

    .line 73
    .line 74
    const/high16 v14, 0x40000000    # 2.0f

    .line 75
    .line 76
    mul-float/2addr v11, v14

    .line 77
    sub-float/2addr v11, v8

    .line 78
    aput v11, v13, v12

    .line 79
    .line 80
    add-int/lit8 v11, v12, 0x1

    .line 81
    .line 82
    mul-float/2addr v9, v14

    .line 83
    sub-float/2addr v9, v8

    .line 84
    aput v9, v13, v11

    .line 85
    .line 86
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTex:[[F

    .line 87
    .line 88
    aget-object v9, v9, v1

    .line 89
    .line 90
    div-float/2addr v10, v14

    .line 91
    add-float/2addr v10, v2

    .line 92
    aput v10, v9, v12

    .line 93
    .line 94
    aput v7, v9, v11

    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move v2, v3

    .line 103
    move v4, v2

    .line 104
    move v5, v4

    .line 105
    :goto_3
    sget v7, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 106
    .line 107
    sub-int/2addr v7, v6

    .line 108
    if-ge v2, v7, :cond_7

    .line 109
    .line 110
    if-lez v2, :cond_3

    .line 111
    .line 112
    iget-object v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndex:[[S

    .line 113
    .line 114
    aget-object v7, v7, v1

    .line 115
    .line 116
    add-int/lit8 v8, v4, -0x1

    .line 117
    .line 118
    aget-short v8, v7, v8

    .line 119
    .line 120
    aput-short v8, v7, v4

    .line 121
    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    :cond_3
    move v7, v3

    .line 125
    :goto_4
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 126
    .line 127
    if-ge v7, v8, :cond_6

    .line 128
    .line 129
    if-lez v7, :cond_5

    .line 130
    .line 131
    rem-int/lit8 v9, v2, 0x2

    .line 132
    .line 133
    if-nez v9, :cond_4

    .line 134
    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 139
    .line 140
    :cond_5
    :goto_5
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndex:[[S

    .line 141
    .line 142
    aget-object v9, v9, v1

    .line 143
    .line 144
    add-int/lit8 v10, v4, 0x1

    .line 145
    .line 146
    int-to-short v11, v5

    .line 147
    aput-short v11, v9, v4

    .line 148
    .line 149
    add-int/lit8 v4, v4, 0x2

    .line 150
    .line 151
    add-int/2addr v8, v5

    .line 152
    int-to-short v8, v8

    .line 153
    aput-short v8, v9, v10

    .line 154
    .line 155
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    add-int/2addr v5, v8

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTriangleBuffer:[Ljava/nio/FloatBuffer;

    .line 163
    .line 164
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionPos:[[F

    .line 165
    .line 166
    aget-object v4, v4, v1

    .line 167
    .line 168
    array-length v4, v4

    .line 169
    mul-int/lit8 v4, v4, 0x4

    .line 170
    .line 171
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    aput-object v4, v2, v1

    .line 188
    .line 189
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTriangleBuffer:[Ljava/nio/FloatBuffer;

    .line 190
    .line 191
    aget-object v2, v2, v1

    .line 192
    .line 193
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionPos:[[F

    .line 194
    .line 195
    aget-object v4, v4, v1

    .line 196
    .line 197
    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTextureBuffer:[Ljava/nio/FloatBuffer;

    .line 205
    .line 206
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTex:[[F

    .line 207
    .line 208
    aget-object v4, v4, v1

    .line 209
    .line 210
    array-length v4, v4

    .line 211
    mul-int/lit8 v4, v4, 0x4

    .line 212
    .line 213
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    aput-object v4, v2, v1

    .line 230
    .line 231
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTextureBuffer:[Ljava/nio/FloatBuffer;

    .line 232
    .line 233
    aget-object v2, v2, v1

    .line 234
    .line 235
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTex:[[F

    .line 236
    .line 237
    aget-object v4, v4, v1

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    .line 245
    .line 246
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

    .line 247
    .line 248
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndex:[[S

    .line 249
    .line 250
    aget-object v4, v4, v1

    .line 251
    .line 252
    array-length v4, v4

    .line 253
    mul-int/lit8 v4, v4, 0x2

    .line 254
    .line 255
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    aput-object v4, v2, v1

    .line 272
    .line 273
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

    .line 274
    .line 275
    aget-object v2, v2, v1

    .line 276
    .line 277
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndex:[[S

    .line 278
    .line 279
    aget-object v1, v4, v1

    .line 280
    .line 281
    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 286
    .line 287
    .line 288
    return-void
.end method


# virtual methods
.method public construct()V
    .locals 6

    .line 1
    const/16 v0, 0x5a

    .line 2
    .line 3
    iput v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEnableTouchScaler:Z

    .line 7
    .line 8
    new-instance v1, Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 9
    .line 10
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/ss/texturerender/effect/vr/TouchScaler;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 16
    .line 17
    new-instance v1, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionCoeffs:[F

    .line 20
    .line 21
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;-><init>([FI)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortion:Lcom/ss/texturerender/effect/vr/distortion/BrownDistortion;

    .line 27
    .line 28
    sget v1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 29
    .line 30
    mul-int/2addr v1, v1

    .line 31
    const/4 v2, 0x2

    .line 32
    mul-int/2addr v1, v2

    .line 33
    new-array v3, v2, [I

    .line 34
    .line 35
    aput v1, v3, v0

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    aput v2, v3, v1

    .line 39
    .line 40
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, [[F

    .line 47
    .line 48
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTex:[[F

    .line 49
    .line 50
    sget v3, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 51
    .line 52
    mul-int/2addr v3, v3

    .line 53
    mul-int/2addr v3, v2

    .line 54
    new-array v5, v2, [I

    .line 55
    .line 56
    aput v3, v5, v0

    .line 57
    .line 58
    aput v2, v5, v1

    .line 59
    .line 60
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, [[F

    .line 65
    .line 66
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionPos:[[F

    .line 67
    .line 68
    sget v3, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RESOLUTION:I

    .line 69
    .line 70
    add-int/lit8 v5, v3, -0x1

    .line 71
    .line 72
    mul-int/2addr v5, v2

    .line 73
    mul-int/2addr v5, v3

    .line 74
    sub-int/2addr v3, v2

    .line 75
    add-int/2addr v5, v3

    .line 76
    new-array v3, v2, [I

    .line 77
    .line 78
    aput v5, v3, v0

    .line 79
    .line 80
    aput v2, v3, v1

    .line 81
    .line 82
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, [[S

    .line 89
    .line 90
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndex:[[S

    .line 91
    .line 92
    new-array v3, v2, [Ljava/nio/FloatBuffer;

    .line 93
    .line 94
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTriangleBuffer:[Ljava/nio/FloatBuffer;

    .line 95
    .line 96
    new-array v3, v2, [Ljava/nio/FloatBuffer;

    .line 97
    .line 98
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionTextureBuffer:[Ljava/nio/FloatBuffer;

    .line 99
    .line 100
    new-array v3, v2, [Ljava/nio/ShortBuffer;

    .line 101
    .line 102
    iput-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionIndexBuffer:[Ljava/nio/ShortBuffer;

    .line 103
    .line 104
    new-array v3, v2, [I

    .line 105
    .line 106
    const/4 v5, 0x4

    .line 107
    aput v5, v3, v0

    .line 108
    .line 109
    aput v2, v3, v1

    .line 110
    .line 111
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, [[F

    .line 116
    .line 117
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 118
    .line 119
    const/16 v0, 0x10

    .line 120
    .line 121
    new-array v0, v0, [F

    .line 122
    .line 123
    iput-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIdentityMat:[F

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 126
    .line 127
    .line 128
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v2, "new GLPanoramaFilter,this:"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "TR_GLPanoramaFilter"

    .line 148
    .line 149
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method protected draw(Ljava/nio/ShortBuffer;)V
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 6
    .line 7
    iget-object v5, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, v0

    .line 13
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 17
    .line 18
    move-object v5, v0

    .line 19
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mMVPMatrixHandle:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEBO:I

    .line 33
    .line 34
    const v1, 0x8893

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/16 v0, 0x1403

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-static {v2, p1, v0, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method getExpandCoef()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoef:F

    .line 2
    .line 3
    return v0
.end method

.method public getIntOption(I)I
    .locals 1

    .line 1
    const/16 v0, 0x2714

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const p1, 0x8d65

    .line 12
    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    const/16 v0, 0x271c

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getIntOption(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method getShaderType()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 2
    .line 3
    const/16 v1, 0x5a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0xb4

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoProjectModel:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "pano_eac:"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "TR_GLPanoramaFilter"

    .line 44
    .line 45
    invoke-static {v0, v3, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v2
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2af8

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    const/16 v0, 0x2af9

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    iget p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 20
    .line 21
    const/16 v0, 0xb4

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    const-string p1, "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = -1.0 / 6.0 + step(1.0 / 6.0, oriCoord.x) / 3.0 + step(3.0 / 6.0, oriCoord.x) / 3.0 + step(2.0 / 3.0, oriCoord.x) / 6.0;\n    float yStep = 0.0;\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 2.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 2.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = step(0.0, -verPosition.z) * texture2D(sTexture, eacResult.xy);\n}"

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    const-string p1, "#define PI 3.14159265359\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvec2 EACTransFunc(vec2 oriCoord, float expand) {\n    vec2 resultCoord;\n    float xStep = 1.0 / 3.0 * clamp(floor(oriCoord.x * 3.0), 0.0, 2.0);\n    float yStep = 0.5 * step(0.5, oriCoord.y);\n    resultCoord.x = (atan(((oriCoord.x - xStep) * 6.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 6.0 + xStep;\n    resultCoord.y = (atan(((oriCoord.y - yStep) * 4.0 - 1.0) / expand) / PI * 4.0 + 1.0) / 4.0 + yStep;\n    return resultCoord;\n}\nvoid main() {\n    vec3 eacResult = vec3(EACTransFunc(vTextureCoord, expandCoef), 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture,  eacResult.xy);\n}"

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    const/4 v1, 0x3

    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nvarying vec3 verPosition;\nuniform vec3 zOffset;\nuniform int cubemapMode;\nuniform vec2 texOffset[6];\nuniform mat2 rotates[6];\nuniform mat3 texScale;//one eye and two eye scale\nvec2 cubeToTexture(vec3 cubeCoord, float expand) {\n    vec2 result;\n    float absX = abs(cubeCoord.x);\n    float absY = abs(cubeCoord.y);\n    float absZ = abs(cubeCoord.z);\n    int index;//0:left 1:front 2:right 3:top 4:back 5:bottom\n    if (-cubeCoord.z >= absX && -cubeCoord.z >= absY) {\n        result = vec2(cubeCoord.x, cubeCoord.y);\n        index = 1;\n    } else if (cubeCoord.z >= absX && cubeCoord.z >= absY) {\n        result = vec2(-cubeCoord.x, cubeCoord.y);\n        index = 4;\n    } else if (cubeCoord.y >= absX && cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, cubeCoord.z);\n        index = 3;\n    } else if (-cubeCoord.y >= absX && -cubeCoord.y >= absZ) {\n        result = vec2(cubeCoord.x, -cubeCoord.z);\n        index = 5;\n    } else if (cubeCoord.x >= absY && cubeCoord.x >= absZ) {\n        result = vec2(cubeCoord.z, cubeCoord.y);\n        index = 2;\n    } else {\n        result = vec2(-cubeCoord.z, cubeCoord.y);\n        index = 0;\n    }\n    result = result * rotates[index] / expand;\n    result = vec2((result.x + 1.0) / 6.0, (result.y + 1.0) / 4.0) + texOffset[index];\n    return result;\n}\nvec2 offsetCubicTransFunc(vec3 inCubePosition) {\n    inCubePosition = inCubePosition - zOffset;\n    inCubePosition = inCubePosition / max(max(abs(inCubePosition.x),abs(inCubePosition.y)),abs(inCubePosition.z));\n    return cubeToTexture(inCubePosition, expandCoef);\n}\nvoid main() {\n    vec3 result = vec3(offsetCubicTransFunc(verPosition),1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}"

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 v1, 0x4

    .line 38
    if-eq v0, v1, :cond_5

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_5
    :goto_0
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nuniform float expandCoef;\nuniform vec3 zOffset;\nuniform mat3 texScale;//one eye and two eye scale\nvoid main() {\n    vec3 result = vec3((vTextureCoord - 0.5) / expandCoef + 0.5, 1.0) * texScale;\n    gl_FragColor = texture2D(sTexture, result.xy);\n}"

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_6
    const-string p1, "attribute vec4 aPosition;\nuniform mat4 u_MVPMatrix;\nuniform mat4 rotateMatrix;attribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec3 verPosition;void main() {\n  gl_Position =  u_MVPMatrix * rotateMatrix * aPosition;\n  vTextureCoord = aTextureCoord.xy;\n  verPosition = aPosition.xyz;}\n"

    .line 53
    .line 54
    return-object p1
.end method

.method protected handleDirectModeChange()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "handleDirectModeChange mDirectMode:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", this:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "TR_GLPanoramaFilter"

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->startSensorDirector()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unRegisterTouchListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x2

    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/ss/texturerender/effect/vr/director/IDirector;->stop()V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->registTouchDirector()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->startSensorDirector()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->registTouchDirector()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
.end method

.method protected handleTouchScalerChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const-string v1, "TR_GLPanoramaFilter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 8
    .line 9
    const-string v2, "Error: handleTouchScalerChange mSurfaceTexture is null"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "handleTouchScalerChange mEnableTouchScaler:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v3, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEnableTouchScaler:Z

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ", this:"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEnableTouchScaler:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/TouchScaler;->start()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->registerTouchListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->unRegisterTouchListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/TouchScaler;->stop()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    const-string/jumbo v0, "vr_model"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 19
    .line 20
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoProjectModel:I

    .line 21
    .line 22
    :cond_0
    const-string/jumbo v0, "video_projection_model"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoProjectModel:I

    .line 36
    .line 37
    :cond_1
    const-string/jumbo v0, "view_size"

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x168

    .line 41
    .line 42
    invoke-virtual {v11, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 47
    .line 48
    invoke-super/range {p0 .. p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget v1, v10, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 59
    .line 60
    const-string/jumbo v2, "super.init(bundle) != TR_OK"

    .line 61
    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v0, -0x1

    .line 69
    return v0

    .line 70
    :cond_3
    iget v0, v10, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 71
    .line 72
    const-string/jumbo v1, "u_MVPMatrix"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mMVPMatrixHandle:I

    .line 80
    .line 81
    iget v0, v10, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 82
    .line 83
    const-string v1, "expandCoef"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoefHandle:I

    .line 90
    .line 91
    iget v0, v10, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 92
    .line 93
    const-string/jumbo v1, "zOffset"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mZOffsetHandle:I

    .line 101
    .line 102
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 103
    .line 104
    const/4 v12, 0x0

    .line 105
    invoke-static {v0, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 109
    .line 110
    invoke-static {v0, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 114
    .line 115
    invoke-static {v0, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 116
    .line 117
    .line 118
    iput-boolean v12, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    .line 119
    .line 120
    iput v12, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    .line 121
    .line 122
    const-string v0, "pano_mode"

    .line 123
    .line 124
    const/4 v1, 0x2

    .line 125
    invoke-virtual {v11, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    .line 130
    .line 131
    const-string/jumbo v0, "video_style"

    .line 132
    .line 133
    .line 134
    const/4 v13, 0x1

    .line 135
    invoke-virtual {v11, v0, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 140
    .line 141
    const-string v0, "direct_mode"

    .line 142
    .line 143
    invoke-virtual {v11, v0, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 148
    .line 149
    const-string/jumbo v0, "use_initial_head_pose_as_front"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_4

    .line 157
    .line 158
    move v0, v12

    .line 159
    goto :goto_0

    .line 160
    :cond_4
    move v0, v13

    .line 161
    :goto_0
    iput-boolean v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mUseInitialHeadPoseAsFront:Z

    .line 162
    .line 163
    const-string v0, "perspective_view"

    .line 164
    .line 165
    iget v2, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->DEFAULT_PERSPEC_VIEW:F

    .line 166
    .line 167
    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 172
    .line 173
    const-string v0, "desire_view_size"

    .line 174
    .line 175
    iget v2, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 176
    .line 177
    invoke-virtual {v11, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDesireViewSize:I

    .line 182
    .line 183
    const-string/jumbo v0, "vr_out_texture_scale"

    .line 184
    .line 185
    .line 186
    iget v2, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->DEFAULT_OUT_TEXTURE_SCALE:F

    .line 187
    .line 188
    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOutTextureScale:F

    .line 193
    .line 194
    const-string/jumbo v0, "vr_background_texture_size"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mBackTextureSize:I

    .line 208
    .line 209
    :cond_5
    const-string v0, "expand_coef"

    .line 210
    .line 211
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_6

    .line 216
    .line 217
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoef:F

    .line 222
    .line 223
    :cond_6
    const-string/jumbo v0, "z_offset"

    .line 224
    .line 225
    .line 226
    const/4 v2, 0x0

    .line 227
    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mZOffset:F

    .line 232
    .line 233
    const-string/jumbo v0, "yaw"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 241
    .line 242
    const-string v0, "pitch"

    .line 243
    .line 244
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 249
    .line 250
    const-string/jumbo v0, "space_orientation_pitch"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-eqz v3, :cond_7

    .line 258
    .line 259
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSpaceOrientationPitch:I

    .line 264
    .line 265
    :cond_7
    const-string v0, "cmp_face_inner_padding"

    .line 266
    .line 267
    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCMPFaceInnerPadding:F

    .line 272
    .line 273
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDisplay:Landroid/view/Display;

    .line 274
    .line 275
    if-nez v0, :cond_8

    .line 276
    .line 277
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    const-string/jumbo v2, "window"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/view/WindowManager;

    .line 293
    .line 294
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iput-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDisplay:Landroid/view/Display;

    .line 299
    .line 300
    :cond_8
    iget v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v3, "display rotation:"

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object v3, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDisplay:Landroid/view/Display;

    .line 313
    .line 314
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v3, ",perspec:"

    .line 322
    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget v3, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v14, "TR_GLPanoramaFilter"

    .line 336
    .line 337
    invoke-static {v0, v14, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const/4 v0, 0x0

    .line 341
    invoke-virtual {v10, v0, v0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    .line 342
    .line 343
    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->initGLData()V

    .line 345
    .line 346
    .line 347
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 348
    .line 349
    iget-object v2, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDisplay:Landroid/view/Display;

    .line 350
    .line 351
    invoke-direct {v0, v2}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;-><init>(Landroid/view/Display;)V

    .line 352
    .line 353
    .line 354
    iput-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->start()V

    .line 357
    .line 358
    .line 359
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 360
    .line 361
    const/high16 v2, 0x44480000    # 800.0f

    .line 362
    .line 363
    invoke-virtual {v0, v2}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->setRadius(F)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 367
    .line 368
    if-nez v0, :cond_a

    .line 369
    .line 370
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_9

    .line 375
    .line 376
    new-instance v0, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoDirector;

    .line 377
    .line 378
    iget-object v1, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDisplay:Landroid/view/Display;

    .line 379
    .line 380
    invoke-direct {v0, v1}, Lcom/ss/texturerender/effect/vr/director/picodirector/PicoDirector;-><init>(Landroid/view/Display;)V

    .line 381
    .line 382
    .line 383
    iput-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_9
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    if-eqz v2, :cond_a

    .line 395
    .line 396
    new-instance v15, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;

    .line 397
    .line 398
    iget-object v3, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDisplay:Landroid/view/Display;

    .line 399
    .line 400
    const-string v0, "sensor_start_pos"

    .line 401
    .line 402
    invoke-virtual {v11, v0, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    const-string v0, "sensor_reset_pos"

    .line 407
    .line 408
    invoke-virtual {v11, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    iget v6, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 413
    .line 414
    const-string v0, "sensor_smoother_enabled"

    .line 415
    .line 416
    invoke-virtual {v11, v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    const-string v0, "sensor_smooth_factor"

    .line 421
    .line 422
    const/high16 v1, 0x3f800000    # 1.0f

    .line 423
    .line 424
    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    float-to-double v8, v0

    .line 429
    move-object v0, v15

    .line 430
    move-object v1, v2

    .line 431
    move-object v2, v3

    .line 432
    move v3, v4

    .line 433
    move v4, v5

    .line 434
    move v5, v6

    .line 435
    move v6, v7

    .line 436
    move-wide v7, v8

    .line 437
    move-object/from16 v9, p0

    .line 438
    .line 439
    invoke-direct/range {v0 .. v9}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorDirector;-><init>(Landroid/content/Context;Landroid/view/Display;IIIIDLcom/ss/texturerender/effect/vr/director/IDirectorEventListener;)V

    .line 440
    .line 441
    .line 442
    iput-object v15, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 443
    .line 444
    :cond_a
    :goto_1
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 445
    .line 446
    if-eqz v0, :cond_b

    .line 447
    .line 448
    invoke-interface {v0, v11}, Lcom/ss/texturerender/effect/vr/director/IDirector;->setParam(Landroid/os/Bundle;)V

    .line 449
    .line 450
    .line 451
    :cond_b
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 452
    .line 453
    if-nez v0, :cond_c

    .line 454
    .line 455
    const-string v0, "handle_device_orientation_enabled"

    .line 456
    .line 457
    invoke-virtual {v11, v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_c

    .line 462
    .line 463
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_c

    .line 468
    .line 469
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    if-eqz v0, :cond_c

    .line 478
    .line 479
    new-instance v1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 480
    .line 481
    invoke-direct {v1, v10, v0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;-><init>(Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    iput-object v1, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 485
    .line 486
    :cond_c
    const-string v0, "fov"

    .line 487
    .line 488
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_d

    .line 493
    .line 494
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    iput-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFov:[F

    .line 499
    .line 500
    move v0, v13

    .line 501
    goto :goto_2

    .line 502
    :cond_d
    move v0, v12

    .line 503
    :goto_2
    const-string v1, "distortion_coeffs"

    .line 504
    .line 505
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-eqz v2, :cond_e

    .line 510
    .line 511
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iput-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDistortionCoeffs:[F

    .line 516
    .line 517
    move v0, v13

    .line 518
    :cond_e
    const-string v1, "screen_to_lens_distance"

    .line 519
    .line 520
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-eqz v2, :cond_f

    .line 525
    .line 526
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    iput v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLensToScreenDistance:F

    .line 531
    .line 532
    goto :goto_3

    .line 533
    :cond_f
    move v13, v0

    .line 534
    :goto_3
    invoke-direct {v10, v13}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateDistortionParam(Z)V

    .line 535
    .line 536
    .line 537
    iget-boolean v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEnableTouchScaler:Z

    .line 538
    .line 539
    if-eqz v0, :cond_10

    .line 540
    .line 541
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 542
    .line 543
    if-eqz v0, :cond_10

    .line 544
    .line 545
    const-string v1, "max_scale"

    .line 546
    .line 547
    const/high16 v2, 0x40800000    # 4.0f

    .line 548
    .line 549
    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->setMaxScale(F)V

    .line 554
    .line 555
    .line 556
    iget-object v0, v10, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 557
    .line 558
    const-string v1, "min_scale"

    .line 559
    .line 560
    const v2, 0x3e4ccccd    # 0.2f

    .line 561
    .line 562
    .line 563
    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->setMinScale(F)V

    .line 568
    .line 569
    .line 570
    :cond_10
    iget v0, v10, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 571
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    const-string v2, "init, this:"

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v2, ",manu:"

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-static {v0, v14, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    return v12
.end method

.method public onDisplayRotationChanged(IZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 4
    .line 5
    const/16 p2, 0x80

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iput-boolean v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    .line 11
    .line 12
    iget-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->handleDirectModeChange()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->handleTouchScalerChange()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 30
    .line 31
    if-eq v2, v4, :cond_3

    .line 32
    .line 33
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v4, "error, texture miss match, accept:"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ",in:"

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/16 v4, 0xc

    .line 111
    .line 112
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-object p1

    .line 116
    :cond_3
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v3, "program error,don\'t process,filter:"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v4, "TR_GLPanoramaFilter"

    .line 142
    .line 143
    invoke-static {v1, v4, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 151
    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const/16 v4, 0xd

    .line 170
    .line 171
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    return-object p1

    .line 175
    :cond_5
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 176
    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 182
    .line 183
    .line 184
    :cond_6
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 185
    .line 186
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iput v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 196
    .line 197
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    iput v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 204
    .line 205
    iget v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 206
    .line 207
    if-ne v2, v3, :cond_7

    .line 208
    .line 209
    invoke-virtual/range {p0 .. p2}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    .line 210
    .line 211
    .line 212
    :cond_7
    iget v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVerVBO:I

    .line 213
    .line 214
    const v4, 0x8892

    .line 215
    .line 216
    .line 217
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 218
    .line 219
    .line 220
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 221
    .line 222
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    .line 223
    .line 224
    const/4 v10, 0x0

    .line 225
    const/4 v6, 0x3

    .line 226
    const/16 v7, 0x1406

    .line 227
    .line 228
    const/4 v8, 0x0

    .line 229
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 230
    .line 231
    .line 232
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 233
    .line 234
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 235
    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 239
    .line 240
    .line 241
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTexVBO:I

    .line 242
    .line 243
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 244
    .line 245
    .line 246
    iget v6, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 247
    .line 248
    iget v10, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    .line 249
    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v7, 0x2

    .line 252
    const/16 v8, 0x1406

    .line 253
    .line 254
    const/4 v9, 0x0

    .line 255
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 256
    .line 257
    .line 258
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 259
    .line 260
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 264
    .line 265
    .line 266
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirectorEnabled:Z

    .line 267
    .line 268
    const/4 v5, 0x2

    .line 269
    if-nez v4, :cond_9

    .line 270
    .line 271
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    .line 272
    .line 273
    if-eqz v4, :cond_9

    .line 274
    .line 275
    iput-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 276
    .line 277
    iget-boolean v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 278
    .line 279
    if-nez v6, :cond_c

    .line 280
    .line 281
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 282
    .line 283
    if-eqz v6, :cond_8

    .line 284
    .line 285
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 286
    .line 287
    if-eq v7, v5, :cond_8

    .line 288
    .line 289
    invoke-interface {v6, v4, v2}, Lcom/ss/texturerender/effect/vr/director/IDirector;->getView([FI)V

    .line 290
    .line 291
    .line 292
    :cond_8
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 293
    .line 294
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 295
    .line 296
    invoke-static {v4, v2, v6, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 297
    .line 298
    .line 299
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 300
    .line 301
    iget-object v11, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    const/4 v8, 0x0

    .line 305
    const/4 v10, 0x0

    .line 306
    move-object v7, v9

    .line 307
    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 308
    .line 309
    .line 310
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 311
    .line 312
    iput-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    .line 313
    .line 314
    iput-boolean v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 315
    .line 316
    goto :goto_0

    .line 317
    :cond_9
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 318
    .line 319
    if-eqz v4, :cond_a

    .line 320
    .line 321
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 322
    .line 323
    if-eq v6, v5, :cond_a

    .line 324
    .line 325
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 326
    .line 327
    invoke-interface {v4, v6, v2}, Lcom/ss/texturerender/effect/vr/director/IDirector;->getView([FI)V

    .line 328
    .line 329
    .line 330
    :cond_a
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 331
    .line 332
    if-nez v4, :cond_b

    .line 333
    .line 334
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 335
    .line 336
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 337
    .line 338
    invoke-static {v4, v2, v6, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 339
    .line 340
    .line 341
    iput-boolean v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    .line 342
    .line 343
    :cond_b
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 344
    .line 345
    if-eq v4, v5, :cond_c

    .line 346
    .line 347
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mUseInitialHeadPoseAsFront:Z

    .line 348
    .line 349
    if-eqz v4, :cond_c

    .line 350
    .line 351
    iget-object v8, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 352
    .line 353
    iget-object v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mInitialModelMatrixInvert:[F

    .line 354
    .line 355
    const/4 v11, 0x0

    .line 356
    const/4 v7, 0x0

    .line 357
    const/4 v9, 0x0

    .line 358
    move-object v6, v8

    .line 359
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 360
    .line 361
    .line 362
    :cond_c
    :goto_0
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 363
    .line 364
    invoke-static {v4, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 365
    .line 366
    .line 367
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_d

    .line 372
    .line 373
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 374
    .line 375
    if-nez v4, :cond_d

    .line 376
    .line 377
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 378
    .line 379
    if-eqz v4, :cond_e

    .line 380
    .line 381
    :cond_d
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 382
    .line 383
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 384
    .line 385
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->getDiffX()F

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    .line 390
    .line 391
    int-to-float v7, v7

    .line 392
    add-float v8, v4, v7

    .line 393
    .line 394
    const/4 v10, 0x0

    .line 395
    const/4 v11, 0x0

    .line 396
    const/4 v7, 0x0

    .line 397
    const/high16 v9, 0x3f800000    # 1.0f

    .line 398
    .line 399
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 400
    .line 401
    .line 402
    iget-object v12, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 403
    .line 404
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 405
    .line 406
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->getDiffY()F

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    .line 411
    .line 412
    int-to-float v6, v6

    .line 413
    sub-float v14, v4, v6

    .line 414
    .line 415
    const/high16 v16, 0x3f800000    # 1.0f

    .line 416
    .line 417
    const/16 v17, 0x0

    .line 418
    .line 419
    const/4 v13, 0x0

    .line 420
    const/4 v15, 0x0

    .line 421
    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 422
    .line 423
    .line 424
    :cond_e
    iget-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 425
    .line 426
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSpaceOrientationPitch:I

    .line 427
    .line 428
    int-to-float v8, v4

    .line 429
    const/4 v10, 0x0

    .line 430
    const/4 v11, 0x0

    .line 431
    const/4 v7, 0x0

    .line 432
    const/high16 v9, 0x3f800000    # 1.0f

    .line 433
    .line 434
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 435
    .line 436
    .line 437
    const/16 v4, 0x10

    .line 438
    .line 439
    new-array v4, v4, [F

    .line 440
    .line 441
    iget-object v8, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    .line 442
    .line 443
    iget-object v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 444
    .line 445
    const/4 v11, 0x0

    .line 446
    const/4 v9, 0x0

    .line 447
    move-object v6, v4

    .line 448
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 449
    .line 450
    .line 451
    invoke-static {v4, v2, v4, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 452
    .line 453
    .line 454
    new-instance v6, Lcom/ss/texturerender/math/Quaternion;

    .line 455
    .line 456
    invoke-direct {v6, v4}, Lcom/ss/texturerender/math/Quaternion;-><init>([F)V

    .line 457
    .line 458
    .line 459
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 460
    .line 461
    invoke-virtual {v4, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->setHeadPose(Lcom/ss/texturerender/math/Quaternion;)I

    .line 462
    .line 463
    .line 464
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHeadposeCallbackCounter:I

    .line 465
    .line 466
    add-int/2addr v4, v3

    .line 467
    iput v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHeadposeCallbackCounter:I

    .line 468
    .line 469
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 470
    .line 471
    if-eqz v4, :cond_f

    .line 472
    .line 473
    const/16 v7, 0x87

    .line 474
    .line 475
    invoke-virtual {v4, v7}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    goto :goto_1

    .line 480
    :cond_f
    move v4, v3

    .line 481
    :goto_1
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHeadposeCallbackCounter:I

    .line 482
    .line 483
    rem-int/2addr v7, v4

    .line 484
    iput v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHeadposeCallbackCounter:I

    .line 485
    .line 486
    if-nez v7, :cond_12

    .line 487
    .line 488
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 489
    .line 490
    if-eqz v4, :cond_10

    .line 491
    .line 492
    invoke-virtual {v4}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 493
    .line 494
    .line 495
    move-result-wide v7

    .line 496
    invoke-virtual {v6}, Lcom/ss/texturerender/math/Quaternion;->getX0()D

    .line 497
    .line 498
    .line 499
    move-result-wide v9

    .line 500
    sub-double/2addr v7, v9

    .line 501
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 502
    .line 503
    .line 504
    move-result-wide v7

    .line 505
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 506
    .line 507
    invoke-virtual {v4}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 508
    .line 509
    .line 510
    move-result-wide v9

    .line 511
    invoke-virtual {v6}, Lcom/ss/texturerender/math/Quaternion;->getX1()D

    .line 512
    .line 513
    .line 514
    move-result-wide v11

    .line 515
    sub-double/2addr v9, v11

    .line 516
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 517
    .line 518
    .line 519
    move-result-wide v9

    .line 520
    add-double/2addr v7, v9

    .line 521
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 522
    .line 523
    invoke-virtual {v4}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 524
    .line 525
    .line 526
    move-result-wide v9

    .line 527
    invoke-virtual {v6}, Lcom/ss/texturerender/math/Quaternion;->getX2()D

    .line 528
    .line 529
    .line 530
    move-result-wide v11

    .line 531
    sub-double/2addr v9, v11

    .line 532
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 533
    .line 534
    .line 535
    move-result-wide v9

    .line 536
    add-double/2addr v7, v9

    .line 537
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 538
    .line 539
    invoke-virtual {v4}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 540
    .line 541
    .line 542
    move-result-wide v9

    .line 543
    invoke-virtual {v6}, Lcom/ss/texturerender/math/Quaternion;->getX3()D

    .line 544
    .line 545
    .line 546
    move-result-wide v11

    .line 547
    sub-double/2addr v9, v11

    .line 548
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 549
    .line 550
    .line 551
    move-result-wide v9

    .line 552
    add-double/2addr v7, v9

    .line 553
    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    cmpl-double v4, v7, v9

    .line 559
    .line 560
    if-lez v4, :cond_12

    .line 561
    .line 562
    :cond_10
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 563
    .line 564
    if-eqz v4, :cond_11

    .line 565
    .line 566
    invoke-virtual {v4, v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->onHeadposeChanged(Lcom/ss/texturerender/math/Quaternion;)V

    .line 567
    .line 568
    .line 569
    :cond_11
    iput-object v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mLastCallbackHeadpose:Lcom/ss/texturerender/math/Quaternion;

    .line 570
    .line 571
    :cond_12
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    .line 572
    .line 573
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/vr/TouchScaler;->getScale()F

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    iget v6, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 578
    .line 579
    const-string v7, "rotateMatrix"

    .line 580
    .line 581
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    iget-object v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRotateMatrix:[F

    .line 586
    .line 587
    invoke-static {v6, v3, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 588
    .line 589
    .line 590
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 591
    .line 592
    const/4 v7, 0x3

    .line 593
    const/4 v8, 0x0

    .line 594
    if-ne v6, v7, :cond_13

    .line 595
    .line 596
    iget v6, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 597
    .line 598
    const-string/jumbo v9, "texOffset"

    .line 599
    .line 600
    .line 601
    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCubeTexOffsetPerFace:[F

    .line 606
    .line 607
    const/4 v10, 0x6

    .line 608
    invoke-static {v6, v10, v9, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 609
    .line 610
    .line 611
    iget v6, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 612
    .line 613
    const-string v9, "rotates"

    .line 614
    .line 615
    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCubeRotatesPerFace:[F

    .line 620
    .line 621
    invoke-static {v6, v10, v2, v9, v2}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 622
    .line 623
    .line 624
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mZOffsetHandle:I

    .line 625
    .line 626
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mZOffset:F

    .line 627
    .line 628
    invoke-static {v6, v8, v8, v9}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 629
    .line 630
    .line 631
    :cond_13
    iget v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoefHandle:I

    .line 632
    .line 633
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mExpandCoef:F

    .line 634
    .line 635
    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 636
    .line 637
    .line 638
    iget-object v6, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 639
    .line 640
    invoke-virtual {v6}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportWidth()I

    .line 641
    .line 642
    .line 643
    move-result v6

    .line 644
    int-to-float v6, v6

    .line 645
    const/high16 v9, 0x3f800000    # 1.0f

    .line 646
    .line 647
    mul-float/2addr v6, v9

    .line 648
    iget-object v10, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 649
    .line 650
    invoke-virtual {v10}, Lcom/ss/texturerender/VideoSurfaceTexture;->getViewportHeight()I

    .line 651
    .line 652
    .line 653
    move-result v10

    .line 654
    int-to-float v10, v10

    .line 655
    div-float v14, v6, v10

    .line 656
    .line 657
    cmpl-float v6, v14, v9

    .line 658
    .line 659
    if-lez v6, :cond_14

    .line 660
    .line 661
    move v6, v14

    .line 662
    goto :goto_2

    .line 663
    :cond_14
    move v6, v9

    .line 664
    :goto_2
    iput v6, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    .line 665
    .line 666
    const/4 v6, 0x0

    .line 667
    if-eqz v1, :cond_16

    .line 668
    .line 669
    invoke-virtual {v0, v14}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateOutTexSize(F)V

    .line 670
    .line 671
    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->genTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 673
    .line 674
    .line 675
    move-result-object v10

    .line 676
    if-nez v10, :cond_15

    .line 677
    .line 678
    return-object p1

    .line 679
    :cond_15
    invoke-virtual {v10}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 680
    .line 681
    .line 682
    move-result v11

    .line 683
    invoke-virtual {v1, v11}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    .line 684
    .line 685
    .line 686
    iget v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 687
    .line 688
    iput v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 689
    .line 690
    iget v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 691
    .line 692
    iput v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 693
    .line 694
    goto :goto_3

    .line 695
    :cond_16
    move-object v10, v6

    .line 696
    :goto_3
    iget-boolean v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    .line 697
    .line 698
    const/16 v12, 0x4000

    .line 699
    .line 700
    if-eqz v11, :cond_17

    .line 701
    .line 702
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 703
    .line 704
    .line 705
    invoke-static {v12}, Landroid/opengl/GLES20;->glClear(I)V

    .line 706
    .line 707
    .line 708
    :cond_17
    const v11, 0x84c0

    .line 709
    .line 710
    .line 711
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 712
    .line 713
    .line 714
    iget v13, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 715
    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 717
    .line 718
    .line 719
    move-result v15

    .line 720
    invoke-static {v13, v15}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 721
    .line 722
    .line 723
    iget v13, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 724
    .line 725
    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 726
    .line 727
    .line 728
    iget v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    .line 729
    .line 730
    const-string/jumbo v15, "texScale"

    .line 731
    .line 732
    .line 733
    if-ne v13, v3, :cond_18

    .line 734
    .line 735
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 736
    .line 737
    invoke-static {v5, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    sget-object v7, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TEXSCALE_2D:[F

    .line 742
    .line 743
    invoke-static {v5, v3, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 744
    .line 745
    .line 746
    iget-object v11, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 747
    .line 748
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 749
    .line 750
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    .line 751
    .line 752
    div-float v13, v5, v7

    .line 753
    .line 754
    const v15, 0x3dcccccd    # 0.1f

    .line 755
    .line 756
    .line 757
    const/high16 v16, 0x42c80000    # 100.0f

    .line 758
    .line 759
    const/4 v12, 0x0

    .line 760
    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 761
    .line 762
    .line 763
    iget-object v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 764
    .line 765
    invoke-static {v5, v2, v4, v4, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 766
    .line 767
    .line 768
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 769
    .line 770
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 771
    .line 772
    iget v7, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 773
    .line 774
    iget v8, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 775
    .line 776
    invoke-static {v4, v5, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 777
    .line 778
    .line 779
    iget-object v11, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 780
    .line 781
    const/high16 v20, 0x3f800000    # 1.0f

    .line 782
    .line 783
    const/16 v21, 0x0

    .line 784
    .line 785
    const/4 v13, 0x0

    .line 786
    const/4 v14, 0x0

    .line 787
    const/4 v15, 0x0

    .line 788
    const/16 v16, 0x0

    .line 789
    .line 790
    const/16 v17, 0x0

    .line 791
    .line 792
    const/high16 v18, -0x40800000    # -1.0f

    .line 793
    .line 794
    const/16 v19, 0x0

    .line 795
    .line 796
    invoke-static/range {v11 .. v21}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 797
    .line 798
    .line 799
    iget-object v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 800
    .line 801
    invoke-virtual {v0, v4}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->draw(Ljava/nio/ShortBuffer;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_c

    .line 808
    .line 809
    :cond_18
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    if-nez v4, :cond_19

    .line 814
    .line 815
    invoke-direct {v0, v2}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateDistortionParam(Z)V

    .line 816
    .line 817
    .line 818
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 819
    .line 820
    iget-object v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 821
    .line 822
    sget v13, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 823
    .line 824
    aget-object v9, v9, v13

    .line 825
    .line 826
    aget v13, v9, v2

    .line 827
    .line 828
    neg-float v13, v13

    .line 829
    sget v22, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->ZNEAR:F

    .line 830
    .line 831
    mul-float v18, v13, v22

    .line 832
    .line 833
    aget v13, v9, v3

    .line 834
    .line 835
    mul-float v19, v13, v22

    .line 836
    .line 837
    aget v13, v9, v5

    .line 838
    .line 839
    neg-float v13, v13

    .line 840
    mul-float v20, v13, v22

    .line 841
    .line 842
    aget v9, v9, v7

    .line 843
    .line 844
    mul-float v21, v9, v22

    .line 845
    .line 846
    sget v23, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->ZFAR:F

    .line 847
    .line 848
    const/16 v17, 0x0

    .line 849
    .line 850
    move-object/from16 v16, v4

    .line 851
    .line 852
    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 853
    .line 854
    .line 855
    goto :goto_4

    .line 856
    :cond_19
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 857
    .line 858
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 859
    .line 860
    const/high16 v13, 0x40000000    # 2.0f

    .line 861
    .line 862
    div-float v27, v14, v13

    .line 863
    .line 864
    const v28, 0x3dcccccd    # 0.1f

    .line 865
    .line 866
    .line 867
    const/high16 v29, 0x42c80000    # 100.0f

    .line 868
    .line 869
    const/16 v25, 0x0

    .line 870
    .line 871
    move-object/from16 v24, v4

    .line 872
    .line 873
    move/from16 v26, v9

    .line 874
    .line 875
    invoke-static/range {v24 .. v29}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 876
    .line 877
    .line 878
    :goto_4
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 879
    .line 880
    const/4 v9, 0x4

    .line 881
    if-ne v4, v9, :cond_1a

    .line 882
    .line 883
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 884
    .line 885
    invoke-static {v4, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    sget-object v13, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->SIDE_BY_SIDE_TEXSCALE_LEFT:[F

    .line 890
    .line 891
    invoke-static {v4, v3, v2, v13, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 892
    .line 893
    .line 894
    goto :goto_5

    .line 895
    :cond_1a
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 896
    .line 897
    invoke-static {v4, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 898
    .line 899
    .line 900
    move-result v4

    .line 901
    sget-object v13, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TOP_BOTTOM_TEXSCALE_LEFT:[F

    .line 902
    .line 903
    invoke-static {v4, v3, v2, v13, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 904
    .line 905
    .line 906
    :goto_5
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 907
    .line 908
    div-int/2addr v4, v5

    .line 909
    iget v13, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 910
    .line 911
    invoke-static {v2, v2, v4, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 912
    .line 913
    .line 914
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 915
    .line 916
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 917
    .line 918
    .line 919
    move-result v13

    .line 920
    if-eqz v13, :cond_1b

    .line 921
    .line 922
    move/from16 v18, v8

    .line 923
    .line 924
    goto :goto_6

    .line 925
    :cond_1b
    iget v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 926
    .line 927
    neg-float v13, v13

    .line 928
    move/from16 v18, v13

    .line 929
    .line 930
    :goto_6
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 931
    .line 932
    .line 933
    move-result v13

    .line 934
    if-eqz v13, :cond_1c

    .line 935
    .line 936
    move/from16 v21, v8

    .line 937
    .line 938
    goto :goto_7

    .line 939
    :cond_1c
    iget v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 940
    .line 941
    neg-float v13, v13

    .line 942
    move/from16 v21, v13

    .line 943
    .line 944
    :goto_7
    const/high16 v25, 0x3f800000    # 1.0f

    .line 945
    .line 946
    const/16 v26, 0x0

    .line 947
    .line 948
    const/16 v17, 0x0

    .line 949
    .line 950
    const/16 v19, 0x0

    .line 951
    .line 952
    const/16 v20, 0x0

    .line 953
    .line 954
    const/16 v22, 0x0

    .line 955
    .line 956
    const/high16 v23, -0x40800000    # -1.0f

    .line 957
    .line 958
    const/16 v24, 0x0

    .line 959
    .line 960
    move-object/from16 v16, v4

    .line 961
    .line 962
    invoke-static/range {v16 .. v26}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 963
    .line 964
    .line 965
    iget-object v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 966
    .line 967
    invoke-virtual {v0, v4}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->draw(Ljava/nio/ShortBuffer;)V

    .line 968
    .line 969
    .line 970
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTextureVerticesRight:Ljava/nio/FloatBuffer;

    .line 971
    .line 972
    if-eqz v4, :cond_1d

    .line 973
    .line 974
    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 975
    .line 976
    .line 977
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 978
    .line 979
    iget v13, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    .line 980
    .line 981
    iget-object v14, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTextureVerticesRight:Ljava/nio/FloatBuffer;

    .line 982
    .line 983
    const/16 v17, 0x2

    .line 984
    .line 985
    const/16 v18, 0x1406

    .line 986
    .line 987
    const/16 v19, 0x0

    .line 988
    .line 989
    move/from16 v16, v4

    .line 990
    .line 991
    move/from16 v20, v13

    .line 992
    .line 993
    move-object/from16 v21, v14

    .line 994
    .line 995
    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 996
    .line 997
    .line 998
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 999
    .line 1000
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1001
    .line 1002
    .line 1003
    :cond_1d
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 1004
    .line 1005
    .line 1006
    move-result v4

    .line 1007
    if-nez v4, :cond_1e

    .line 1008
    .line 1009
    iget-object v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mProjectionMatrix:[F

    .line 1010
    .line 1011
    iget-object v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFovTan:[[F

    .line 1012
    .line 1013
    sget v14, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 1014
    .line 1015
    aget-object v13, v13, v14

    .line 1016
    .line 1017
    aget v14, v13, v2

    .line 1018
    .line 1019
    neg-float v14, v14

    .line 1020
    sget v22, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->ZNEAR:F

    .line 1021
    .line 1022
    mul-float v18, v14, v22

    .line 1023
    .line 1024
    aget v14, v13, v3

    .line 1025
    .line 1026
    mul-float v19, v14, v22

    .line 1027
    .line 1028
    aget v14, v13, v5

    .line 1029
    .line 1030
    neg-float v14, v14

    .line 1031
    mul-float v20, v14, v22

    .line 1032
    .line 1033
    aget v7, v13, v7

    .line 1034
    .line 1035
    mul-float v21, v7, v22

    .line 1036
    .line 1037
    sget v23, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->ZFAR:F

    .line 1038
    .line 1039
    const/16 v17, 0x0

    .line 1040
    .line 1041
    move-object/from16 v16, v4

    .line 1042
    .line 1043
    invoke-static/range {v16 .. v23}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 1044
    .line 1045
    .line 1046
    :cond_1e
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 1047
    .line 1048
    if-ne v4, v9, :cond_1f

    .line 1049
    .line 1050
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 1051
    .line 1052
    invoke-static {v4, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move-result v4

    .line 1056
    sget-object v7, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->SIDE_BY_SIDE_TEXSCALE_RIGHT:[F

    .line 1057
    .line 1058
    invoke-static {v4, v3, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_8

    .line 1062
    :cond_1f
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 1063
    .line 1064
    invoke-static {v4, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 1065
    .line 1066
    .line 1067
    move-result v4

    .line 1068
    sget-object v7, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->TOP_BOTTOM_TEXSCALE_RIGHT:[F

    .line 1069
    .line 1070
    invoke-static {v4, v3, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 1071
    .line 1072
    .line 1073
    :goto_8
    iget v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 1074
    .line 1075
    div-int/lit8 v7, v4, 0x2

    .line 1076
    .line 1077
    div-int/2addr v4, v5

    .line 1078
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 1079
    .line 1080
    invoke-static {v7, v2, v4, v9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1081
    .line 1082
    .line 1083
    iget-object v13, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewMatrix:[F

    .line 1084
    .line 1085
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v4

    .line 1089
    if-eqz v4, :cond_20

    .line 1090
    .line 1091
    move v15, v8

    .line 1092
    goto :goto_9

    .line 1093
    :cond_20
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 1094
    .line 1095
    move v15, v4

    .line 1096
    :goto_9
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v4

    .line 1100
    if-eqz v4, :cond_21

    .line 1101
    .line 1102
    move/from16 v18, v8

    .line 1103
    .line 1104
    goto :goto_a

    .line 1105
    :cond_21
    iget v4, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 1106
    .line 1107
    move/from16 v18, v4

    .line 1108
    .line 1109
    :goto_a
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1110
    .line 1111
    const/16 v23, 0x0

    .line 1112
    .line 1113
    const/4 v14, 0x0

    .line 1114
    const/16 v16, 0x0

    .line 1115
    .line 1116
    const/16 v17, 0x0

    .line 1117
    .line 1118
    const/16 v19, 0x0

    .line 1119
    .line 1120
    const/high16 v20, -0x40800000    # -1.0f

    .line 1121
    .line 1122
    const/16 v21, 0x0

    .line 1123
    .line 1124
    invoke-static/range {v13 .. v23}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 1125
    .line 1126
    .line 1127
    iget-object v4, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 1128
    .line 1129
    invoke-virtual {v0, v4}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->draw(Ljava/nio/ShortBuffer;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 1133
    .line 1134
    .line 1135
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v4

    .line 1139
    if-nez v4, :cond_24

    .line 1140
    .line 1141
    if-eqz v1, :cond_22

    .line 1142
    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->genTexture()Lcom/ss/texturerender/effect/EffectTexture;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v4

    .line 1147
    if-eqz v4, :cond_23

    .line 1148
    .line 1149
    invoke-virtual {v4}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 1150
    .line 1151
    .line 1152
    move-result v7

    .line 1153
    invoke-virtual {v1, v7}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    .line 1154
    .line 1155
    .line 1156
    goto :goto_b

    .line 1157
    :cond_22
    move-object v4, v6

    .line 1158
    :cond_23
    :goto_b
    iget v7, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 1159
    .line 1160
    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1161
    .line 1162
    .line 1163
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1164
    .line 1165
    .line 1166
    invoke-static {v12}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1167
    .line 1168
    .line 1169
    iget v7, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 1170
    .line 1171
    iget v8, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 1172
    .line 1173
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 1174
    .line 1175
    iget v12, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 1176
    .line 1177
    invoke-static {v7, v8, v9, v12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1181
    .line 1182
    .line 1183
    iget v7, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 1184
    .line 1185
    invoke-virtual {v10}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 1186
    .line 1187
    .line 1188
    move-result v8

    .line 1189
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1190
    .line 1191
    .line 1192
    iget v7, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 1193
    .line 1194
    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1195
    .line 1196
    .line 1197
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mMVPMatrixHandle:I

    .line 1198
    .line 1199
    iget-object v8, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIdentityMat:[F

    .line 1200
    .line 1201
    invoke-static {v7, v3, v2, v8, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1202
    .line 1203
    .line 1204
    const/16 v7, 0xc11

    .line 1205
    .line 1206
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1207
    .line 1208
    .line 1209
    iget v8, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 1210
    .line 1211
    iget v9, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 1212
    .line 1213
    iget v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 1214
    .line 1215
    div-int/2addr v11, v5

    .line 1216
    iget v12, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 1217
    .line 1218
    invoke-static {v8, v9, v11, v12}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 1219
    .line 1220
    .line 1221
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->LEFT:I

    .line 1222
    .line 1223
    invoke-direct {v0, v8}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->renderDistortion(I)V

    .line 1224
    .line 1225
    .line 1226
    iget v8, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 1227
    .line 1228
    div-int/lit8 v9, v8, 0x2

    .line 1229
    .line 1230
    iget v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 1231
    .line 1232
    add-int/2addr v9, v11

    .line 1233
    iget v11, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 1234
    .line 1235
    div-int/2addr v8, v5

    .line 1236
    iget v5, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 1237
    .line 1238
    invoke-static {v9, v11, v8, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 1239
    .line 1240
    .line 1241
    sget v5, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->RIGHT:I

    .line 1242
    .line 1243
    invoke-direct {v0, v5}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->renderDistortion(I)V

    .line 1244
    .line 1245
    .line 1246
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v10}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 1250
    .line 1251
    .line 1252
    move-object v10, v4

    .line 1253
    :cond_24
    :goto_c
    iget v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 1254
    .line 1255
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1256
    .line 1257
    .line 1258
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 1259
    .line 1260
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1261
    .line 1262
    .line 1263
    iget v2, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 1264
    .line 1265
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 1269
    .line 1270
    const/16 v4, 0x13

    .line 1271
    .line 1272
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 1273
    .line 1274
    invoke-virtual {v2, v4, v5, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 1275
    .line 1276
    .line 1277
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 1278
    .line 1279
    .line 1280
    iget-object v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 1281
    .line 1282
    if-eqz v2, :cond_25

    .line 1283
    .line 1284
    iget v3, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 1285
    .line 1286
    invoke-virtual {v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 1287
    .line 1288
    .line 1289
    :cond_25
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 1290
    .line 1291
    const-string v3, "error pano draw"

    .line 1292
    .line 1293
    invoke-static {v2, v3}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    .line 1294
    .line 1295
    .line 1296
    move-result v2

    .line 1297
    if-eqz v2, :cond_26

    .line 1298
    .line 1299
    iget-object v4, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 1300
    .line 1301
    if-eqz v4, :cond_26

    .line 1302
    .line 1303
    iget v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 1304
    .line 1305
    invoke-virtual {v4, v2, v5, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 1306
    .line 1307
    .line 1308
    :cond_26
    if-eqz v1, :cond_27

    .line 1309
    .line 1310
    invoke-virtual/range {p2 .. p2}, Lcom/ss/texturerender/effect/FrameBuffer;->unbindTexture2D()V

    .line 1311
    .line 1312
    .line 1313
    return-object v10

    .line 1314
    :cond_27
    return-object v6
.end method

.method protected registTouchDirector()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "freezing touch,don\'t regist,this:"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "TR_GLPanoramaFilter"

    .line 34
    .line 35
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->registerTouchListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/ss/texturerender/effect/vr/director/IDirector;->stop()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mIsProcessed:Z

    .line 22
    .line 23
    invoke-super {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public setOption(IF)V
    .locals 3

    const/16 v0, 0x67

    .line 46
    const-string v1, "TR_GLPanoramaFilter"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(IF)V

    goto :goto_0

    .line 48
    :cond_0
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOutTextureScale:F

    .line 49
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set textureScale:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mZOffset:F

    .line 51
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set zoffset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, p2, p1

    .line 52
    iput p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mHalfEyeDistance:F

    .line 53
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eye disfance:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 55
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perspective view:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOption(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const/16 v2, 0x65

    if-eq p1, v2, :cond_12

    const/16 v2, 0x66

    if-eq p1, v2, :cond_11

    const/16 v2, 0x69

    if-eq p1, v2, :cond_10

    const/16 v2, 0x6a

    if-eq p1, v2, :cond_c

    const/16 v2, 0x6c

    if-eq p1, v2, :cond_b

    const/16 v2, 0x6d

    if-eq p1, v2, :cond_a

    const/16 v2, 0x80

    if-eq p1, v2, :cond_8

    const/16 v2, 0x81

    if-eq p1, v2, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEnableTouchScaler:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->stop()V

    .line 3
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->start()V

    :cond_0
    return-void

    .line 4
    :pswitch_1
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSpaceOrientationPitch:I

    goto/16 :goto_2

    .line 5
    :pswitch_2
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->handleDirectModeChange()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-eq p2, v1, :cond_2

    if-ne p2, p1, :cond_4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/ss/texturerender/effect/vr/director/IDirector;->stop()V

    :cond_3
    if-ne p2, p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p1, :cond_4

    .line 10
    iget-object p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    invoke-virtual {p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->unRegisterTouchListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    .line 11
    :goto_1
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirectorEnabled:Z

    if-nez v0, :cond_7

    .line 12
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mModelMatrix:[F

    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeModelMatrix:[F

    :cond_7
    return-void

    .line 13
    :cond_8
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDidGetInitialModelMatrix:Z

    if-eqz p2, :cond_9

    .line 14
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    if-eqz p1, :cond_9

    .line 15
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->reset()V

    :cond_9
    return-void

    .line 16
    :cond_a
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetPitch:I

    goto/16 :goto_2

    .line 17
    :cond_b
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOffsetYaw:I

    goto/16 :goto_2

    .line 18
    :cond_c
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    if-eqz v0, :cond_17

    if-ne p2, v1, :cond_e

    .line 19
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    if-eqz v0, :cond_d

    .line 20
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 21
    :cond_d
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    invoke-interface {v0}, Lcom/ss/texturerender/effect/vr/director/IDirector;->stop()V

    goto :goto_2

    .line 22
    :cond_e
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    if-eqz v0, :cond_f

    .line 23
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 24
    :cond_f
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->startSensorDirector()V

    goto :goto_2

    .line 25
    :cond_10
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 26
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->handleDirectModeChange()V

    return-void

    .line 27
    :cond_11
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1, p1}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    return-void

    .line 29
    :cond_12
    iput p2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPanoMode:I

    return-void

    .line 30
    :cond_13
    iget-object v2, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    if-eqz v2, :cond_17

    const/4 v2, 0x3

    if-ne p2, v2, :cond_15

    .line 31
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    if-eqz v1, :cond_14

    .line 32
    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 33
    :cond_14
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    invoke-interface {v1}, Lcom/ss/texturerender/effect/vr/director/IDirector;->stop()V

    .line 34
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    invoke-interface {v1}, Lcom/ss/texturerender/effect/vr/director/IDirector;->reset()V

    .line 35
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    invoke-virtual {v1}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->stop()V

    .line 36
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    invoke-virtual {v1}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->reset()V

    .line 37
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    invoke-virtual {v1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->stop()V

    .line 38
    iput v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    goto :goto_2

    :cond_15
    if-ne p2, v1, :cond_17

    .line 39
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOrientationEventHandler:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;

    if-eqz v0, :cond_16

    .line 40
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 41
    :cond_16
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->startSensorDirector()V

    .line 42
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->start()V

    .line 43
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    invoke-virtual {v0}, Lcom/ss/texturerender/effect/vr/TouchScaler;->start()V

    .line 44
    :cond_17
    :goto_2
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOption key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TR_GLPanoramaFilter"

    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x89
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 56
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    const-string v1, "effect_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 57
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "TR_GLPanoramaFilter"

    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    if-eqz p1, :cond_1

    .line 62
    invoke-interface {p1}, Lcom/ss/texturerender/effect/vr/director/IDirector;->stop()V

    .line 63
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    invoke-interface {p1}, Lcom/ss/texturerender/effect/vr/director/IDirector;->reset()V

    .line 64
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->startSensorDirector()V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->stop()V

    .line 67
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->reset()V

    .line 68
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->start()V

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mEnableTouchScaler:Z

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->stop()V

    .line 71
    iget-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchScaler:Lcom/ss/texturerender/effect/vr/TouchScaler;

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/vr/TouchScaler;->start()V

    goto :goto_0

    .line 72
    :cond_3
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected startSensorDirector()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirector:Lcom/ss/texturerender/effect/vr/director/IDirector;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mFreezeDirector:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/ss/texturerender/effect/vr/director/IDirector;->start()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "freezing,don\'t start,this:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "TR_GLPanoramaFilter"

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateOutTexSize(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoProjectModel:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 7
    .line 8
    const/16 v1, 0xb4

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    const/high16 v1, 0x42b40000    # 90.0f

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    mul-float/2addr v0, v1

    .line 28
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOutTextureScale:F

    .line 29
    .line 30
    mul-float/2addr v0, v1

    .line 31
    float-to-double v0, v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    double-to-int v0, v0

    .line 37
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 41
    .line 42
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecViewRatio:F

    .line 43
    .line 44
    div-float/2addr v0, v1

    .line 45
    const/high16 v1, 0x43340000    # 180.0f

    .line 46
    .line 47
    div-float/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexHeight()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-float v1, v1

    .line 55
    mul-float/2addr v0, v1

    .line 56
    iget v1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mOutTextureScale:F

    .line 57
    .line 58
    mul-float/2addr v0, v1

    .line 59
    float-to-double v0, v0

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    double-to-int v0, v0

    .line 65
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 66
    .line 67
    :goto_0
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 68
    .line 69
    rem-int/lit8 v1, v0, 0x4

    .line 70
    .line 71
    rsub-int/lit8 v1, v1, 0x4

    .line 72
    .line 73
    rem-int/lit8 v1, v1, 0x4

    .line 74
    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 77
    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    .line 80
    int-to-float v1, v1

    .line 81
    mul-float/2addr v1, v0

    .line 82
    mul-float/2addr v1, p1

    .line 83
    float-to-double v0, v1

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    double-to-int v0, v0

    .line 89
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 90
    .line 91
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "pano OutTex h:"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, " w:"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ",viewPortRatio:"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, ", this:"

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, "TR_GLPanoramaFilter"

    .line 139
    .line 140
    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v6, 0xf

    .line 4
    .line 5
    const/high16 v8, -0x40800000    # -1.0f

    .line 6
    .line 7
    const/high16 v13, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iget v14, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 10
    .line 11
    new-instance v15, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v10, "handleModlelChange mVideoStyle:"

    .line 17
    .line 18
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 22
    .line 23
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v10, ", this:"

    .line 27
    .line 28
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    const-string v15, "TR_GLPanoramaFilter"

    .line 39
    .line 40
    invoke-static {v14, v15, v10}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 44
    .line 45
    const/16 v14, 0xc

    .line 46
    .line 47
    const/16 v15, 0xb

    .line 48
    .line 49
    const/16 v16, 0xa

    .line 50
    .line 51
    const/16 v17, 0x9

    .line 52
    .line 53
    const/16 v12, 0x8

    .line 54
    .line 55
    const/16 v18, 0x7

    .line 56
    .line 57
    const/4 v11, 0x5

    .line 58
    const/4 v9, 0x6

    .line 59
    const/4 v1, 0x4

    .line 60
    const/4 v2, 0x3

    .line 61
    const/4 v7, 0x2

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x1

    .line 64
    if-eq v10, v4, :cond_19

    .line 65
    .line 66
    iget v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 67
    .line 68
    if-eq v10, v4, :cond_7

    .line 69
    .line 70
    if-eq v10, v2, :cond_7

    .line 71
    .line 72
    if-ne v10, v9, :cond_0

    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_0
    if-eq v10, v7, :cond_2

    .line 77
    .line 78
    if-eq v10, v1, :cond_2

    .line 79
    .line 80
    if-ne v10, v11, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v2, v1

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v8, 0x0

    .line 87
    goto/16 :goto_11

    .line 88
    .line 89
    :cond_2
    :goto_0
    const/16 v5, 0x48

    .line 90
    .line 91
    new-array v5, v5, [F

    .line 92
    .line 93
    aput v8, v5, v3

    .line 94
    .line 95
    aput v8, v5, v4

    .line 96
    .line 97
    aput v13, v5, v7

    .line 98
    .line 99
    aput v8, v5, v2

    .line 100
    .line 101
    aput v8, v5, v1

    .line 102
    .line 103
    aput v8, v5, v11

    .line 104
    .line 105
    aput v8, v5, v9

    .line 106
    .line 107
    aput v13, v5, v18

    .line 108
    .line 109
    aput v13, v5, v12

    .line 110
    .line 111
    aput v8, v5, v17

    .line 112
    .line 113
    aput v13, v5, v16

    .line 114
    .line 115
    aput v8, v5, v15

    .line 116
    .line 117
    aput v8, v5, v14

    .line 118
    .line 119
    const/16 v27, 0xd

    .line 120
    .line 121
    aput v8, v5, v27

    .line 122
    .line 123
    const/16 v28, 0xe

    .line 124
    .line 125
    aput v8, v5, v28

    .line 126
    .line 127
    aput v13, v5, v6

    .line 128
    .line 129
    const/16 v26, 0x10

    .line 130
    .line 131
    aput v8, v5, v26

    .line 132
    .line 133
    const/16 v29, 0x11

    .line 134
    .line 135
    aput v8, v5, v29

    .line 136
    .line 137
    const/16 v30, 0x12

    .line 138
    .line 139
    aput v8, v5, v30

    .line 140
    .line 141
    const/16 v25, 0x13

    .line 142
    .line 143
    aput v13, v5, v25

    .line 144
    .line 145
    const/16 v24, 0x14

    .line 146
    .line 147
    aput v8, v5, v24

    .line 148
    .line 149
    const/16 v31, 0x15

    .line 150
    .line 151
    aput v13, v5, v31

    .line 152
    .line 153
    const/16 v23, 0x16

    .line 154
    .line 155
    aput v13, v5, v23

    .line 156
    .line 157
    const/16 v22, 0x17

    .line 158
    .line 159
    aput v8, v5, v22

    .line 160
    .line 161
    const/16 v21, 0x18

    .line 162
    .line 163
    aput v13, v5, v21

    .line 164
    .line 165
    const/16 v32, 0x19

    .line 166
    .line 167
    aput v8, v5, v32

    .line 168
    .line 169
    const/16 v32, 0x1a

    .line 170
    .line 171
    aput v8, v5, v32

    .line 172
    .line 173
    const/16 v32, 0x1b

    .line 174
    .line 175
    aput v13, v5, v32

    .line 176
    .line 177
    const/16 v32, 0x1c

    .line 178
    .line 179
    aput v8, v5, v32

    .line 180
    .line 181
    const/16 v32, 0x1d

    .line 182
    .line 183
    aput v13, v5, v32

    .line 184
    .line 185
    const/16 v32, 0x1e

    .line 186
    .line 187
    aput v13, v5, v32

    .line 188
    .line 189
    const/16 v32, 0x1f

    .line 190
    .line 191
    aput v13, v5, v32

    .line 192
    .line 193
    const/16 v32, 0x20

    .line 194
    .line 195
    aput v8, v5, v32

    .line 196
    .line 197
    const/16 v32, 0x21

    .line 198
    .line 199
    aput v13, v5, v32

    .line 200
    .line 201
    const/16 v32, 0x22

    .line 202
    .line 203
    aput v13, v5, v32

    .line 204
    .line 205
    const/16 v32, 0x23

    .line 206
    .line 207
    aput v13, v5, v32

    .line 208
    .line 209
    const/16 v32, 0x24

    .line 210
    .line 211
    aput v8, v5, v32

    .line 212
    .line 213
    const/16 v32, 0x25

    .line 214
    .line 215
    aput v13, v5, v32

    .line 216
    .line 217
    const/16 v32, 0x26

    .line 218
    .line 219
    aput v8, v5, v32

    .line 220
    .line 221
    const/16 v32, 0x27

    .line 222
    .line 223
    aput v13, v5, v32

    .line 224
    .line 225
    const/16 v32, 0x28

    .line 226
    .line 227
    aput v13, v5, v32

    .line 228
    .line 229
    const/16 v32, 0x29

    .line 230
    .line 231
    aput v8, v5, v32

    .line 232
    .line 233
    const/16 v32, 0x2a

    .line 234
    .line 235
    aput v8, v5, v32

    .line 236
    .line 237
    const/16 v32, 0x2b

    .line 238
    .line 239
    aput v13, v5, v32

    .line 240
    .line 241
    const/16 v32, 0x2c

    .line 242
    .line 243
    aput v13, v5, v32

    .line 244
    .line 245
    const/16 v32, 0x2d

    .line 246
    .line 247
    aput v13, v5, v32

    .line 248
    .line 249
    const/16 v32, 0x2e

    .line 250
    .line 251
    aput v13, v5, v32

    .line 252
    .line 253
    const/16 v32, 0x2f

    .line 254
    .line 255
    aput v13, v5, v32

    .line 256
    .line 257
    const/16 v20, 0x30

    .line 258
    .line 259
    aput v13, v5, v20

    .line 260
    .line 261
    const/16 v32, 0x31

    .line 262
    .line 263
    aput v8, v5, v32

    .line 264
    .line 265
    const/16 v32, 0x32

    .line 266
    .line 267
    aput v13, v5, v32

    .line 268
    .line 269
    const/16 v32, 0x33

    .line 270
    .line 271
    aput v8, v5, v32

    .line 272
    .line 273
    const/16 v32, 0x34

    .line 274
    .line 275
    aput v8, v5, v32

    .line 276
    .line 277
    const/16 v32, 0x35

    .line 278
    .line 279
    aput v13, v5, v32

    .line 280
    .line 281
    const/16 v32, 0x36

    .line 282
    .line 283
    aput v13, v5, v32

    .line 284
    .line 285
    const/16 v32, 0x37

    .line 286
    .line 287
    aput v13, v5, v32

    .line 288
    .line 289
    const/16 v32, 0x38

    .line 290
    .line 291
    aput v13, v5, v32

    .line 292
    .line 293
    const/16 v32, 0x39

    .line 294
    .line 295
    aput v8, v5, v32

    .line 296
    .line 297
    const/16 v32, 0x3a

    .line 298
    .line 299
    aput v13, v5, v32

    .line 300
    .line 301
    const/16 v32, 0x3b

    .line 302
    .line 303
    aput v13, v5, v32

    .line 304
    .line 305
    const/16 v32, 0x3c

    .line 306
    .line 307
    aput v8, v5, v32

    .line 308
    .line 309
    const/16 v32, 0x3d

    .line 310
    .line 311
    aput v8, v5, v32

    .line 312
    .line 313
    const/16 v32, 0x3e

    .line 314
    .line 315
    aput v13, v5, v32

    .line 316
    .line 317
    const/16 v32, 0x3f

    .line 318
    .line 319
    aput v13, v5, v32

    .line 320
    .line 321
    const/16 v32, 0x40

    .line 322
    .line 323
    aput v8, v5, v32

    .line 324
    .line 325
    const/16 v32, 0x41

    .line 326
    .line 327
    aput v13, v5, v32

    .line 328
    .line 329
    const/16 v32, 0x42

    .line 330
    .line 331
    aput v8, v5, v32

    .line 332
    .line 333
    const/16 v32, 0x43

    .line 334
    .line 335
    aput v8, v5, v32

    .line 336
    .line 337
    const/16 v32, 0x44

    .line 338
    .line 339
    aput v8, v5, v32

    .line 340
    .line 341
    const/16 v32, 0x45

    .line 342
    .line 343
    aput v13, v5, v32

    .line 344
    .line 345
    const/16 v13, 0x46

    .line 346
    .line 347
    aput v8, v5, v13

    .line 348
    .line 349
    const/16 v13, 0x47

    .line 350
    .line 351
    aput v8, v5, v13

    .line 352
    .line 353
    const/16 v8, 0x24

    .line 354
    .line 355
    new-array v8, v8, [S

    .line 356
    .line 357
    aput-short v3, v8, v3

    .line 358
    .line 359
    aput-short v4, v8, v4

    .line 360
    .line 361
    aput-short v7, v8, v7

    .line 362
    .line 363
    aput-short v4, v8, v2

    .line 364
    .line 365
    aput-short v7, v8, v1

    .line 366
    .line 367
    aput-short v2, v8, v11

    .line 368
    .line 369
    aput-short v1, v8, v9

    .line 370
    .line 371
    aput-short v11, v8, v18

    .line 372
    .line 373
    aput-short v9, v8, v12

    .line 374
    .line 375
    aput-short v11, v8, v17

    .line 376
    .line 377
    aput-short v9, v8, v16

    .line 378
    .line 379
    aput-short v18, v8, v15

    .line 380
    .line 381
    aput-short v12, v8, v14

    .line 382
    .line 383
    aput-short v17, v8, v27

    .line 384
    .line 385
    aput-short v16, v8, v28

    .line 386
    .line 387
    aput-short v17, v8, v6

    .line 388
    .line 389
    const/16 v13, 0x10

    .line 390
    .line 391
    aput-short v16, v8, v13

    .line 392
    .line 393
    aput-short v15, v8, v29

    .line 394
    .line 395
    aput-short v14, v8, v30

    .line 396
    .line 397
    const/16 v14, 0x13

    .line 398
    .line 399
    aput-short v27, v8, v14

    .line 400
    .line 401
    const/16 v14, 0x14

    .line 402
    .line 403
    aput-short v28, v8, v14

    .line 404
    .line 405
    aput-short v27, v8, v31

    .line 406
    .line 407
    const/16 v14, 0x16

    .line 408
    .line 409
    aput-short v28, v8, v14

    .line 410
    .line 411
    const/16 v14, 0x17

    .line 412
    .line 413
    aput-short v6, v8, v14

    .line 414
    .line 415
    const/16 v6, 0x18

    .line 416
    .line 417
    aput-short v13, v8, v6

    .line 418
    .line 419
    const/16 v6, 0x19

    .line 420
    .line 421
    aput-short v29, v8, v6

    .line 422
    .line 423
    const/16 v6, 0x1a

    .line 424
    .line 425
    aput-short v30, v8, v6

    .line 426
    .line 427
    const/16 v6, 0x1b

    .line 428
    .line 429
    aput-short v29, v8, v6

    .line 430
    .line 431
    const/16 v6, 0x1c

    .line 432
    .line 433
    aput-short v30, v8, v6

    .line 434
    .line 435
    const/16 v6, 0x1d

    .line 436
    .line 437
    const/16 v13, 0x13

    .line 438
    .line 439
    aput-short v13, v8, v6

    .line 440
    .line 441
    const/16 v6, 0x1e

    .line 442
    .line 443
    const/16 v13, 0x14

    .line 444
    .line 445
    aput-short v13, v8, v6

    .line 446
    .line 447
    const/16 v6, 0x1f

    .line 448
    .line 449
    aput-short v31, v8, v6

    .line 450
    .line 451
    const/16 v6, 0x20

    .line 452
    .line 453
    const/16 v13, 0x16

    .line 454
    .line 455
    aput-short v13, v8, v6

    .line 456
    .line 457
    const/16 v6, 0x21

    .line 458
    .line 459
    aput-short v31, v8, v6

    .line 460
    .line 461
    const/16 v6, 0x22

    .line 462
    .line 463
    aput-short v13, v8, v6

    .line 464
    .line 465
    const/16 v6, 0x23

    .line 466
    .line 467
    const/16 v13, 0x17

    .line 468
    .line 469
    aput-short v13, v8, v6

    .line 470
    .line 471
    new-array v6, v7, [[F

    .line 472
    .line 473
    if-ne v10, v11, :cond_3

    .line 474
    .line 475
    iget v10, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCMPFaceInnerPadding:F

    .line 476
    .line 477
    const v13, 0x3eaaaaab

    .line 478
    .line 479
    .line 480
    mul-float/2addr v13, v10

    .line 481
    const/high16 v14, 0x3f000000    # 0.5f

    .line 482
    .line 483
    mul-float/2addr v10, v14

    .line 484
    const v14, 0x3e2aaaab

    .line 485
    .line 486
    .line 487
    sub-float v13, v14, v13

    .line 488
    .line 489
    const/high16 v14, 0x3e800000    # 0.25f

    .line 490
    .line 491
    sub-float/2addr v14, v10

    .line 492
    const/16 v10, 0x30

    .line 493
    .line 494
    new-array v10, v10, [F

    .line 495
    .line 496
    aput-object v10, v6, v3

    .line 497
    .line 498
    move v10, v3

    .line 499
    :goto_1
    if-ge v10, v9, :cond_6

    .line 500
    .line 501
    mul-int/lit8 v15, v10, 0x8

    .line 502
    .line 503
    rem-int/lit8 v16, v10, 0x3

    .line 504
    .line 505
    mul-int/lit8 v16, v16, 0x2

    .line 506
    .line 507
    add-int/lit8 v12, v16, 0x1

    .line 508
    .line 509
    int-to-float v12, v12

    .line 510
    const v16, 0x3e2aaaab

    .line 511
    .line 512
    .line 513
    mul-float v12, v12, v16

    .line 514
    .line 515
    div-int/lit8 v17, v10, 0x3

    .line 516
    .line 517
    mul-int/lit8 v17, v17, 0x2

    .line 518
    .line 519
    add-int/lit8 v9, v17, 0x1

    .line 520
    .line 521
    int-to-float v9, v9

    .line 522
    const/high16 v17, 0x3e800000    # 0.25f

    .line 523
    .line 524
    mul-float v9, v9, v17

    .line 525
    .line 526
    aget-object v17, v6, v3

    .line 527
    .line 528
    sub-float v19, v12, v13

    .line 529
    .line 530
    aput v19, v17, v15

    .line 531
    .line 532
    add-int/lit8 v20, v15, 0x1

    .line 533
    .line 534
    sub-float v21, v9, v14

    .line 535
    .line 536
    aput v21, v17, v20

    .line 537
    .line 538
    add-int/lit8 v20, v15, 0x2

    .line 539
    .line 540
    add-float/2addr v12, v13

    .line 541
    aput v12, v17, v20

    .line 542
    .line 543
    add-int/lit8 v20, v15, 0x3

    .line 544
    .line 545
    aput v21, v17, v20

    .line 546
    .line 547
    add-int/lit8 v20, v15, 0x4

    .line 548
    .line 549
    aput v19, v17, v20

    .line 550
    .line 551
    add-int/lit8 v19, v15, 0x5

    .line 552
    .line 553
    add-float/2addr v9, v14

    .line 554
    aput v9, v17, v19

    .line 555
    .line 556
    const/16 v19, 0x6

    .line 557
    .line 558
    add-int/lit8 v20, v15, 0x6

    .line 559
    .line 560
    aput v12, v17, v20

    .line 561
    .line 562
    add-int/lit8 v15, v15, 0x7

    .line 563
    .line 564
    aput v9, v17, v15

    .line 565
    .line 566
    add-int/2addr v10, v4

    .line 567
    const/4 v9, 0x6

    .line 568
    const/16 v12, 0x8

    .line 569
    .line 570
    goto :goto_1

    .line 571
    :cond_3
    if-ne v10, v1, :cond_4

    .line 572
    .line 573
    const/16 v2, 0x30

    .line 574
    .line 575
    new-array v2, v2, [F

    .line 576
    .line 577
    fill-array-data v2, :array_0

    .line 578
    .line 579
    .line 580
    aput-object v2, v6, v3

    .line 581
    .line 582
    goto :goto_2

    .line 583
    :cond_4
    const/16 v2, 0x30

    .line 584
    .line 585
    iget v9, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mViewSize:I

    .line 586
    .line 587
    const/16 v10, 0x168

    .line 588
    .line 589
    if-ne v9, v10, :cond_5

    .line 590
    .line 591
    new-array v2, v2, [F

    .line 592
    .line 593
    fill-array-data v2, :array_1

    .line 594
    .line 595
    .line 596
    aput-object v2, v6, v3

    .line 597
    .line 598
    goto :goto_2

    .line 599
    :cond_5
    new-array v2, v2, [F

    .line 600
    .line 601
    fill-array-data v2, :array_2

    .line 602
    .line 603
    .line 604
    aput-object v2, v6, v3

    .line 605
    .line 606
    :cond_6
    :goto_2
    move v2, v1

    .line 607
    goto/16 :goto_11

    .line 608
    .line 609
    :cond_7
    :goto_3
    iget v5, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDesireViewSize:I

    .line 610
    .line 611
    int-to-double v8, v5

    .line 612
    const-wide v14, 0x4062c00000000000L    # 150.0

    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    mul-double/2addr v8, v14

    .line 618
    const-wide v14, 0x4076800000000000L    # 360.0

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    div-double/2addr v8, v14

    .line 624
    double-to-int v6, v8

    .line 625
    div-int/lit16 v5, v5, 0xb4

    .line 626
    .line 627
    int-to-double v8, v5

    .line 628
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    mul-double/2addr v8, v14

    .line 634
    double-to-float v5, v8

    .line 635
    const/16 v8, 0x4b

    .line 636
    .line 637
    int-to-float v9, v8

    .line 638
    div-float v9, v13, v9

    .line 639
    .line 640
    int-to-float v10, v6

    .line 641
    div-float v10, v13, v10

    .line 642
    .line 643
    add-int/lit8 v12, v6, 0x1

    .line 644
    .line 645
    mul-int/lit16 v14, v12, 0xe4

    .line 646
    .line 647
    new-array v14, v14, [F

    .line 648
    .line 649
    mul-int/lit16 v15, v12, 0x1c8

    .line 650
    .line 651
    new-array v15, v15, [S

    .line 652
    .line 653
    move v11, v3

    .line 654
    move/from16 v16, v11

    .line 655
    .line 656
    :goto_4
    const/16 v8, 0x4c

    .line 657
    .line 658
    if-ge v11, v8, :cond_9

    .line 659
    .line 660
    const v8, 0x40490fdb    # (float)Math.PI

    .line 661
    .line 662
    .line 663
    int-to-float v13, v11

    .line 664
    mul-float/2addr v13, v8

    .line 665
    mul-float/2addr v13, v9

    .line 666
    float-to-double v1, v13

    .line 667
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 668
    .line 669
    .line 670
    move-result-wide v7

    .line 671
    double-to-float v7, v7

    .line 672
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 673
    .line 674
    .line 675
    move-result-wide v1

    .line 676
    double-to-float v1, v1

    .line 677
    move v2, v3

    .line 678
    :goto_5
    if-ge v2, v12, :cond_8

    .line 679
    .line 680
    const/high16 v8, 0x40000000    # 2.0f

    .line 681
    .line 682
    div-float v8, v5, v8

    .line 683
    .line 684
    const v17, 0x40490fdb    # (float)Math.PI

    .line 685
    .line 686
    .line 687
    sub-float v17, v17, v8

    .line 688
    .line 689
    int-to-float v8, v2

    .line 690
    mul-float/2addr v8, v5

    .line 691
    mul-float/2addr v8, v10

    .line 692
    add-float v8, v17, v8

    .line 693
    .line 694
    move-object/from16 v17, v14

    .line 695
    .line 696
    float-to-double v13, v8

    .line 697
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 698
    .line 699
    .line 700
    move-result-wide v24

    .line 701
    float-to-double v3, v1

    .line 702
    move/from16 v29, v5

    .line 703
    .line 704
    move/from16 v28, v6

    .line 705
    .line 706
    mul-double v5, v24, v3

    .line 707
    .line 708
    double-to-float v5, v5

    .line 709
    neg-float v5, v5

    .line 710
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 711
    .line 712
    .line 713
    move-result-wide v13

    .line 714
    mul-double/2addr v13, v3

    .line 715
    double-to-float v3, v13

    .line 716
    const/4 v4, 0x1

    .line 717
    add-int/lit8 v6, v16, 0x1

    .line 718
    .line 719
    sget v8, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRadius:F

    .line 720
    .line 721
    mul-float/2addr v5, v8

    .line 722
    aput v5, v17, v16

    .line 723
    .line 724
    const/4 v5, 0x2

    .line 725
    add-int/lit8 v14, v16, 0x2

    .line 726
    .line 727
    mul-float v5, v7, v8

    .line 728
    .line 729
    aput v5, v17, v6

    .line 730
    .line 731
    const/4 v5, 0x3

    .line 732
    add-int/lit8 v16, v16, 0x3

    .line 733
    .line 734
    mul-float/2addr v3, v8

    .line 735
    aput v3, v17, v14

    .line 736
    .line 737
    add-int/2addr v2, v4

    .line 738
    int-to-short v2, v2

    .line 739
    move-object/from16 v14, v17

    .line 740
    .line 741
    move/from16 v6, v28

    .line 742
    .line 743
    move/from16 v5, v29

    .line 744
    .line 745
    const/4 v3, 0x0

    .line 746
    goto :goto_5

    .line 747
    :cond_8
    move/from16 v29, v5

    .line 748
    .line 749
    move/from16 v28, v6

    .line 750
    .line 751
    move-object/from16 v17, v14

    .line 752
    .line 753
    add-int/2addr v11, v4

    .line 754
    int-to-short v11, v11

    .line 755
    const/4 v1, 0x4

    .line 756
    const/4 v2, 0x3

    .line 757
    const/4 v3, 0x0

    .line 758
    const/4 v7, 0x2

    .line 759
    const/high16 v13, 0x3f800000    # 1.0f

    .line 760
    .line 761
    goto :goto_4

    .line 762
    :cond_9
    move/from16 v28, v6

    .line 763
    .line 764
    move v1, v7

    .line 765
    move-object/from16 v17, v14

    .line 766
    .line 767
    new-array v6, v1, [[F

    .line 768
    .line 769
    mul-int/lit16 v1, v12, 0x98

    .line 770
    .line 771
    new-array v2, v1, [F

    .line 772
    .line 773
    const/4 v3, 0x0

    .line 774
    aput-object v2, v6, v3

    .line 775
    .line 776
    const/4 v2, 0x0

    .line 777
    aput-object v2, v6, v4

    .line 778
    .line 779
    const/4 v2, 0x0

    .line 780
    const/4 v3, 0x0

    .line 781
    const/4 v4, 0x0

    .line 782
    :goto_6
    if-ge v2, v8, :cond_15

    .line 783
    .line 784
    const/4 v5, 0x0

    .line 785
    :goto_7
    if-ge v5, v12, :cond_14

    .line 786
    .line 787
    iget v7, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVideoStyle:I

    .line 788
    .line 789
    const/4 v11, 0x2

    .line 790
    if-eq v7, v11, :cond_12

    .line 791
    .line 792
    const/4 v13, 0x3

    .line 793
    if-eq v7, v13, :cond_e

    .line 794
    .line 795
    const/4 v13, 0x4

    .line 796
    if-eq v7, v13, :cond_a

    .line 797
    .line 798
    :goto_8
    const/4 v7, 0x1

    .line 799
    :goto_9
    const/high16 v11, 0x3f800000    # 1.0f

    .line 800
    .line 801
    const/high16 v16, 0x3f000000    # 0.5f

    .line 802
    .line 803
    goto/16 :goto_e

    .line 804
    .line 805
    :cond_a
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 806
    .line 807
    .line 808
    move-result v7

    .line 809
    if-eqz v7, :cond_b

    .line 810
    .line 811
    const/4 v7, 0x0

    .line 812
    aget-object v13, v6, v7

    .line 813
    .line 814
    const/4 v14, 0x1

    .line 815
    add-int/lit8 v16, v3, 0x1

    .line 816
    .line 817
    int-to-float v8, v5

    .line 818
    mul-float/2addr v8, v10

    .line 819
    aput v8, v13, v3

    .line 820
    .line 821
    add-int/2addr v3, v11

    .line 822
    int-to-float v8, v2

    .line 823
    mul-float/2addr v8, v9

    .line 824
    aput v8, v13, v16

    .line 825
    .line 826
    goto :goto_a

    .line 827
    :cond_b
    const/4 v7, 0x0

    .line 828
    const/4 v14, 0x1

    .line 829
    aget-object v8, v6, v7

    .line 830
    .line 831
    add-int/lit8 v7, v3, 0x1

    .line 832
    .line 833
    int-to-float v13, v5

    .line 834
    mul-float/2addr v13, v10

    .line 835
    const/high16 v16, 0x3f000000    # 0.5f

    .line 836
    .line 837
    mul-float v13, v13, v16

    .line 838
    .line 839
    aput v13, v8, v3

    .line 840
    .line 841
    add-int/2addr v3, v11

    .line 842
    int-to-float v11, v2

    .line 843
    mul-float/2addr v11, v9

    .line 844
    const/high16 v16, 0x3f800000    # 1.0f

    .line 845
    .line 846
    sub-float v11, v16, v11

    .line 847
    .line 848
    aput v11, v8, v7

    .line 849
    .line 850
    :goto_a
    aget-object v7, v6, v14

    .line 851
    .line 852
    if-nez v7, :cond_c

    .line 853
    .line 854
    new-array v7, v1, [F

    .line 855
    .line 856
    aput-object v7, v6, v14

    .line 857
    .line 858
    :cond_c
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 859
    .line 860
    .line 861
    move-result v7

    .line 862
    if-eqz v7, :cond_d

    .line 863
    .line 864
    aget-object v7, v6, v14

    .line 865
    .line 866
    add-int/lit8 v8, v4, 0x1

    .line 867
    .line 868
    int-to-float v11, v5

    .line 869
    mul-float/2addr v11, v10

    .line 870
    aput v11, v7, v4

    .line 871
    .line 872
    const/4 v11, 0x2

    .line 873
    add-int/2addr v4, v11

    .line 874
    int-to-float v11, v2

    .line 875
    mul-float/2addr v11, v9

    .line 876
    aput v11, v7, v8

    .line 877
    .line 878
    move v7, v14

    .line 879
    goto :goto_9

    .line 880
    :cond_d
    aget-object v7, v6, v14

    .line 881
    .line 882
    add-int/lit8 v8, v4, 0x1

    .line 883
    .line 884
    int-to-float v11, v5

    .line 885
    mul-float/2addr v11, v10

    .line 886
    const/high16 v14, 0x3f000000    # 0.5f

    .line 887
    .line 888
    mul-float/2addr v11, v14

    .line 889
    add-float/2addr v11, v14

    .line 890
    aput v11, v7, v4

    .line 891
    .line 892
    const/4 v11, 0x2

    .line 893
    add-int/2addr v4, v11

    .line 894
    int-to-float v11, v2

    .line 895
    mul-float/2addr v11, v9

    .line 896
    const/high16 v14, 0x3f800000    # 1.0f

    .line 897
    .line 898
    sub-float v11, v14, v11

    .line 899
    .line 900
    aput v11, v7, v8

    .line 901
    .line 902
    goto :goto_8

    .line 903
    :cond_e
    const/4 v7, 0x0

    .line 904
    aget-object v8, v6, v7

    .line 905
    .line 906
    const/4 v11, 0x1

    .line 907
    add-int/lit8 v14, v3, 0x1

    .line 908
    .line 909
    int-to-float v11, v5

    .line 910
    mul-float/2addr v11, v10

    .line 911
    aput v11, v8, v3

    .line 912
    .line 913
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 914
    .line 915
    .line 916
    move-result v8

    .line 917
    if-eqz v8, :cond_f

    .line 918
    .line 919
    aget-object v8, v6, v7

    .line 920
    .line 921
    const/4 v13, 0x2

    .line 922
    add-int/2addr v3, v13

    .line 923
    int-to-float v13, v2

    .line 924
    mul-float/2addr v13, v9

    .line 925
    aput v13, v8, v14

    .line 926
    .line 927
    :goto_b
    const/4 v7, 0x1

    .line 928
    goto :goto_c

    .line 929
    :cond_f
    aget-object v8, v6, v7

    .line 930
    .line 931
    const/4 v7, 0x2

    .line 932
    add-int/2addr v3, v7

    .line 933
    int-to-float v7, v2

    .line 934
    mul-float/2addr v7, v9

    .line 935
    const/high16 v16, 0x3f000000    # 0.5f

    .line 936
    .line 937
    mul-float v7, v7, v16

    .line 938
    .line 939
    const/high16 v16, 0x3f800000    # 1.0f

    .line 940
    .line 941
    sub-float v7, v16, v7

    .line 942
    .line 943
    aput v7, v8, v14

    .line 944
    .line 945
    goto :goto_b

    .line 946
    :goto_c
    aget-object v8, v6, v7

    .line 947
    .line 948
    if-nez v8, :cond_10

    .line 949
    .line 950
    new-array v8, v1, [F

    .line 951
    .line 952
    aput-object v8, v6, v7

    .line 953
    .line 954
    :cond_10
    aget-object v8, v6, v7

    .line 955
    .line 956
    add-int/lit8 v14, v4, 0x1

    .line 957
    .line 958
    aput v11, v8, v4

    .line 959
    .line 960
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 961
    .line 962
    .line 963
    move-result v8

    .line 964
    if-eqz v8, :cond_11

    .line 965
    .line 966
    aget-object v8, v6, v7

    .line 967
    .line 968
    const/4 v11, 0x2

    .line 969
    add-int/2addr v4, v11

    .line 970
    int-to-float v13, v2

    .line 971
    mul-float/2addr v13, v9

    .line 972
    aput v13, v8, v14

    .line 973
    .line 974
    goto/16 :goto_9

    .line 975
    .line 976
    :cond_11
    const/4 v11, 0x2

    .line 977
    aget-object v8, v6, v7

    .line 978
    .line 979
    add-int/2addr v4, v11

    .line 980
    int-to-float v11, v2

    .line 981
    mul-float/2addr v11, v9

    .line 982
    const/high16 v16, 0x3f000000    # 0.5f

    .line 983
    .line 984
    mul-float v11, v11, v16

    .line 985
    .line 986
    sub-float v11, v16, v11

    .line 987
    .line 988
    aput v11, v8, v14

    .line 989
    .line 990
    :goto_d
    const/high16 v11, 0x3f800000    # 1.0f

    .line 991
    .line 992
    goto :goto_e

    .line 993
    :cond_12
    const/4 v7, 0x1

    .line 994
    const/4 v8, 0x0

    .line 995
    const/high16 v16, 0x3f000000    # 0.5f

    .line 996
    .line 997
    aget-object v11, v6, v8

    .line 998
    .line 999
    add-int/lit8 v14, v3, 0x1

    .line 1000
    .line 1001
    int-to-float v7, v5

    .line 1002
    mul-float/2addr v7, v10

    .line 1003
    aput v7, v11, v3

    .line 1004
    .line 1005
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 1006
    .line 1007
    .line 1008
    move-result v7

    .line 1009
    if-eqz v7, :cond_13

    .line 1010
    .line 1011
    aget-object v7, v6, v8

    .line 1012
    .line 1013
    const/4 v11, 0x2

    .line 1014
    add-int/2addr v3, v11

    .line 1015
    int-to-float v13, v2

    .line 1016
    mul-float/2addr v13, v9

    .line 1017
    aput v13, v7, v14

    .line 1018
    .line 1019
    const/4 v7, 0x1

    .line 1020
    goto :goto_d

    .line 1021
    :cond_13
    const/4 v11, 0x2

    .line 1022
    aget-object v7, v6, v8

    .line 1023
    .line 1024
    add-int/2addr v3, v11

    .line 1025
    int-to-float v8, v2

    .line 1026
    mul-float/2addr v8, v9

    .line 1027
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1028
    .line 1029
    sub-float v8, v11, v8

    .line 1030
    .line 1031
    aput v8, v7, v14

    .line 1032
    .line 1033
    const/4 v7, 0x1

    .line 1034
    :goto_e
    add-int/2addr v5, v7

    .line 1035
    int-to-short v5, v5

    .line 1036
    const/16 v8, 0x4c

    .line 1037
    .line 1038
    goto/16 :goto_7

    .line 1039
    .line 1040
    :cond_14
    const/4 v7, 0x1

    .line 1041
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1042
    .line 1043
    const/high16 v16, 0x3f000000    # 0.5f

    .line 1044
    .line 1045
    add-int/2addr v2, v7

    .line 1046
    int-to-short v2, v2

    .line 1047
    const/16 v8, 0x4c

    .line 1048
    .line 1049
    goto/16 :goto_6

    .line 1050
    .line 1051
    :cond_15
    const/4 v7, 0x1

    .line 1052
    const/4 v1, 0x0

    .line 1053
    const/4 v2, 0x0

    .line 1054
    const/16 v3, 0x4b

    .line 1055
    .line 1056
    :goto_f
    if-ge v1, v3, :cond_17

    .line 1057
    .line 1058
    move/from16 v5, v28

    .line 1059
    .line 1060
    const/4 v4, 0x0

    .line 1061
    :goto_10
    if-ge v4, v5, :cond_16

    .line 1062
    .line 1063
    add-int/lit8 v8, v2, 0x1

    .line 1064
    .line 1065
    mul-int v9, v1, v12

    .line 1066
    .line 1067
    add-int v10, v9, v4

    .line 1068
    .line 1069
    int-to-short v10, v10

    .line 1070
    aput-short v10, v15, v2

    .line 1071
    .line 1072
    const/4 v10, 0x2

    .line 1073
    add-int/lit8 v11, v2, 0x2

    .line 1074
    .line 1075
    add-int/lit8 v10, v1, 0x1

    .line 1076
    .line 1077
    mul-int/2addr v10, v12

    .line 1078
    add-int v14, v10, v4

    .line 1079
    .line 1080
    int-to-short v14, v14

    .line 1081
    aput-short v14, v15, v8

    .line 1082
    .line 1083
    const/4 v8, 0x3

    .line 1084
    add-int/lit8 v16, v2, 0x3

    .line 1085
    .line 1086
    add-int/2addr v4, v7

    .line 1087
    add-int/2addr v9, v4

    .line 1088
    int-to-short v7, v9

    .line 1089
    aput-short v7, v15, v11

    .line 1090
    .line 1091
    const/4 v8, 0x4

    .line 1092
    add-int/lit8 v9, v2, 0x4

    .line 1093
    .line 1094
    aput-short v7, v15, v16

    .line 1095
    .line 1096
    const/4 v7, 0x5

    .line 1097
    add-int/lit8 v11, v2, 0x5

    .line 1098
    .line 1099
    aput-short v14, v15, v9

    .line 1100
    .line 1101
    const/4 v7, 0x6

    .line 1102
    add-int/2addr v2, v7

    .line 1103
    add-int/2addr v10, v4

    .line 1104
    int-to-short v7, v10

    .line 1105
    aput-short v7, v15, v11

    .line 1106
    .line 1107
    int-to-short v4, v4

    .line 1108
    const/4 v7, 0x1

    .line 1109
    goto :goto_10

    .line 1110
    :cond_16
    move v4, v7

    .line 1111
    add-int/2addr v1, v4

    .line 1112
    int-to-short v1, v1

    .line 1113
    move/from16 v28, v5

    .line 1114
    .line 1115
    const/4 v7, 0x1

    .line 1116
    goto :goto_f

    .line 1117
    :cond_17
    iget v1, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mVRModel:I

    .line 1118
    .line 1119
    const/4 v2, 0x3

    .line 1120
    if-ne v1, v2, :cond_18

    .line 1121
    .line 1122
    const/16 v1, 0xc

    .line 1123
    .line 1124
    new-array v1, v1, [F

    .line 1125
    .line 1126
    fill-array-data v1, :array_3

    .line 1127
    .line 1128
    .line 1129
    iput-object v1, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCubeTexOffsetPerFace:[F

    .line 1130
    .line 1131
    const/16 v1, 0x18

    .line 1132
    .line 1133
    new-array v1, v1, [F

    .line 1134
    .line 1135
    fill-array-data v1, :array_4

    .line 1136
    .line 1137
    .line 1138
    iput-object v1, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mCubeRotatesPerFace:[F

    .line 1139
    .line 1140
    :cond_18
    move-object v8, v15

    .line 1141
    move-object/from16 v5, v17

    .line 1142
    .line 1143
    const/4 v2, 0x4

    .line 1144
    const/4 v3, 0x0

    .line 1145
    goto/16 :goto_11

    .line 1146
    .line 1147
    :cond_19
    if-nez p1, :cond_1a

    .line 1148
    .line 1149
    const/4 v1, -0x1

    .line 1150
    return v1

    .line 1151
    :cond_1a
    sget v1, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRadius:F

    .line 1152
    .line 1153
    float-to-double v1, v1

    .line 1154
    iget v3, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mPerspecView:F

    .line 1155
    .line 1156
    const/high16 v4, 0x41700000    # 15.0f

    .line 1157
    .line 1158
    sub-float/2addr v3, v4

    .line 1159
    const/high16 v4, 0x40000000    # 2.0f

    .line 1160
    .line 1161
    div-float/2addr v3, v4

    .line 1162
    const/high16 v4, 0x43340000    # 180.0f

    .line 1163
    .line 1164
    div-float/2addr v3, v4

    .line 1165
    float-to-double v3, v3

    .line 1166
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    mul-double/2addr v3, v5

    .line 1172
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 1173
    .line 1174
    .line 1175
    move-result-wide v3

    .line 1176
    mul-double/2addr v1, v3

    .line 1177
    double-to-float v1, v1

    .line 1178
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 1179
    .line 1180
    .line 1181
    move-result v2

    .line 1182
    int-to-float v2, v2

    .line 1183
    mul-float/2addr v2, v1

    .line 1184
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 1185
    .line 1186
    .line 1187
    move-result v3

    .line 1188
    int-to-float v3, v3

    .line 1189
    div-float/2addr v2, v3

    .line 1190
    new-array v5, v14, [F

    .line 1191
    .line 1192
    neg-float v3, v2

    .line 1193
    const/4 v4, 0x0

    .line 1194
    aput v3, v5, v4

    .line 1195
    .line 1196
    neg-float v4, v1

    .line 1197
    const/4 v6, 0x1

    .line 1198
    aput v4, v5, v6

    .line 1199
    .line 1200
    sget v6, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mRadius:F

    .line 1201
    .line 1202
    neg-float v7, v6

    .line 1203
    const/4 v8, 0x2

    .line 1204
    aput v7, v5, v8

    .line 1205
    .line 1206
    const/4 v7, 0x3

    .line 1207
    aput v2, v5, v7

    .line 1208
    .line 1209
    const/4 v7, 0x4

    .line 1210
    aput v4, v5, v7

    .line 1211
    .line 1212
    neg-float v4, v6

    .line 1213
    const/4 v7, 0x5

    .line 1214
    aput v4, v5, v7

    .line 1215
    .line 1216
    const/4 v4, 0x6

    .line 1217
    aput v3, v5, v4

    .line 1218
    .line 1219
    aput v1, v5, v18

    .line 1220
    .line 1221
    neg-float v3, v6

    .line 1222
    const/16 v4, 0x8

    .line 1223
    .line 1224
    aput v3, v5, v4

    .line 1225
    .line 1226
    aput v2, v5, v17

    .line 1227
    .line 1228
    aput v1, v5, v16

    .line 1229
    .line 1230
    neg-float v1, v6

    .line 1231
    aput v1, v5, v15

    .line 1232
    .line 1233
    iget v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 1234
    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .line 1239
    .line 1240
    const-string/jumbo v3, "triangle ver:"

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    sget-object v3, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVerticesData:[F

    .line 1247
    .line 1248
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v3

    .line 1252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    const-string v3, "TR_GLPanoramaFilter"

    .line 1260
    .line 1261
    invoke-static {v1, v3, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    const/4 v1, 0x2

    .line 1265
    new-array v6, v1, [[F

    .line 1266
    .line 1267
    const/16 v2, 0x8

    .line 1268
    .line 1269
    new-array v2, v2, [F

    .line 1270
    .line 1271
    fill-array-data v2, :array_5

    .line 1272
    .line 1273
    .line 1274
    const/4 v3, 0x0

    .line 1275
    aput-object v2, v6, v3

    .line 1276
    .line 1277
    const/4 v2, 0x6

    .line 1278
    new-array v8, v2, [S

    .line 1279
    .line 1280
    aput-short v3, v8, v3

    .line 1281
    .line 1282
    const/4 v2, 0x1

    .line 1283
    aput-short v2, v8, v2

    .line 1284
    .line 1285
    aput-short v1, v8, v1

    .line 1286
    .line 1287
    const/4 v4, 0x3

    .line 1288
    aput-short v2, v8, v4

    .line 1289
    .line 1290
    const/4 v2, 0x4

    .line 1291
    aput-short v1, v8, v2

    .line 1292
    .line 1293
    const/4 v1, 0x5

    .line 1294
    aput-short v4, v8, v1

    .line 1295
    .line 1296
    :goto_11
    if-eqz v6, :cond_1d

    .line 1297
    .line 1298
    aget-object v1, v6, v3

    .line 1299
    .line 1300
    array-length v1, v1

    .line 1301
    mul-int/2addr v1, v2

    .line 1302
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    iput-object v1, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 1319
    .line 1320
    if-eqz v1, :cond_1b

    .line 1321
    .line 1322
    aget-object v2, v6, v3

    .line 1323
    .line 1324
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1329
    .line 1330
    .line 1331
    :cond_1b
    const/4 v1, 0x1

    .line 1332
    aget-object v2, v6, v1

    .line 1333
    .line 1334
    if-eqz v2, :cond_1c

    .line 1335
    .line 1336
    array-length v2, v2

    .line 1337
    const/4 v3, 0x4

    .line 1338
    mul-int/2addr v2, v3

    .line 1339
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v2

    .line 1343
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v3

    .line 1347
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v2

    .line 1351
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v2

    .line 1355
    iput-object v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTextureVerticesRight:Ljava/nio/FloatBuffer;

    .line 1356
    .line 1357
    if-eqz v2, :cond_1d

    .line 1358
    .line 1359
    aget-object v1, v6, v1

    .line 1360
    .line 1361
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v1

    .line 1365
    const/4 v2, 0x0

    .line 1366
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1367
    .line 1368
    .line 1369
    goto :goto_12

    .line 1370
    :cond_1c
    const/4 v1, 0x0

    .line 1371
    iput-object v1, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTextureVerticesRight:Ljava/nio/FloatBuffer;

    .line 1372
    .line 1373
    :cond_1d
    :goto_12
    if-eqz v5, :cond_1e

    .line 1374
    .line 1375
    array-length v1, v5

    .line 1376
    const/4 v2, 0x4

    .line 1377
    mul-int/2addr v1, v2

    .line 1378
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v1

    .line 1382
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v2

    .line 1386
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v1

    .line 1390
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v1

    .line 1394
    iput-object v1, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 1395
    .line 1396
    if-eqz v1, :cond_1e

    .line 1397
    .line 1398
    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v1

    .line 1402
    const/4 v2, 0x0

    .line 1403
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1404
    .line 1405
    .line 1406
    :cond_1e
    if-eqz v8, :cond_1f

    .line 1407
    .line 1408
    array-length v1, v8

    .line 1409
    const/4 v2, 0x2

    .line 1410
    mul-int/2addr v1, v2

    .line 1411
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v2

    .line 1419
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    iput-object v1, v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIndexBuffers:Ljava/nio/ShortBuffer;

    .line 1428
    .line 1429
    invoke-virtual {v1, v8}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v1

    .line 1433
    const/4 v2, 0x0

    .line 1434
    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1435
    .line 1436
    .line 1437
    goto :goto_13

    .line 1438
    :cond_1f
    const/4 v2, 0x0

    .line 1439
    :goto_13
    return v2

    .line 1440
    nop

    .line 1441
    :array_0
    .array-data 4
        0x0
        0x0
        0x3eaaaaab
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x3f2aaaab
        0x0
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x0
        0x3f2aaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x0
        0x3eaaaaab
        0x0
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    :array_2
    .array-data 4
        -0x41d55555
        0x0
        0x3e2aaaab
        0x0
        -0x41d55555
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f555555
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f555555
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x0
        0x3f2aaaab
        0x3f800000    # 1.0f
    .end array-data

    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    :array_3
    .array-data 4
        0x0
        0x0
        0x3eaaaaab
        0x0
        0x3f2aaaab
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3eaaaaab
        0x3f000000    # 0.5f
        0x3f2aaaab
        0x3f000000    # 0.5f
    .end array-data

    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    :array_5
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
