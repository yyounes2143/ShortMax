package com.ss.texturerender;

import android.os.Bundle;
/* loaded from: classes6.dex */
public abstract class VideoOCLSRBaseWrapper {
    public int GetVideoOclSrOutput() {
        return -1;
    }

    public boolean InitVideoAsyncOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4, Bundle bundle) {
        return false;
    }

    public boolean InitVideoOclSr(String str, int i10, boolean z10, int i11, int i12) {
        return false;
    }

    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        return -1;
    }

    public int VideoOclSrProcess(int i10, int i11, int i12, boolean z10) {
        return -1;
    }

    public boolean glSrInit(String str, int i10, boolean z10, int i11, int i12) {
        return false;
    }

    public int videoOclSrProcess(int i10, int i11, int i12, boolean z10, int i13) {
        return -1;
    }

    public boolean InitVideoOclSr(String str, int i10, boolean z10, String str2, int i11, int i12, int i13, String str3, String str4) {
        return false;
    }

    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, float[] fArr2, float[] fArr3, boolean z10, Bundle bundle) {
        return -1;
    }

    public int VideoOclSrProcess(int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        return -1;
    }

    public boolean InitVideoOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4) {
        return false;
    }

    public void ReleaseVideoOclSr() {
    }
}
