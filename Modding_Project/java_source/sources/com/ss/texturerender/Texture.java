package com.ss.texturerender;

import android.opengl.GLES20;
import android.util.AndroidRuntimeException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class Texture implements ITexture {
    private static final String TAG = "ITexture";
    private int mForbidTextureReuse = 0;
    private ReentrantLock mLock;
    private IRef mRef;
    private int mTexTarget;
    private int mTexType;
    private int mTextureId;
    private OnTextureReturnListener mTextureReturnListener;

    /* loaded from: classes6.dex */
    public interface OnTextureReturnListener {
        void onTextureReturn(ITexture iTexture);
    }

    public Texture(int i10, int i11, OnTextureReturnListener onTextureReturnListener, int i12) {
        this.mTexType = i12;
        TextureRenderLog.i(i12, TAG, "new texture = " + i10);
        this.mTextureId = i10;
        this.mTextureReturnListener = onTextureReturnListener;
        this.mRef = new Ref();
        this.mLock = new ReentrantLock();
        this.mTexTarget = i11;
    }

    @Override // com.ss.texturerender.IRef
    public int addRef() {
        int addRef = this.mRef.addRef();
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + " add ref " + addRef);
        return addRef;
    }

    @Override // com.ss.texturerender.IRef
    public int decRef() {
        int decRef = this.mRef.decRef();
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + " dec ref " + decRef);
        if (decRef == 1) {
            this.mTextureReturnListener.onTextureReturn(this);
            return 0;
        } else if (decRef >= 1) {
            return 0;
        } else {
            throw new RuntimeException(new Exception("reference idx " + (decRef - 1) + " app abort!!"));
        }
    }

    public int getForbidTextureReuse() {
        return this.mForbidTextureReuse;
    }

    @Override // com.ss.texturerender.ITexture
    public int getTexTarget() {
        return this.mTexTarget;
    }

    @Override // com.ss.texturerender.ITexture
    public int lock() {
        if (!this.mLock.isHeldByCurrentThread()) {
            this.mLock.lock();
            return this.mTextureId;
        }
        throw new AndroidRuntimeException("Dead lock!!");
    }

    @Override // com.ss.texturerender.IRef
    public int refCnt() {
        return this.mRef.refCnt();
    }

    public void release() {
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, this + "release = " + this.mTextureId);
        lock();
        GLES20.glDeleteTextures(1, new int[]{this.mTextureId}, 0);
        unlock();
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, TAG, this + "release end = " + this.mTextureId);
    }

    public void setForbidTextureReuse(int i10) {
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, TAG, this + ", setForbidTextureReuse: " + i10);
        this.mForbidTextureReuse = i10;
    }

    @Override // com.ss.texturerender.ITexture
    public int tryLock(int i10) {
        try {
            if (!this.mLock.tryLock(i10, TimeUnit.MILLISECONDS)) {
                return -1;
            }
            return this.mTextureId;
        } catch (InterruptedException unused) {
            return -1;
        }
    }

    @Override // com.ss.texturerender.ITexture
    public void unlock() {
        this.mLock.unlock();
    }
}
