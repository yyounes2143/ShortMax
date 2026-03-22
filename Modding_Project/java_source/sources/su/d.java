package su;

import com.amazonaws.mobileconnectors.s3.transferutility.TransferListener;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferState;
import com.hades.aar.storage.base.UploadStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ma.g;
/* loaded from: classes8.dex */
public final class d implements TransferListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ na.b f66651a;

    public d(na.b bVar) {
        this.f66651a = bVar;
    }

    public static final Unit d(na.b bVar, int i10, UploadStatus uploadStatus) {
        na.d f10 = bVar.f();
        if (f10 != null) {
            f10.a(String.valueOf(i10), uploadStatus, "");
        }
        return Unit.f60915a;
    }

    public static final Unit e(na.b bVar, int i10, Exception exc) {
        na.d f10 = bVar.f();
        if (f10 != null) {
            String valueOf = String.valueOf(i10);
            UploadStatus uploadStatus = UploadStatus.ERROR;
            String message = exc.getMessage();
            if (message == null) {
                message = "";
            }
            f10.a(valueOf, uploadStatus, message);
        }
        return Unit.f60915a;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
    public final void a(int i10, long j10, long j11) {
        this.f66651a.e();
        g gVar = g.f62497a;
        g.d(gVar, "uploadFile onProgressChanged " + i10 + " bytesCurrent(" + j10 + ") bytesTotal(" + j11 + ") onProgressChangedListener==null");
    }

    @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
    public final void b(final int i10, final Exception ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        if (this.f66651a.f() == null) {
            g gVar = g.f62497a;
            g.d(gVar, "uploadFile onError id(" + i10 + ") ex(" + ex.getMessage() + ") onStateChangedListener == null");
            return;
        }
        g gVar2 = g.f62497a;
        final na.b bVar = this.f66651a;
        g.e(gVar2, new Function0() { // from class: su.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.e(na.b.this, i10, ex);
            }
        });
        g.d(gVar2, "uploadFile onError id(" + i10 + ") ex(" + ex.getMessage() + ')');
    }

    @Override // com.amazonaws.mobileconnectors.s3.transferutility.TransferListener
    public final void c(final int i10, TransferState state) {
        final UploadStatus uploadStatus;
        Intrinsics.checkNotNullParameter(state, "state");
        if (this.f66651a.f() == null) {
            g gVar = g.f62497a;
            g.d(gVar, "uploadFile onStateChanged id(" + i10 + ") TransferState(" + state + "),onStateChangedListener == null");
            return;
        }
        int i11 = a.f66644a[state.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 != 5) {
                            uploadStatus = UploadStatus.UNKNOWN;
                        } else {
                            uploadStatus = UploadStatus.PAUSED;
                        }
                    } else {
                        uploadStatus = UploadStatus.CANCELED;
                    }
                } else {
                    uploadStatus = UploadStatus.ERROR;
                }
            } else {
                uploadStatus = UploadStatus.UPLOADING;
            }
        } else {
            uploadStatus = UploadStatus.COMPLETED;
        }
        if (TransferState.FAILED == state) {
            g gVar2 = g.f62497a;
            g.d(gVar2, "uploadFile onStateChanged id(" + i10 + ") TransferState(" + state + "), not callback");
            return;
        }
        g gVar3 = g.f62497a;
        final na.b bVar = this.f66651a;
        g.e(gVar3, new Function0() { // from class: su.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.d(na.b.this, i10, uploadStatus);
            }
        });
        g.d(gVar3, "uploadFile onStateChanged id(" + i10 + ") TransferState(" + state + ')');
    }
}
