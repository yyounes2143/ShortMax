package su;

import com.amazonaws.mobileconnectors.s3.transferutility.TransferState;
/* loaded from: classes8.dex */
public abstract /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f66644a;

    static {
        int[] iArr = new int[TransferState.values().length];
        try {
            iArr[TransferState.COMPLETED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[TransferState.IN_PROGRESS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[TransferState.FAILED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[TransferState.CANCELED.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[TransferState.PAUSED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        f66644a = iArr;
    }
}
