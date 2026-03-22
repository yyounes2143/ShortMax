package com.ss.ttm.player;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class TraitObject {
    public static final int BufferProcessProto = 8;
    public static final int ExtVoice = 1;
    public static final int HLSChooseStream = 7;
    public static final int Illegal = 0;
    private long mNativeObj;
    private ReleaseNativeTrait mReleaseFunc;
    private final int mType;
    private final int mVersion;

    /* loaded from: classes6.dex */
    public interface ReleaseNativeTrait {
        void releaseNativeTrait(long j10);
    }

    public TraitObject(int i10, long j10) {
        this.mType = i10;
        this.mVersion = -1;
        this.mNativeObj = j10;
    }

    private native void nativeRelease(long j10);

    @CalledByNative
    private long takeNativeObj() {
        long j10 = this.mNativeObj;
        this.mNativeObj = 0L;
        return j10;
    }

    public final void release() {
        long takeNativeObj = takeNativeObj();
        if (takeNativeObj != 0) {
            try {
                nativeRelease(takeNativeObj);
            } catch (UnsatisfiedLinkError unused) {
                if (this.mReleaseFunc != null) {
                    this.mReleaseFunc.releaseNativeTrait(takeNativeObj);
                }
            }
        }
    }

    @CalledByNative
    public boolean sameAs(TraitObject traitObject) {
        if (traitObject == null) {
            return false;
        }
        return equals(traitObject);
    }

    public final void setReleaseFunc(ReleaseNativeTrait releaseNativeTrait) {
        this.mReleaseFunc = releaseNativeTrait;
    }

    public final int type() {
        return this.mType;
    }

    public final int version() {
        return this.mVersion;
    }

    public TraitObject(int i10, int i11, long j10) {
        this.mType = i10;
        this.mVersion = i11;
        this.mNativeObj = 0L;
    }
}
