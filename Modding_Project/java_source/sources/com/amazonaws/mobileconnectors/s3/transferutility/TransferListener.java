package com.amazonaws.mobileconnectors.s3.transferutility;
/* loaded from: classes2.dex */
public interface TransferListener {
    void a(int i10, long j10, long j11);

    void b(int i10, Exception exc);

    void c(int i10, TransferState transferState);
}
