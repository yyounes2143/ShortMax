package com.ss.texturerender.effect;

import android.opengl.GLES20;
import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
/* loaded from: classes6.dex */
public class GLSelectiveGaussianBlurFilterOptMerge extends GLDefaultFilter {
    private static final String LOG_TAG = "TR_GLSelectiveGaussianBlurFilterOptMerge";
    private float mEdgeSize;
    private int mEdgeSizeLoc;
    private int mGaussBlurTexLoc;
    private EffectTexture mGaussianBlurTex;
    public int mHeightFit;
    private int mHeightFitLoc;
    protected float[] mLayoutCoord;
    private int mLayoutCoordLoc;
    private int mOffsetPixelInGauBlurTex;
    private int mOffsetPixelLoc;
    protected int mSurfaceHeight;
    protected int mSurfaceWidth;
    private final String selectiveGaussianBlurMergeShader;

    public GLSelectiveGaussianBlurFilterOptMerge(int i10) {
        super(i10, 15);
        this.selectiveGaussianBlurMergeShader = "precision mediump float;  \nvarying vec2 vTextureCoord;  \nuniform sampler2D sTexture;  \nuniform sampler2D sTextureGauBlur; \nuniform vec4 layoutCoord;//x,y,w,h  \nuniform float edgeSize; //gaublur gradient length  \nuniform int heightFit;  \nuniform float offsetPixel;\nfloat pointToBoxDistance(float v, float minValue, float maxValue, float edge) {\n    float distance = smoothstep(0.0, edge, abs(abs(v - (minValue + maxValue) / 2.0) - (maxValue - minValue) / 2.0));\n    return distance;\n}\n// return 1 if v inside the box, return 0 otherwise  \nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {  \n    vec2 s = step(bottomLeft, v) - (vec2(1.0,1.0) - step(v, topRight));  \n    return s.x * s.y;     \n}\nvoid main() {\n    vec2 mapTex1Coord =\n        vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x + layoutCoord.z, layoutCoord.y + layoutCoord.w);\n    if (heightFit == 1)\n    {\n        if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            float edgeInGasblurTexPersent = 1.0 / (oriBoxBottomLeft.y + (1.0 - oriBoxTopRight.y)) * edgeSize;\n            vec4 finalColor = texture2D(sTexture, mapTex1Coord);\n            if (vTextureCoord.y > oriBoxTopRight.y - edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxTopRight.y) / edgeSize * edgeInGasblurTexPersent) + offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else if (vTextureCoord.y < oriBoxBottomLeft.y + edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxBottomLeft.y) / edgeSize * edgeInGasblurTexPersent) - offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else {\n                finalColor = finalColor;\n            }\n            gl_FragColor = finalColor;\n            return;\n        } else {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (mapTex1Coord.y < 0.0) {\n                float mapTex2Coordy = vTextureCoord.y / layoutCoord.y * middleY - offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            } else if (mapTex1Coord.y >= 1.0) {\n                float mapTex2Coordy =\n                    (vTextureCoord.y - layoutCoord.y - layoutCoord.w) / (1.0 - layoutCoord.y - layoutCoord.w) * (1.0 - middleY) + middleY + offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            }\n        }\n    } else {\n        \n    }\n}";
        this.mEdgeSize = 0.01f;
        this.mLayoutCoord = null;
        this.mGaussianBlurTex = null;
        this.mHeightFit = 0;
        this.mLayoutCoordLoc = -1;
        this.mEdgeSizeLoc = -1;
        this.mHeightFitLoc = -1;
        this.mGaussBlurTexLoc = -1;
        this.mOffsetPixelInGauBlurTex = 20;
        this.mOffsetPixelLoc = -1;
        this.mSurfaceHeight = -1;
        this.mSurfaceWidth = -1;
        this.mOrder = 6;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new GLGaussianBlurFilterMerge,this:" + this);
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11001) {
            return super.getStringOption(i10);
        }
        return "precision mediump float;  \nvarying vec2 vTextureCoord;  \nuniform sampler2D sTexture;  \nuniform sampler2D sTextureGauBlur; \nuniform vec4 layoutCoord;//x,y,w,h  \nuniform float edgeSize; //gaublur gradient length  \nuniform int heightFit;  \nuniform float offsetPixel;\nfloat pointToBoxDistance(float v, float minValue, float maxValue, float edge) {\n    float distance = smoothstep(0.0, edge, abs(abs(v - (minValue + maxValue) / 2.0) - (maxValue - minValue) / 2.0));\n    return distance;\n}\n// return 1 if v inside the box, return 0 otherwise  \nfloat insideBox(vec2 v, vec2 bottomLeft, vec2 topRight) {  \n    vec2 s = step(bottomLeft, v) - (vec2(1.0,1.0) - step(v, topRight));  \n    return s.x * s.y;     \n}\nvoid main() {\n    vec2 mapTex1Coord =\n        vec2((vTextureCoord.x - layoutCoord.x) / layoutCoord.z, (vTextureCoord.y - layoutCoord.y) / layoutCoord.w);\n    vec2 oriBoxBottomLeft = vec2(layoutCoord.x, layoutCoord.y);\n    vec2 oriBoxTopRight = vec2(layoutCoord.x + layoutCoord.z, layoutCoord.y + layoutCoord.w);\n    if (heightFit == 1)\n    {\n        if (insideBox(vTextureCoord, oriBoxBottomLeft, oriBoxTopRight) > 0.5) {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            float edgeInGasblurTexPersent = 1.0 / (oriBoxBottomLeft.y + (1.0 - oriBoxTopRight.y)) * edgeSize;\n            vec4 finalColor = texture2D(sTexture, mapTex1Coord);\n            if (vTextureCoord.y > oriBoxTopRight.y - edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxTopRight.y) / edgeSize * edgeInGasblurTexPersent) + offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else if (vTextureCoord.y < oriBoxBottomLeft.y + edgeSize) {\n                vec2 gaussCoord = vec2(vTextureCoord.x, middleY - ((vTextureCoord.y - oriBoxBottomLeft.y) / edgeSize * edgeInGasblurTexPersent) - offsetPixel);\n                vec4 gaublurColor = texture2D(sTextureGauBlur, gaussCoord);\n                float oriColorPersent = pointToBoxDistance(vTextureCoord.y, oriBoxBottomLeft.y, oriBoxTopRight.y, edgeSize);\n                finalColor = oriColorPersent * finalColor + (1.0 - oriColorPersent) * gaublurColor;\n            } else {\n                finalColor = finalColor;\n            }\n            gl_FragColor = finalColor;\n            return;\n        } else {\n            float middleY = layoutCoord.y / (1.0 - layoutCoord.w);\n            if (mapTex1Coord.y < 0.0) {\n                float mapTex2Coordy = vTextureCoord.y / layoutCoord.y * middleY - offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            } else if (mapTex1Coord.y >= 1.0) {\n                float mapTex2Coordy =\n                    (vTextureCoord.y - layoutCoord.y - layoutCoord.w) / (1.0 - layoutCoord.y - layoutCoord.w) * (1.0 - middleY) + middleY + offsetPixel;\n                gl_FragColor = texture2D(sTextureGauBlur, vec2(vTextureCoord.x, mapTex2Coordy));\n                return;\n            }\n        }\n    } else {\n        \n    }\n}";
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        this.mInTextureTarget = 3553;
        this.mEdgeSize = bundle.getFloat(TextureRenderKeys.KEY_IS_EDGE_SIZE, 0.01f);
        if (this.mLayoutCoord == null) {
            this.mLayoutCoord = new float[4];
        }
        int init = super.init(bundle);
        if (init == 0) {
            this.mLayoutCoordLoc = GLES20.glGetUniformLocation(this.mProgram, "layoutCoord");
            this.mEdgeSizeLoc = GLES20.glGetUniformLocation(this.mProgram, "edgeSize");
            this.mHeightFitLoc = GLES20.glGetUniformLocation(this.mProgram, "heightFit");
            this.mGaussBlurTexLoc = GLES20.glGetUniformLocation(this.mProgram, "sTextureGauBlur");
            this.mOffsetPixelLoc = GLES20.glGetUniformLocation(this.mProgram, "offsetPixel");
        }
        GLES20.glUseProgram(this.mProgram);
        int i10 = this.mEdgeSizeLoc;
        if (i10 >= 0) {
            GLES20.glUniform1f(i10, this.mEdgeSize);
        }
        return init;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameAfter() {
        GLES20.glBindTexture(this.mInTextureTarget, 0);
        return super.onDrawFrameAfter();
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int onDrawFrameBefore() {
        float f10;
        int i10 = this.mHeightFitLoc;
        if (i10 >= 0) {
            GLES20.glUniform1i(i10, this.mHeightFit);
        }
        if (this.mGaussBlurTexLoc >= 0) {
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(this.mInTextureTarget, this.mGaussianBlurTex.getTexID());
            GLES20.glUniform1i(this.mGaussBlurTexLoc, 1);
        }
        int i11 = this.mLayoutCoordLoc;
        if (i11 >= 0) {
            float[] fArr = this.mLayoutCoord;
            GLES20.glUniform4f(i11, fArr[0], fArr[1], fArr[2], fArr[3]);
        }
        int i12 = this.mEdgeSizeLoc;
        if (i12 >= 0) {
            GLES20.glUniform1f(i12, this.mEdgeSize);
        }
        if (this.mOffsetPixelLoc >= 0) {
            EffectTexture effectTexture = this.mGaussianBlurTex;
            if (effectTexture != null && this.mHeightFit == 1 && effectTexture.getHeight() != 0) {
                f10 = (1.0f / this.mGaussianBlurTex.getHeight()) * this.mOffsetPixelInGauBlurTex;
            } else {
                f10 = 0.0f;
            }
            GLES20.glUniform1f(this.mOffsetPixelLoc, f10);
        }
        return super.onDrawFrameBefore();
    }

    public void setGaussianBlurTexture(EffectTexture effectTexture) {
        this.mGaussianBlurTex = effectTexture;
    }

    public void setLayoutCoord(float[] fArr) {
        this.mLayoutCoord = fArr;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter
    public int updateRenderParam(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        int i10 = this.mSurfaceWidth;
        this.mViewPortWidth = i10;
        int i11 = this.mSurfaceHeight;
        this.mViewPortHeight = i11;
        this.mViewPortY = 0;
        this.mViewPortX = 0;
        this.mOutTexHeight = i11;
        this.mOutTexWidth = i10;
        return 0;
    }

    public void updateSurfaceViewPortSize(int i10, int i11) {
        this.mSurfaceWidth = i10;
        this.mSurfaceHeight = i11;
    }
}
