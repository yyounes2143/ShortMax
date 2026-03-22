package com.ss.texturerender;

import android.opengl.GLES20;
import android.util.Log;
import androidx.work.Data;
import com.ss.texturerender.Texture;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes6.dex */
public class TextureFactory implements Texture.OnTextureReturnListener {
    private static final String TAG = "TextureFactory";
    private TextureRenderer mTextureRenderer;
    private ArrayList<ITexture> mTextures = new ArrayList<>();

    public TextureFactory(TextureRenderer textureRenderer) {
        this.mTextureRenderer = textureRenderer;
    }

    private static int loadTexture(int i10) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i11 = iArr[0];
        if (i11 != 0) {
            if (i11 != 0) {
                GLES20.glBindTexture(i10, i11);
                GLES20.glTexParameteri(i10, 10242, 33071);
                GLES20.glTexParameteri(i10, 10243, 33071);
                if (i10 == 36197 && DeviceManager.isVRDevice()) {
                    GLES20.glTexParameteri(i10, 10241, 9728);
                    GLES20.glTexParameteri(i10, Data.MAX_DATA_BYTES, 9728);
                } else {
                    GLES20.glTexParameteri(i10, 10241, 9729);
                    GLES20.glTexParameteri(i10, Data.MAX_DATA_BYTES, 9729);
                }
            }
            return iArr[0];
        }
        throw new RuntimeException("Error gen texture.");
    }

    public ITexture createTexture(int i10, int i11) {
        ITexture iTexture;
        synchronized (this.mTextures) {
            try {
                if (this.mTextures.size() > 0) {
                    Iterator<ITexture> it = this.mTextures.iterator();
                    while (it.hasNext()) {
                        iTexture = it.next();
                        if (iTexture.getTexTarget() == i10) {
                            it.remove();
                            Log.d(TAG, "reuse texture:" + iTexture + " texTarget:" + iTexture.getTexTarget());
                            break;
                        }
                    }
                }
                iTexture = null;
                if (iTexture == null) {
                    int loadTexture = loadTexture(i10);
                    iTexture = new Texture(loadTexture, i10, this, i11);
                    Log.i(TAG, "new Texture = " + iTexture + "id = " + loadTexture);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        iTexture.addRef();
        return iTexture;
    }

    @Override // com.ss.texturerender.Texture.OnTextureReturnListener
    public void onTextureReturn(ITexture iTexture) {
        synchronized (this.mTextures) {
            try {
                if (((Texture) iTexture).getForbidTextureReuse() > 0) {
                    TextureRenderer textureRenderer = this.mTextureRenderer;
                    if (textureRenderer != null) {
                        int texType = textureRenderer.texType();
                        TextureRenderLog.i(texType, TAG, "release texture = " + iTexture);
                    }
                    ((Texture) iTexture).release();
                } else {
                    TextureRenderer textureRenderer2 = this.mTextureRenderer;
                    if (textureRenderer2 != null) {
                        int texType2 = textureRenderer2.texType();
                        TextureRenderLog.i(texType2, TAG, "add texture = " + iTexture + "size = " + this.mTextures.size());
                    }
                    this.mTextures.add(iTexture);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void release() {
        synchronized (this.mTextures) {
            try {
                Iterator<ITexture> it = this.mTextures.iterator();
                while (it.hasNext()) {
                    ((Texture) it.next()).release();
                    it.remove();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
