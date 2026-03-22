package com.ss.texturerender.effect;

import android.hardware.HardwareBuffer;
import android.opengl.GLES20;
import androidx.work.Data;
/* loaded from: classes6.dex */
public class EffectTexture {
    private EffectTexture[] extraEffectTextures;
    private int format;
    private HardwareBuffer hardwareBuffer;
    private int height;
    private int internalFormat;
    private FilterType mMagFilterType;
    private FilterType mMinFilterType;
    private EffectTextureManager manager;
    private int sourceType;
    private int texID;
    private int texTarget;
    private int type;
    private int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.texturerender.effect.EffectTexture$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType;

        static {
            int[] iArr = new int[FilterType.values().length];
            $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType = iArr;
            try {
                iArr[FilterType.LINEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType[FilterType.NEAREST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType[FilterType.LINEAR_MIPMAP_LINEAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType[FilterType.LINEAR_MIPMAP_NEAREST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType[FilterType.NEAREST_MIPMAP_LINEAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType[FilterType.NEAREST_MIPMAP_NEAREST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public enum FilterType {
        LINEAR,
        NEAREST,
        LINEAR_MIPMAP_LINEAR,
        LINEAR_MIPMAP_NEAREST,
        NEAREST_MIPMAP_LINEAR,
        NEAREST_MIPMAP_NEAREST
    }

    /* loaded from: classes6.dex */
    public enum TextureType {
        TEXTURE_2D,
        TEXTURE_2D_MULTISAMPLE,
        TEXTURE_OES
    }

    public EffectTexture(EffectTextureManager effectTextureManager, int i10, int i11, int i12, int i13) {
        this.manager = effectTextureManager;
        this.texID = i10;
        this.width = i11;
        this.height = i12;
        this.texTarget = i13;
        FilterType filterType = FilterType.LINEAR;
        this.mMinFilterType = filterType;
        this.mMagFilterType = filterType;
        this.extraEffectTextures = null;
        this.sourceType = 1;
    }

    public static int getGLFilerType(FilterType filterType) {
        switch (AnonymousClass1.$SwitchMap$com$ss$texturerender$effect$EffectTexture$FilterType[filterType.ordinal()]) {
            case 1:
                return 9729;
            case 2:
                return 9728;
            case 3:
                return 9987;
            case 4:
                return 9985;
            case 5:
                return 9986;
            case 6:
                return 9984;
            default:
                return 0;
        }
    }

    public EffectTexture[] getExtraEffectTexture() {
        return this.extraEffectTextures;
    }

    public int getFormat() {
        return this.format;
    }

    public HardwareBuffer getHardwareBuffer() {
        return this.hardwareBuffer;
    }

    public int getHeight() {
        return this.height;
    }

    public int getInternalFormat() {
        return this.internalFormat;
    }

    public int getSourceType() {
        return this.sourceType;
    }

    public int getTexID() {
        return this.texID;
    }

    public int getTexTarget() {
        return this.texTarget;
    }

    public int getType() {
        return this.type;
    }

    public int getWidth() {
        return this.width;
    }

    public void giveBack() {
        EffectTextureManager effectTextureManager = this.manager;
        if (effectTextureManager != null) {
            effectTextureManager.onTextureReturn(this);
        }
    }

    public boolean isEqualTo(EffectTexture effectTexture) {
        if (effectTexture == null || this.texID != effectTexture.texID) {
            return false;
        }
        return true;
    }

    public void setExtraEffectTexture(EffectTexture[] effectTextureArr) {
        this.extraEffectTextures = effectTextureArr;
    }

    public void setManager(EffectTextureManager effectTextureManager) {
        this.manager = effectTextureManager;
    }

    public void switchFilterType(FilterType filterType, FilterType filterType2) {
        if (this.mMinFilterType != filterType || this.mMagFilterType != filterType2) {
            this.mMinFilterType = filterType;
            this.mMagFilterType = filterType2;
            GLES20.glBindTexture(this.texTarget, this.texID);
            int i10 = this.texTarget;
            if (i10 != 37120) {
                GLES20.glTexParameteri(i10, 10241, getGLFilerType(filterType));
                GLES20.glTexParameteri(this.texTarget, Data.MAX_DATA_BYTES, getGLFilerType(filterType2));
            }
            GLES20.glBindTexture(this.texTarget, 0);
        }
    }

    public String toString() {
        return "[manager:" + this.manager + "," + this.texID + "," + this.texTarget + "," + this.width + "," + this.height + "," + this.internalFormat + "," + this.format + "," + this.type + "]";
    }

    public EffectTexture(EffectTextureManager effectTextureManager, int i10, int i11, int i12, int i13, FilterType filterType, FilterType filterType2) {
        this.manager = effectTextureManager;
        this.texID = i10;
        this.width = i11;
        this.height = i12;
        this.texTarget = i13;
        this.mMinFilterType = filterType;
        this.mMagFilterType = filterType2;
        this.extraEffectTextures = null;
        this.sourceType = 1;
    }

    public EffectTexture(EffectTextureManager effectTextureManager, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this(effectTextureManager, i10, i11, i12, i13);
        this.internalFormat = i14;
        this.format = i15;
        this.type = i16;
    }

    public EffectTexture(EffectTextureManager effectTextureManager, HardwareBuffer hardwareBuffer, int i10, int i11, int i12) {
        this.hardwareBuffer = hardwareBuffer;
        this.manager = effectTextureManager;
        this.width = i10;
        this.height = i11;
        this.format = i12;
        this.sourceType = 2;
    }
}
