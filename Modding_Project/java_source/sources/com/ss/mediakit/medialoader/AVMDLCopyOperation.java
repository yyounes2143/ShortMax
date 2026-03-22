package com.ss.mediakit.medialoader;

import androidx.annotation.Nullable;
/* loaded from: classes6.dex */
public class AVMDLCopyOperation {
    public String mCustomDir;
    String mDestPath;
    String mFileKey;
    boolean mForceCopyUnfinished;
    @Nullable
    public final AVMDLCopyOperationListener mListener;
    boolean mWaitIfCaching;

    public AVMDLCopyOperation(String str, String str2, @Nullable AVMDLCopyOperationListener aVMDLCopyOperationListener) {
        this.mFileKey = str;
        this.mDestPath = str2;
        this.mListener = aVMDLCopyOperationListener;
        this.mCustomDir = null;
        this.mWaitIfCaching = false;
    }

    public AVMDLCopyOperation(String str, String str2, boolean z10, @Nullable AVMDLCopyOperationListener aVMDLCopyOperationListener) {
        this.mFileKey = str;
        this.mDestPath = str2;
        this.mListener = aVMDLCopyOperationListener;
        this.mCustomDir = null;
        this.mWaitIfCaching = z10;
    }

    public AVMDLCopyOperation(String str, String str2, boolean z10, boolean z11, @Nullable AVMDLCopyOperationListener aVMDLCopyOperationListener) {
        this.mFileKey = str;
        this.mDestPath = str2;
        this.mListener = aVMDLCopyOperationListener;
        this.mCustomDir = null;
        this.mWaitIfCaching = z11;
        this.mForceCopyUnfinished = z10;
        if (z10) {
            this.mWaitIfCaching = false;
        }
    }
}
