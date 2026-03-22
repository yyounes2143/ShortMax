package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Locale;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public class IntegrityServiceException extends ApiException {

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f19824a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IntegrityServiceException(int i10, Throwable th2) {
        super(new Status(i10, String.format(Locale.ROOT, "Integrity API error (%d): %s.", Integer.valueOf(i10), com.google.android.play.core.integrity.model.a.a(i10))));
        if (i10 != 0) {
            this.f19824a = th2;
            return;
        }
        throw new IllegalArgumentException("ErrorCode should not be 0.");
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f19824a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
