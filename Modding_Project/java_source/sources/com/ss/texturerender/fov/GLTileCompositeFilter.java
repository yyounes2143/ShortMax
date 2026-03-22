package com.ss.texturerender.fov;

import android.opengl.GLES20;
import android.os.Bundle;
import androidx.work.Data;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.VideoSurfaceTexture;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.FrameBuffer;
import com.ss.texturerender.effect.GLDefaultFilter;
import java.nio.Buffer;
import java.util.Arrays;
import java.util.LinkedList;
import org.json.JSONException;
/* loaded from: classes6.dex */
public class GLTileCompositeFilter extends GLDefaultFilter {
    private static final String LOG_TAG = "GLTileCompositeFilter";
    private final String fragmentShader;
    private int mAntiColorHandle;
    private TileInfo mBackgroundTileInfos;
    private TileInfo[] mCurrTileInfos;
    private int mDecodedBackgroundTexHeight;
    private int mDecodedBackgroundTexWidth;
    private int mDepthZHandle;
    private int mGlobalClampHandle;
    private int mScaleOffsetHandle;
    private int mVertexScaleOffsetHandle;
    private final String vertexShader;

    public GLTileCompositeFilter(int i10) {
        super(i10, 18);
        this.vertexShader = "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nuniform float DepthZ;\nuniform vec2 globalClamp;\nuniform vec4 vertexScaleOffset;\nvoid main() {\n  vec2 positionXY = (vec2(aPosition.x, aPosition.y) / 2.0 + 0.5) * vertexScaleOffset.xy + vertexScaleOffset.zw;\n  positionXY = (positionXY - 0.5) * 2.0;\n  gl_Position = vec4(positionXY.x, positionXY.y, DepthZ, 1.0);\n  vTextureCoord = clamp(aTextureCoord.xy, vec2(globalClamp.x), vec2(globalClamp.y));\n}\n";
        this.fragmentShader = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec4 scaleOffset;\nuniform int antiColor;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord * scaleOffset.xy + scaleOffset.zw);\n  if (antiColor == 1) {\n      gl_FragColor.rgba = gl_FragColor.bgra;\n  }\n}\n";
        this.mBackgroundTileInfos = null;
        this.mCurrTileInfos = null;
        this.mDecodedBackgroundTexWidth = 0;
        this.mDecodedBackgroundTexHeight = 0;
        this.mOrder = 99;
    }

    private void drawBackground(TileInfo tileInfo) {
        int i10;
        int i11;
        int i12;
        TileInfo tileInfo2 = tileInfo;
        GLES20.glUniform1f(this.mDepthZHandle, 0.9f);
        GLES20.glUniform2f(this.mGlobalClampHandle, 3.0f / this.mDecodedBackgroundTexWidth, 1.0f - (3.0f / this.mDecodedBackgroundTexHeight));
        int i13 = 0;
        GLES20.glUniform1i(this.mAntiColorHandle, 0);
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i17 < tileInfo2.backgroundTileHeightCount) {
            int i18 = i14;
            int i19 = i15;
            int i20 = i16;
            int i21 = i13;
            int i22 = i21;
            while (true) {
                int i23 = tileInfo2.backgroundTileWidthCount;
                if (i21 < i23) {
                    if (i20 == i23 - 1) {
                        int i24 = tileInfo2.backgroundTileHeightCount;
                        int i25 = i20;
                        int i26 = i21;
                        i10 = i17;
                        i11 = i13;
                        drawTile(i23, i24, i23, i24, i19, i25, i18, i18, i22, i26, i10, i10, tileInfo2.tileWidth, tileInfo2.tileHeight, tileInfo.getDecodedFrameWidth(), tileInfo.getDecodedFrameHeight(), tileInfo2.paddingY, tileInfo.is3DInput());
                        i18++;
                        i22 = i26 + 1;
                        i12 = i26;
                        i19 = i11;
                    } else {
                        int i27 = i21;
                        i10 = i17;
                        i11 = i13;
                        if (i27 == i23 - 1) {
                            int i28 = tileInfo.backgroundTileHeightCount;
                            i12 = i27;
                            drawTile(i23, i28, i23, i28, i19, i20, i18, i18, i22, i27, i10, i10, tileInfo.tileWidth, tileInfo.tileHeight, tileInfo.getDecodedFrameWidth(), tileInfo.getDecodedFrameHeight(), tileInfo.paddingY, tileInfo.is3DInput());
                            i19 = i20 + 1;
                        } else {
                            i12 = i27;
                            i20++;
                            i21 = i12 + 1;
                            tileInfo2 = tileInfo;
                            i17 = i10;
                            i13 = i11;
                        }
                    }
                    i20 = i19;
                    i21 = i12 + 1;
                    tileInfo2 = tileInfo;
                    i17 = i10;
                    i13 = i11;
                }
            }
            i17++;
            tileInfo2 = tileInfo;
            i15 = i19;
            i14 = i18;
            i16 = i20;
        }
    }

    private void drawOverlay(TileInfo tileInfo) {
        int i10;
        int i11;
        int[] iArr;
        int i12;
        TileInfo tileInfo2 = tileInfo;
        GLES20.glUniform1f(this.mDepthZHandle, 0.1f);
        GLES20.glUniform2f(this.mGlobalClampHandle, 0.0f, 1.0f);
        GLES20.glUniform1i(this.mAntiColorHandle, 1);
        int length = tileInfo2.visibleArray.length();
        int[] iArr2 = new int[length];
        int i13 = 0;
        while (true) {
            i10 = -1;
            if (i13 >= tileInfo2.visibleArray.length()) {
                break;
            }
            try {
                iArr2[i13] = tileInfo2.visibleArray.getInt(i13);
            } catch (JSONException e10) {
                iArr2[i13] = -1;
                e10.printStackTrace();
            }
            i13++;
        }
        int i14 = 0;
        while (i14 < length) {
            int i15 = iArr2[i14];
            if (i15 == i10) {
                iArr = iArr2;
                i11 = i10;
                i12 = length;
            } else {
                int i16 = tileInfo2.srcTileWidthCount;
                int i17 = i14 / i16;
                int i18 = i14 % i16;
                int i19 = tileInfo2.dstTileWidthCount;
                int i20 = i15 / i19;
                int i21 = i15 % i19;
                i11 = i10;
                iArr = iArr2;
                i12 = length;
                drawTile(i16, tileInfo2.srcTileHeightCount, i19, tileInfo2.dstTileHeightCount, i18, i18, i17, i17, i21, i21, i20, i20, tileInfo2.tileWidth, tileInfo2.tileHeight, tileInfo.getDecodedFrameWidth(), tileInfo.getDecodedFrameHeight(), tileInfo2.paddingY, tileInfo.is3DInput());
            }
            i14++;
            tileInfo2 = tileInfo;
            i10 = i11;
            iArr2 = iArr;
            length = i12;
        }
    }

    private void drawTile(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, boolean z10) {
        float f10 = i10;
        float f11 = ((i15 - i14) + 1) / f10;
        float f12 = i11;
        float f13 = ((i17 - i16) + 1) / f12;
        float f14 = i14 / f10;
        float f15 = i16 / f12;
        float f16 = i12;
        float f17 = ((i19 - i18) + 1) / f16;
        float f18 = i13;
        float f19 = ((i21 - i20) + 1) / f18;
        float f20 = i18 / f16;
        float f21 = ((i13 - i20) - 1) / f18;
        if (z10) {
            float f22 = i26;
            float f23 = (f13 * (1.0f - (f22 / i23))) / 2.0f;
            float f24 = f22 / 4.0f;
            float f25 = i25;
            GLES20.glUniform4f(this.mScaleOffsetHandle, f11, f23, f14, (f24 / f25) + f15);
            float f26 = f21 / 2.0f;
            float f27 = f19 / 2.0f;
            GLES20.glUniform4f(this.mVertexScaleOffsetHandle, f17, (-f19) / 2.0f, f20, f26 + 0.5f + f27);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glUniform4f(this.mScaleOffsetHandle, f11, f23, f14, f15 + f23 + ((f24 * 3.0f) / f25));
            GLES20.glUniform4f(this.mVertexScaleOffsetHandle, f17, f27, f20, f26);
            GLES20.glDrawArrays(5, 0, 4);
            return;
        }
        float f28 = i26;
        GLES20.glUniform4f(this.mScaleOffsetHandle, f11, f13 * (1.0f - (f28 / i23)), f14, f15 + ((f28 / 2.0f) / i25));
        GLES20.glUniform4f(this.mVertexScaleOffsetHandle, f17, -f19, f20, f21 + f19);
        GLES20.glDrawArrays(5, 0, 4);
    }

    private void updateMappingInfo(long j10) {
        VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
        LinkedList<VideoSurfaceTexture.FrameMetaData> frameMetaData = videoSurfaceTexture.getFrameMetaData(videoSurfaceTexture.getTimestamp(), j10);
        if (frameMetaData != null) {
            for (int i10 = 0; i10 < frameMetaData.size(); i10++) {
                String stringifiedTileInfo = frameMetaData.get(i10).getStringifiedTileInfo();
                TileInfo updateTileInfo = updateTileInfo(stringifiedTileInfo);
                int i11 = updateTileInfo.streamIndex;
                if (i11 == 0) {
                    this.mBackgroundTileInfos = updateTileInfo;
                } else {
                    this.mCurrTileInfos[i11 - 1] = updateTileInfo;
                }
                int i12 = this.mTexType;
                TextureRenderLog.d(i12, LOG_TAG, "debug -> tile info " + stringifiedTileInfo);
            }
            return;
        }
        updateTileInfo(null);
        int i13 = this.mTexType;
        TextureRenderLog.d(i13, LOG_TAG, "debug -> frameMetaData not found, ts " + this.mSurfaceTexture.getTimestamp());
    }

    private TileInfo updateTileInfo(String str) {
        if (str != null && !str.isEmpty()) {
            return TileInfo.create(str);
        }
        return null;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public String getStringOption(int i10) {
        if (i10 != 11000) {
            if (i10 != 11001) {
                return super.getStringOption(i10);
            }
            return "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec4 scaleOffset;\nuniform int antiColor;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord * scaleOffset.xy + scaleOffset.zw);\n  if (antiColor == 1) {\n      gl_FragColor.rgba = gl_FragColor.bgra;\n  }\n}\n";
        }
        return "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nuniform float DepthZ;\nuniform vec2 globalClamp;\nuniform vec4 vertexScaleOffset;\nvoid main() {\n  vec2 positionXY = (vec2(aPosition.x, aPosition.y) / 2.0 + 0.5) * vertexScaleOffset.xy + vertexScaleOffset.zw;\n  positionXY = (positionXY - 0.5) * 2.0;\n  gl_Position = vec4(positionXY.x, positionXY.y, DepthZ, 1.0);\n  vTextureCoord = clamp(aTextureCoord.xy, vec2(globalClamp.x), vec2(globalClamp.y));\n}\n";
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        super.init(bundle);
        this.mInTextureTarget = 36197;
        this.mVertexScaleOffsetHandle = GLES20.glGetUniformLocation(this.mProgram, "vertexScaleOffset");
        this.mDepthZHandle = GLES20.glGetUniformLocation(this.mProgram, "DepthZ");
        this.mScaleOffsetHandle = GLES20.glGetUniformLocation(this.mProgram, "scaleOffset");
        this.mGlobalClampHandle = GLES20.glGetUniformLocation(this.mProgram, "globalClamp");
        this.mAntiColorHandle = GLES20.glGetUniformLocation(this.mProgram, "antiColor");
        this.mLayoutMode = 0;
        return 0;
    }

    @Override // com.ss.texturerender.effect.GLDefaultFilter, com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        int length = effectTexture.getExtraEffectTexture().length;
        TileInfo[] tileInfoArr = this.mCurrTileInfos;
        if (tileInfoArr == null || tileInfoArr.length != length) {
            this.mCurrTileInfos = new TileInfo[length];
        }
        this.mBackgroundTileInfos = null;
        Arrays.fill(this.mCurrTileInfos, (Object) null);
        updateMappingInfo(length + 1);
        TileInfo tileInfo = this.mBackgroundTileInfos;
        if (tileInfo != null && (this.mDecodedBackgroundTexWidth != tileInfo.getBackgroundTexWidth() || this.mDecodedBackgroundTexHeight != this.mBackgroundTileInfos.getBackgroundTexHeight())) {
            this.mDecodedBackgroundTexWidth = this.mBackgroundTileInfos.getBackgroundTexWidth();
            this.mDecodedBackgroundTexHeight = this.mBackgroundTileInfos.getBackgroundTexHeight();
        }
        this.mOutTexWidth = this.mSurfaceTexture.getTexWidth();
        this.mOutTexHeight = this.mSurfaceTexture.getTexHeight();
        if (effectTexture.getTexTarget() != this.mInTextureTarget) {
            TextureRenderLog.d(this.mTexType, getClass().getSimpleName(), "error, texture miss match, accept:" + this.mInTextureTarget + ",in:" + effectTexture.getTexTarget());
            return effectTexture;
        }
        this.mSurfaceTexture.currentEffectProcessBegin(this.mEffectType);
        if (updateRenderParam(effectTexture, null) == -1) {
            updateDefaultRenderParam(effectTexture, null);
        }
        GLES20.glUseProgram(this.mProgram);
        if (this.mNeedClear) {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            GLES20.glClear(16384);
        }
        this.mTriangleVertices.position(this.TRIANGLE_VERTICES_DATA_POS_OFFSET);
        GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, this.TRIANGLE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTriangleVertices);
        GLES20.glEnableVertexAttribArray(this.maPositionHandle);
        this.mTextureVertices.position(this.TRIANGLE_VERTICES_DATA_UV_OFFSET);
        GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, this.TEXTURE_VERTICES_DATA_STRIDE_BYTES, (Buffer) this.mTextureVertices);
        GLES20.glEnableVertexAttribArray(this.maTextureHandle);
        onDrawFrameBefore();
        GLES20.glViewport(this.mViewPortX, this.mViewPortY, this.mViewPortWidth, this.mViewPortHeight);
        if (this.mBackgroundTileInfos != null) {
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(this.mInTextureTarget, effectTexture.getTexID());
            GLES20.glUniform1i(this.mInputTextureHandle, 0);
            GLES20.glTexParameteri(this.mInTextureTarget, 10241, 9729);
            GLES20.glTexParameteri(this.mInTextureTarget, Data.MAX_DATA_BYTES, 9729);
            drawBackground(this.mBackgroundTileInfos);
        }
        int i10 = 0;
        while (true) {
            TileInfo[] tileInfoArr2 = this.mCurrTileInfos;
            if (i10 < tileInfoArr2.length) {
                if (tileInfoArr2[i10] != null) {
                    GLES20.glActiveTexture(33984);
                    GLES20.glBindTexture(this.mInTextureTarget, effectTexture.getExtraEffectTexture()[i10].getTexID());
                    GLES20.glUniform1i(this.mInputTextureHandle, 0);
                    GLES20.glTexParameteri(this.mInTextureTarget, 10241, 9728);
                    GLES20.glTexParameteri(this.mInTextureTarget, Data.MAX_DATA_BYTES, 9728);
                    drawOverlay(this.mCurrTileInfos[i10]);
                }
                i10++;
            } else {
                onDrawFrameAfter();
                GLES20.glBindTexture(this.mInTextureTarget, 0);
                GLES20.glDisableVertexAttribArray(this.maPositionHandle);
                GLES20.glDisableVertexAttribArray(this.maTextureHandle);
                this.mSurfaceTexture.setOption(19, this.mEffectType, 1);
                effectTexture.giveBack();
                GLES20.glFinish();
                this.mSurfaceTexture.currentEffectProcessEnd(this.mEffectType);
                return null;
            }
        }
    }
}
