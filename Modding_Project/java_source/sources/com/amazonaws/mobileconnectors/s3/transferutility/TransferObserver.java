package com.amazonaws.mobileconnectors.s3.transferutility;

import java.io.File;
/* loaded from: classes2.dex */
public class TransferObserver {

    /* renamed from: a  reason: collision with root package name */
    private final int f5657a;

    /* renamed from: b  reason: collision with root package name */
    private final TransferDBUtil f5658b;

    /* renamed from: c  reason: collision with root package name */
    private String f5659c;

    /* renamed from: d  reason: collision with root package name */
    private String f5660d;

    /* renamed from: e  reason: collision with root package name */
    private long f5661e;

    /* renamed from: f  reason: collision with root package name */
    private long f5662f;

    /* renamed from: g  reason: collision with root package name */
    private TransferState f5663g;

    /* renamed from: h  reason: collision with root package name */
    private String f5664h;

    /* renamed from: i  reason: collision with root package name */
    private TransferListener f5665i;

    /* renamed from: j  reason: collision with root package name */
    private TransferStatusListener f5666j;

    TransferObserver(int i10, TransferDBUtil transferDBUtil, String str, String str2, File file) {
        this.f5657a = i10;
        this.f5658b = transferDBUtil;
        this.f5659c = str;
        this.f5660d = str2;
        this.f5664h = file.getAbsolutePath();
        this.f5661e = file.length();
        this.f5663g = TransferState.WAITING;
    }

    public void d() {
        synchronized (this) {
            try {
                TransferListener transferListener = this.f5665i;
                if (transferListener != null) {
                    TransferStatusUpdater.j(this.f5657a, transferListener);
                    this.f5665i = null;
                }
                TransferStatusListener transferStatusListener = this.f5666j;
                if (transferStatusListener != null) {
                    TransferStatusUpdater.j(this.f5657a, transferStatusListener);
                    this.f5666j = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int e() {
        return this.f5657a;
    }

    public void f(TransferListener transferListener) {
        synchronized (this) {
            try {
                d();
                if (this.f5666j == null) {
                    TransferStatusListener transferStatusListener = new TransferStatusListener();
                    this.f5666j = transferStatusListener;
                    TransferStatusUpdater.g(this.f5657a, transferStatusListener);
                }
                if (transferListener != null) {
                    this.f5665i = transferListener;
                    transferListener.c(this.f5657a, this.f5663g);
                    TransferStatusUpdater.g(this.f5657a, this.f5665i);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String toString() {
        return "TransferObserver{id=" + this.f5657a + ", bucket='" + this.f5659c + "', key='" + this.f5660d + "', bytesTotal=" + this.f5661e + ", bytesTransferred=" + this.f5662f + ", transferState=" + this.f5663g + ", filePath='" + this.f5664h + "'}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransferObserver(int i10, TransferDBUtil transferDBUtil, String str, String str2, File file, TransferListener transferListener) {
        this(i10, transferDBUtil, str, str2, file);
        f(transferListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public class TransferStatusListener implements TransferListener {
        protected TransferStatusListener() {
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void a(int i10, long j10, long j11) {
            TransferObserver.this.f5662f = j10;
            TransferObserver.this.f5661e = j11;
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void c(int i10, TransferState transferState) {
            TransferObserver.this.f5663g = transferState;
        }

        @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
        public void b(int i10, Exception exc) {
        }
    }
}
