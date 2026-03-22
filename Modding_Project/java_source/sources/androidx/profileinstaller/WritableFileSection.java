package androidx.profileinstaller;

import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
class WritableFileSection {
    final byte[] mContents;
    final int mExpectedInflateSize;
    final boolean mNeedsCompression;
    final FileSectionType mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WritableFileSection(@NonNull FileSectionType fileSectionType, int i10, @NonNull byte[] bArr, boolean z10) {
        this.mType = fileSectionType;
        this.mExpectedInflateSize = i10;
        this.mContents = bArr;
        this.mNeedsCompression = z10;
    }
}
