package com.ss.texturerender.producer;

import android.hardware.HardwareBuffer;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import androidx.annotation.Keep;
import androidx.annotation.RequiresApi;
import com.ss.texturerender.IFrameAvailableListener;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.EffectTextureManager;
@RequiresApi(api = 28)
/* loaded from: classes6.dex */
public class ImageReaderProducer implements IFrameProducer, ImageReader.OnImageAvailableListener {
    public static final int IMAGEREADER_STATUS = 1;
    public static final int IMAGEREADER_STATUS_CLOSE = 1;
    public static final int IMAGEREADER_STATUS_OPEN = 2;
    public static final int IMAGEREADER_STATUS_UNKNOWN = 0;
    private static final float[] MatrixFlipV = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
    private static final String TAG = "TR_ImageReaderProducer";
    private IFrameAvailableListener mFrameAvailableListener;
    private ImageReader mImageReader;
    private int mTexType;
    private volatile Image mCurImage = null;
    private EffectTexture mEffectTexture = null;
    private volatile boolean mIsRelease = false;
    private volatile int mStatus = 0;

    public ImageReaderProducer(int i10) {
        this.mTexType = i10;
    }

    private void _updateImage() {
        Exception e10;
        Image image;
        ImageReader imageReader = this.mImageReader;
        if (imageReader == null) {
            return;
        }
        try {
            image = imageReader.acquireNextImage();
            if (image != null) {
                try {
                    if (this.mCurImage != null) {
                        this.mCurImage.close();
                        this.mCurImage = null;
                    }
                    if (!this.mIsRelease && this.mStatus != 1) {
                        this.mCurImage = image;
                        return;
                    }
                    image.close();
                } catch (Exception e11) {
                    e10 = e11;
                    TextureRenderLog.e(this.mTexType, TAG, e10.toString());
                    if (image != null) {
                        image.close();
                    }
                }
            }
        } catch (Exception e12) {
            e10 = e12;
            image = null;
        }
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public EffectTexture getEffectTexture() {
        HardwareBuffer hardwareBuffer;
        int format;
        if (this.mImageReader != null && !this.mIsRelease) {
            if (this.mCurImage == null) {
                _updateImage();
            }
            if (this.mCurImage != null) {
                try {
                    hardwareBuffer = this.mCurImage.getHardwareBuffer();
                    if (hardwareBuffer != null) {
                        int width = this.mCurImage.getWidth();
                        int height = this.mCurImage.getHeight();
                        format = hardwareBuffer.getFormat();
                        this.mEffectTexture = new EffectTexture((EffectTextureManager) null, hardwareBuffer, width, height, format);
                    }
                } catch (Exception e10) {
                    int i10 = this.mTexType;
                    TextureRenderLog.e(i10, TAG, "getEffectTexture,e:" + e10.toString());
                }
            }
            return this.mEffectTexture;
        }
        return null;
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public int getProducerType() {
        return 2;
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public long getTimestamp() {
        if (this.mCurImage != null) {
            try {
                return this.mCurImage.getTimestamp();
            } catch (Exception unused) {
                return 0L;
            }
        }
        return 0L;
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public void getTransformMatrix(float[] fArr) {
        for (int i10 = 0; i10 < 16; i10++) {
            fArr[i10] = MatrixFlipV[i10];
        }
    }

    @Override // android.media.ImageReader.OnImageAvailableListener
    public void onImageAvailable(ImageReader imageReader) {
        if (this.mStatus == 1) {
            return;
        }
        this.mImageReader = imageReader;
        _updateImage();
        IFrameAvailableListener iFrameAvailableListener = this.mFrameAvailableListener;
        if (iFrameAvailableListener != null) {
            iFrameAvailableListener.onFrameAvailable();
        }
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public void release() {
        this.mIsRelease = true;
        this.mImageReader = null;
        this.mFrameAvailableListener = null;
        this.mEffectTexture = null;
        if (this.mCurImage != null) {
            try {
                this.mCurImage.close();
                this.mCurImage = null;
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public void releaseOffScreenSurface() {
        release();
    }

    @Keep
    public void setIntOption(int i10, int i11) {
        if (i10 == 1) {
            this.mStatus = i11;
            int i12 = this.mTexType;
            TextureRenderLog.d(i12, TAG, "set status:" + this.mStatus + "image:" + this.mCurImage + ",this:" + this);
            if (i11 == 1 && this.mCurImage != null) {
                this.mCurImage.close();
                this.mCurImage = null;
            }
        }
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public void setOnFrameAvailableListener(IFrameAvailableListener iFrameAvailableListener, Handler handler) {
        this.mFrameAvailableListener = iFrameAvailableListener;
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public void updateImage() {
    }

    @Override // com.ss.texturerender.producer.IFrameProducer
    public void updateTexDimension(int i10, int i11) {
    }
}
