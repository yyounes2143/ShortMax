package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Locale;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public class StandardIntegrityException extends ApiException {

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f19825a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StandardIntegrityException(int i10, Throwable th2) {
        super(new Status(i10, String.format(Locale.ROOT, "Standard Integrity API error (%d): %s.", Integer.valueOf(i10), com.google.android.play.core.integrity.model.b.a(i10))));
        if (i10 != 0) {
            this.f19825a = th2;
            return;
        }
        throw new IllegalArgumentException("ErrorCode should not be 0.");
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f19825a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
